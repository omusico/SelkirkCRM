<?php
$module_name = 'sel_Selkirk_Contact';
$listViewDefs [$module_name] = 
array (
  'NAME' => 
  array (
    'width' => '32%',
    'label' => 'LBL_NAME',
    'default' => true,
    'link' => true,
  ),
  'EMAIL' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_EMAIL',
    'width' => '10%',
    'default' => true,
  ),
  'OFFICE_PHONE' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_OFFICE_PHONE',
    'width' => '10%',
    'default' => true,
  ),
  'CELL_PHONE' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_CELL_PHONE',
    'width' => '10%',
    'default' => true,
  ),
  'ASSIGNED_USER_NAME' => 
  array (
    'link' => true,
    'type' => 'relate',
    'label' => 'LBL_ASSIGNED_TO_NAME',
    'id' => 'ASSIGNED_USER_ID',
    'width' => '10%',
    'default' => true,
  ),
);
?>
