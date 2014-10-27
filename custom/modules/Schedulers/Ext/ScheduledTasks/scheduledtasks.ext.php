<?php 
 //WARNING: The contents of this file are auto-generated




array_push($job_strings, 'milestone_notification');

function milestone_notification() {
    global $db;
    $sql = "SELECT * FROM selkirkcrm.vw_milestone_notify;";

    $rs = $db->query($sql);

    while ($row = $db->fetchByAssoc($rs)) {
        $message = "Team: " . $row['team_name'] . "\r\n";
        $message .= "Project: " . $row['project_name'] . "\r\n";
        $message .= "Milestone: " . $row['name'] . "\r\n";
        $message .= "Milestone Date: " . $row['milestone_date'] . "\r\n";
        $message .= "Email Address: "  . $row['email_address'] . "\r\n";

        $to = $row['email_address'];
	// $to = "lperepolkin1@selkirk.ca";
        send_milestone_notification($to, $message);
	
	$milestone_id = $row['milestone_id']; 

        $updateSql = "UPDATE sel_selkirk_milestone ";
        $updateSql .= "SET ";
        $updateSql .= "notifcation_sent =  CURDATE()";
        $updateSql .= "WHERE id =   '$milestone_id'  ";
        $db->query($updateSql);
    }

    return true;
}

function send_milestone_notification($to, $message) {

    $subject = "SelkirkCRM Milestone Notification";
    if (mail($to, $subject, $message, "From: cbrdi@selkirk.ca")) {
        echo("Your email message successfully sent.");
    } else {
        echo("Sorry, message delivery failed. Contact webmaster for more info.");
    }
}




 /**
 * 
 * 
 * @package AdvancedOpenDiscovery
 * @copyright SalesAgility Ltd http://www.salesagility.com
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU AFFERO GENERAL PUBLIC LICENSE as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU AFFERO GENERAL PUBLIC LICENSE
 * along with this program; if not, see http://www.gnu.org/licenses
 * or write to the Free Software Foundation,Inc., 51 Franklin Street,
 * Fifth Floor, Boston, MA 02110-1301  USA
 *
 * @author Salesagility Ltd <support@salesagility.com>
 */

$job_strings[] = 'aodIndexUnindexed';
$job_strings[] = 'aodOptimiseIndex';


/**
 * Scheduled job function to index any unindexed beans.
 * @return bool
 */
function aodIndexUnindexed(){
    $total = 1;
    while($total > 0){
        $total = performLuceneIndexing();
    }
    return true;
}

function aodOptimiseIndex(){
    $index = BeanFactory::getBean("AOD_Index")->getIndex();
    $index->optimise();
    return true;
}


function performLuceneIndexing(){
    global $db, $sugar_config;
    if(empty($sugar_config['aod']['enable_aod'])){
        return;
    }
    $index = BeanFactory::getBean("AOD_Index")->getIndex();

    $beanList = $index->getIndexableModules();
    $total = 0;
    foreach($beanList as $beanModule => $beanName){
        $bean = BeanFactory::getBean($beanModule);
        if(!$bean || !method_exists($bean,"getTableName") || !$bean->getTableName()){
            continue;
        }
        $query = "SELECT b.id FROM ".$bean->getTableName()." b LEFT JOIN aod_indexevent ie ON (ie.record_id = b.id AND ie.record_module = '".$beanModule."') WHERE b.deleted = 0 AND (ie.id IS NULL OR ie.date_modified < b.date_modified)";
        $res = $db->limitQuery($query,0,500);
        $c = 0;
        while($row = $db->fetchByAssoc($res)){
            $c++;
            $total++;
            $index->index($beanModule, $row['id']);
        }
        if($c){
            $index->commit();
            $index->optimise();
        }

    }
    $index->optimise();
    return $total;
}

    array_push($job_strings, 'custom_job');
    function custom_job()
    {
$to = "lperepolkin1@selkirk.ca";
 
// The Subject
$subject = "Email Test";
 
// The message
$message = "This is a test.\n
How much is Linux worth today?\n
End of email message!";
 
// In case any of our lines are larger than 70 characters, we should use wordwrap()
$message = wordwrap($message, 70);
 
// Send email
// Returns TRUE if the mail was successfully accepted for delivery, FALSE otherwise. 
// Use if command to display email message status
if ( mail($to, $subject, $message) )
{
     echo("Your email message successfully sent.");
}
else
{
     echo("Sorry, message delivery failed. Contact webmaster for more info.");
}

           return true;
    }


/**
 * Advanced OpenWorkflow, Automating SugarCRM.
 * @package Advanced OpenWorkflow for SugarCRM
 * @copyright SalesAgility Ltd http://www.salesagility.com
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU AFFERO GENERAL PUBLIC LICENSE as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU AFFERO GENERAL PUBLIC LICENSE
 * along with this program; if not, see http://www.gnu.org/licenses
 * or write to the Free Software Foundation,Inc., 51 Franklin Street,
 * Fifth Floor, Boston, MA 02110-1301  USA
 *
 * @author SalesAgility <info@salesagility.com>
 */
 
$job_strings['aow']='processAOW_Workflow';

function processAOW_Workflow() {
    require_once('modules/AOW_WorkFlow/AOW_WorkFlow.php');
    $workflow = new AOW_WorkFlow();
    return $workflow->run_flows();
}

?>