<?php
$module_name = 'sel_Selkirk_Business_Case';
$listViewDefs [$module_name] = 
array (
  'NAME' => 
  array (
    'width' => '10%',
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
  'ASSIGNED_USER_NAME' => 
  array (
    'link' => true,
    'type' => 'relate',
    'label' => 'LBL_ASSIGNED_TO_NAME',
    'id' => 'ASSIGNED_USER_ID',
    'width' => '10%',
    'default' => true,
  ),
  'DATE_PREPARED' => 
  array (
    'type' => 'date',
    'label' => 'LBL_DATE_PREPARED',
    'width' => '10%',
    'default' => true,
  ),
);
?>
