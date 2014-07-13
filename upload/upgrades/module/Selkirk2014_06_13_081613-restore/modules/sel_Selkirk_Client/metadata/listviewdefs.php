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
  'PHONE' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_PHONE',
    'width' => '10%',
    'default' => true,
  ),
  'SEKIRK_CLIENT_TYPE_01' => 
  array (
    'type' => 'enum',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_SEKIRK_CLIENT_TYPE_01',
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
