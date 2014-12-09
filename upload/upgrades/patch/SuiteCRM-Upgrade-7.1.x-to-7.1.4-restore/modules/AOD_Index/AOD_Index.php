<?PHP
/*********************************************************************************
 * SugarCRM Community Edition is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004-2013 SugarCRM Inc.
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Affero General Public License version 3 as published by the
 * Free Software Foundation with the addition of the following permission added
 * to Section 15 as permitted in Section 7(a): FOR ANY PART OF THE COVERED WORK
 * IN WHICH THE COPYRIGHT IS OWNED BY SUGARCRM, SUGARCRM DISCLAIMS THE WARRANTY
 * OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU Affero General Public License along with
 * this program; if not, see http://www.gnu.org/licenses or write to the Free
 * Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
 * 02110-1301 USA.
 * 
 * You can contact SugarCRM, Inc. headquarters at 10050 North Wolfe Road,
 * SW2-130, Cupertino, CA 95014, USA. or at email address contact@sugarcrm.com.
 * 
 * The interactive user interfaces in modified source and object code versions
 * of this program must display Appropriate Legal Notices, as required under
 * Section 5 of the GNU Affero General Public License version 3.
 * 
 * In accordance with Section 7(b) of the GNU Affero General Public License version 3,
 * these Appropriate Legal Notices must retain the display of the "Powered by
 * SugarCRM" logo. If the display of the logo is not reasonably feasible for
 * technical reasons, the Appropriate Legal Notices must display the words
 * "Powered by SugarCRM".
 ********************************************************************************/

/**
 * THIS CLASS IS FOR DEVELOPERS TO MAKE CUSTOMIZATIONS IN
 */
require_once('modules/AOD_Index/AOD_Index_sugar.php');
require_once('modules/AOD_Index/LuceneUtils.php');
requireLucene();

class AOD_Index extends AOD_Index_sugar {
	
	function AOD_Index(){
		parent::AOD_Index_sugar();
	}

    function isEnabled(){
        global $sugar_config;
        return !empty($sugar_config['aod']['enable_aod']);
    }

    function find($queryString){
        $queryString = strtolower($queryString);
        $hits = $this->getLuceneIndex()->find($queryString);
        return $hits;
    }

    function optimise(){
        if(!$this->isEnabled()){
            return;
        }
        global $timedate;
        $this->getLuceneIndex()->optimize();
        $this->last_optimised = $timedate->getNow()->asDb();
        $this->save();
    }

    public function getIndex(){
        $indexes = $this->get_full_list();
        if(count($indexes)){
            $index = $indexes[0];
            return $index;
        }else{
            $index = new AOD_Index();
            $index->name = "Index";
            $index->location = "modules/AOD_Index/Index/Index";
            $index->save();
            return $index;
        }
    }

    /**
     * @param $revision
     * @return bool|Zend_Search_Lucene_Document
     */
private function getDocumentForRevision($revision){
    $path = getDocumentRevisionPath($revision->id);
    if(!file_exists($path)){
        return array("error"=>"File not found");
    }
    //Convert the file to a lucene document
    $mime = $revision->file_mime_type;
    switch($mime){
        case 'application/pdf':
            $document = createPDFDocument($path);
            break;
        case 'application/msword':
            $document = createDocDocument($path);
            break;
        case 'application/vnd.oasis.opendocument.text':
            $document = createOdtDocument($path);
            break;
        case 'application/vnd.openxmlformats-officedocument.wordprocessingml.document':
            $document = createDocXDocument($path);
            break;
        case 'text/html':
            $document = createHTMLDocument($path);
            break;
        case 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet':
            $document = createXLSXDocument($path);
            break;
        case 'application/rtf':
            $document = createRTFDocument($path);
        case 'text/csv':
        case 'text/plain':
            $document = createTextDocument($path);
            break;
        case 'application/vnd.openxmlformats-officedocument.presentationml.presentation':
            $document = createPPTXDocument($path);
            break;
        case 'application/vnd.oasis.opendocument.spreadsheet':
        case 'application/vnd.ms-powerpoint':
        case 'application/vnd.ms-excel':
        default:
            return array("error"=>"Mime type $mime not supported");
    }
    if(!$document){
        return array("error"=>"Failed to parse document");
    }
    $document->addField(Zend_Search_Lucene_Field::text("filename",$revision->filename));
    return array("error"=>false,"document"=>$document);
}

