<?php
$module_name = 'sel_Selkirk_Business_Case';
$listViewDefs [$module_name] = 
array (
  'NAME' => 
  array (
    'width' => '32%',
    'label' => 'LBL_NAME',
    'default' => true,
    'link' => true,
  ),
  'DEPARTMENT_NAME' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_DEPARTMENT_NAME',
    'width' => '10%',
    'default' => true,
  ),
  'PROJECT_DESCRIPTION' => 
  array (
    'type' => 'text',
    'studio' => 'visible',
    'label' => 'LBL_PROJECT_DESCRIPTION ',
    'sortable' => false,
    'width' => '10%',
    'default' => true,
  ),
);
?>
