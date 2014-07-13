<?php
$module_name = 'sel_Selkirk_Project';
$listViewDefs [$module_name] = 
array (
  'NAME' => 
  array (
    'width' => '32%',
    'label' => 'LBL_NAME',
    'default' => true,
    'link' => true,
  ),
  'PROJECT_LEAD' => 
  array (
    'type' => 'relate',
    'studio' => 'visible',
    'label' => 'LBL_PROJECT_LEAD',
    'id' => 'USER_ID_C',
    'link' => true,
    'width' => '10%',
    'default' => true,
  ),
  'DEPARTMENT' => 
  array (
    'type' => 'relate',
    'studio' => 'visible',
    'label' => 'LBL_DEPARTMENT',
    'id' => 'SEL_SELKIRK_CLIENT_ID_C',
    'link' => true,
    'width' => '10%',
    'default' => true,
  ),
  'PROJECT_TYPE' => 
  array (
    'type' => 'enum',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_PROJECT_TYPE',
    'width' => '10%',
  ),
  'STATUS' => 
  array (
    'type' => 'enum',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_STATUS',
    'width' => '10%',
  ),
);
?>