    public function getDocumentForBean(SugarBean $bean){
        if($bean->module_name == 'DocumentRevisions'){
            $document = $this->getDocumentForRevision($bean);
        }else{
            $document = array("error"=>false,"document"=>new Zend_Search_Lucene_Document());
        }
        if($document["error"]){
            return $document;
        }
        $document["document"]->addField(Zend_Search_Lucene_Field::UnIndexed("aod_id", $bean->module_name." ".$bean->id));
        $document["document"]->addField(Zend_Search_Lucene_Field::UnIndexed("record_id", $bean->id));
        $document["document"]->addField(Zend_Search_Lucene_Field::UnIndexed("record_module", $bean->module_name));
        foreach($GLOBALS['dictionary'][$bean->getObjectName()]['fields'] as $key => $field){
            switch($field['type']){
                case "enum":
                    $document["document"]->addField(Zend_Search_Lucene_Field::Keyword($key, strtolower($bean->$key)));
                    break;

                case "multienum":
                    $vals = unencodeMultienum($bean->$field);
                    $document["document"]->addField(Zend_Search_Lucene_Field::unStored($key, strtolower(implode(" ",$vals))));
                    break;
                case "name":
                case "phone":
                case "html":
                case "text":
                case "url":
                case "varchar":
                    if(property_exists($bean,$key)){
                        $val = strtolower($bean->$key);
                    }else{
                        $val = '';
                    }
                    $field = Zend_Search_Lucene_Field::unStored($key, $val);
                    if($key == "name"){
                        $field->boost = 1.5;
                    }
                    $document["document"]->addField($field);
                    break;
                case "address":
                case "bool":
                case "currency":
                case "date":
                case "datetimecombo":
                case "decimal":
                case "float":
                case "iframe":
                case "int":
                case "radioenum":
                case "relate":
                default:
                    break;
            }
        }

        return $document;
    }

    private function getIndexEvent($module, $beanId){
        $indexEventBean = BeanFactory::getBean("AOD_IndexEvent");
        $indexEvents = $indexEventBean->get_full_list('',"aod_indexevent.record_id = '".$beanId."' AND aod_indexevent.record_module = '".$module."'");
        if($indexEvents){
            $indexEvent = $indexEvents[0];
        }else{
            $indexEvent = BeanFactory::newBean("AOD_IndexEvent");
            $indexEvent->record_id = $beanId;
            $indexEvent->record_module = $module;
        }
        return $indexEvent;
    }

    public function commit(){
        if(!$this->isEnabled()){
            return;
        }
        $this->getLuceneIndex()->commit();
    }

    public static function isModuleSearchable($module,$beanName){
        $whiteList = array("DocumentRevisions","Cases");
        if(in_array($module,$whiteList)){
            return true;
        }
        $blackList = array("AOD_IndexEvent","AOD_Index","AOW_Actions","AOW_Conditions","AOW_Processed","SchedulersJobs");
        if(in_array($module,$blackList)){
            return false;
        }
        $manager = new VardefManager();
        $manager->loadVardef($module, $beanName);
        if(empty($GLOBALS['dictionary'][$beanName]['unified_search'])){
            return false;
        }
        return true;
    }

    public function index($module, $beanId){
        try{
            if(!$this->isEnabled()){
                return;
            }
            $bean_name = $GLOBALS['beanList'][$module];
            if(!$bean_name){
                return false;
            }
            $bean = new $bean_name();
            if(!$bean || ! $bean instanceof SugarBean){
                return false;
            }

            $bean->retrieve($beanId);
            if(!$bean){
                return false;
            }

            if(!self::isModuleSearchable($module,$bean->getObjectName())){
                return false;
            }

            $indexEvent = $this->getIndexEvent($module,$beanId);
            $indexEvent->name = $bean->get_summary_text();

            $document = $this->getDocumentForBean($bean);
            //Index name, id, date, filename
            if(!$document['error']){
                $this->remove($module,$beanId);
                $this->getLuceneIndex()->addDocument($document['document']);
                $indexEvent->success = true;
            }else{
                $indexEvent->success = false;
                $indexEvent->error = $document['error'];
            }
            $indexEvent->save();
        }catch(Exception $ex){
            $GLOBALS['log']->error($ex->getMessage());
            return false;
        }
    }
    private function getIdForDoc($module, $beanId){
        return $module . " " . $beanId;
    }

    private function remove($module, $beanId){
        $idTerm = new Zend_Search_Lucene_Index_Term($this->getIdForDoc($module,$beanId),"aod_id");
        $query = new Zend_Search_Lucene_Search_Query_Term($idTerm);
        $hits = $this->getLuceneIndex()->find($query);
        foreach ($hits as $hit) {
            $this->getLuceneIndex()->delete($hit->id);
        }
    }

    /**
     * Returns a handle on the actual lucene index.
     * @return Zend_Search_Lucene_Interface
     */
    private function getLuceneIndex(){
        if(!empty($this->index)){
            return $this->index;
        }
        if(file_exists($this->location)){
            $this->index = new Zend_Search_Lucene($this->location);
        }else{
            $this->index = Zend_Search_Lucene::create($this->location);
        }
        $this->index->setMaxBufferedDocs(64);
        //$this->index->setMaxMergeDocs(50);
        Zend_Search_Lucene_Search_Query_Fuzzy::setDefaultPrefixLength(1);
        $this->index->setMergeFactor(5);
        return $this->index;
    }


    public function getIndexableModules(){
        $modules = array();
        $beanList = $GLOBALS['beanList'];
        ksort($beanList);
        foreach($beanList as $beanModule => $beanName){
            if(self::isModuleSearchable($beanModule,$beanName)){
                $modules[$beanModule] = $beanName;
            }
        }
        return $modules;
    }
}
?>