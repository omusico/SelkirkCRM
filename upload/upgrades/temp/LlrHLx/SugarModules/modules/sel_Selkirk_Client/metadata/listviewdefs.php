<?php
$module_name = 'sel_Selkirk_Client';
$listViewDefs [$module_name] = 
array (
  'NAME' => 
  array (
    'width' => '10%',
    'label' => 'LBL_NAME',
    'default' => true,
    'link' => true,
  ),
  'CITY' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_CITY',
    'width' => '10%',
    'default' => true,
  ),
  'SELKIRK_ORGANIZATION_TYPE' => 
  array (
    'type' => 'enum',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_SELKIRK_ORGANIZATION_TYPE',
    'width' => '10%',
  ),
  'PRIMARY_CONTACT' => 
  array (
    'type' => 'relate',
    'studio' => 'visible',
    'label' => 'LBL_PRIMARY_CONTACT',
    'id' => 'SEL_SELKIRK_CONTACT_ID_C',
    'link' => true,
    'width' => '10%',
    'default' => true,
  ),
);
?>
