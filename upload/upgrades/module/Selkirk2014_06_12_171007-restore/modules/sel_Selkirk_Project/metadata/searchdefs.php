<?php
$module_name = 'sel_Selkirk_Project';
$searchdefs [$module_name] = 
array (
  'layout' => 
  array (
    'basic_search' => 
    array (
      'name' => 
      array (
        'name' => 'name',
        'default' => true,
        'width' => '10%',
      ),
      'project_lead' => 
      array (
        'type' => 'relate',
        'studio' => 'visible',
        'label' => 'LBL_PROJECT_LEAD',
        'id' => 'USER_ID_C',
        'link' => true,
        'width' => '10%',
        'default' => true,
        'name' => 'project_lead',
      ),
      'department' => 
      array (
        'type' => 'relate',
        'studio' => 'visible',
        'label' => 'LBL_DEPARTMENT',
        'id' => 'SEL_SELKIRK_CLIENT_ID_C',
        'link' => true,
        'width' => '10%',
        'default' => true,
        'name' => 'department',
      ),
    ),
    'advanced_search' => 
    array (
      'name' => 
      array (
        'name' => 'name',
        'default' => true,
        'width' => '10%',
      ),
      'project_lead' => 
      array (
        'type' => 'relate',
        'studio' => 'visible',
        'label' => 'LBL_PROJECT_LEAD',
        'link' => true,
        'width' => '10%',
        'default' => true,
        'id' => 'USER_ID_C',
        'name' => 'project_lead',
      ),
      'department' => 
      array (
        'type' => 'relate',
        'studio' => 'visible',
        'label' => 'LBL_DEPARTMENT',
        'link' => true,
        'width' => '10%',
        'default' => true,
        'id' => 'SEL_SELKIRK_CLIENT_ID_C',
        'name' => 'department',
      ),
      'project_type' => 
      array (
        'type' => 'enum',
        'default' => true,
        'studio' => 'visible',
        'label' => 'LBL_PROJECT_TYPE',
        'width' => '10%',
        'name' => 'project_type',
      ),
      'status' => 
      array (
        'type' => 'enum',
        'default' => true,
        'studio' => 'visible',
        'label' => 'LBL_STATUS',
        'width' => '10%',
        'name' => 'status',
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
