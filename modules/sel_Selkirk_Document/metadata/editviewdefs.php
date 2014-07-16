<?php
$module_name = 'sel_Selkirk_Document';
$viewdefs [$module_name] = 
array (
  'EditView' => 
  array (
    'templateMeta' => 
    array (
      'form' => 
      array (
        'enctype' => 'multipart/form-data',
        'hidden' => 
        array (
        ),
      ),
      'maxColumns' => '2',
      'widths' => 
      array (
        0 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
        1 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
      ),
      'javascript' => '{sugar_getscript file="include/javascript/popup_parent_helper.js"}
	{sugar_getscript file="cache/include/javascript/sugar_grp_jsolait.js"}
	{sugar_getscript file="modules/Documents/documents.js"}',
      'useTabs' => false,
      'tabDefs' => 
      array (
        'DEFAULT' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
      'syncDetailEditViews' => true,
    ),
    'panels' => 
    array (
      'default' => 
      array (
        0 => 
        array (
          0 => 'document_name',
          1 => 
          array (
            'name' => 'uploadfile',
            'displayParams' => 
            array (
              'onchangeSetFileNameTo' => 'document_name',
            ),
          ),
        ),
        1 => 
        array (
          0 => 'active_date',
          1 => 'exp_date',
        ),
        2 => 
        array (
          0 => 'status_id',
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'description',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'sel_selkirk_business_case_sel_selkirk_document_name',
          ),
          1 => 
          array (
            'name' => 'sel_selkirk_template_sel_selkirk_document_name',
          ),
        ),
      ),
    ),
  ),
);
?>
