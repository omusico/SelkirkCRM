<?php
$module_name = 'sel_Selkirk_Activity';
$searchdefs [$module_name] = 
array (
  'layout' => 
  array (
    'basic_search' => 
    array (
      'contacted_by' => 
      array (
        'type' => 'relate',
        'studio' => 'visible',
        'label' => 'LBL_CONTACTED_BY',
        'id' => 'USER_ID_C',
        'link' => true,
        'width' => '10%',
        'default' => true,
        'name' => 'contacted_by',
      ),
    ),
    'advanced_search' => 
    array (
      'contacted_by' => 
      array (
        'type' => 'relate',
        'studio' => 'visible',
        'label' => 'LBL_CONTACTED_BY',
        'link' => true,
        'width' => '10%',
        'default' => true,
        'id' => 'USER_ID_C',
        'name' => 'contacted_by',
      ),
    ),
  ),
  'templateMeta' => 
  array (
    'maxColumns' => '3',
    'maxColumnsBasic' => '4',
    'widths' => 
    array (
      'label' => '10',
      'field' => '30',
    ),
  ),
);
?>
