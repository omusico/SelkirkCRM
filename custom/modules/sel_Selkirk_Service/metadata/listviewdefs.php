<?php
$module_name = 'sel_Selkirk_Service';
$listViewDefs [$module_name] = 
array (
  'DATE_MODIFIED' => 
  array (
    'type' => 'datetime',
    'label' => 'LBL_DATE_MODIFIED',
    'width' => '10%',
    'default' => true,
  ),
  'SELKIRK_SERVICE_TYPE' => 
  array (
    'type' => 'enum',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_SELKIRK_SERVICE_TYPE',
    'width' => '10%',
    'link' => true,
  ),
  'SERVICE_CATEGORY' => 
  array (
    'type' => 'enum',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_SERVICE_CATEGORY',
    'width' => '10%',
  ),
  'DURATION' => 
  array (
    'type' => 'float',
    'default' => true,
    'label' => 'LBL_DURATION',
    'width' => '10%',
  ),
  'SELKIRK_SERVICE_STATUS' => 
  array (
    'type' => 'enum',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_SELKIRK_SERVICE_STATUS',
    'width' => '10%',
  ),
  'ASSIGNED_USER_NAME' => 
  array (
    'width' => '9%',
    'label' => 'LBL_ASSIGNED_TO_NAME',
    'module' => 'Employees',
    'id' => 'ASSIGNED_USER_ID',
    'default' => true,
  ),
  'SEL_SELKIRK_PROJECT_SEL_SELKIRK_SERVICE_NAME' => 
  array (
    'type' => 'relate',
    'link' => true,
    'label' => 'LBL_SEL_SELKIRK_PROJECT_SEL_SELKIRK_SERVICE_FROM_SEL_SELKIRK_PROJECT_TITLE',
    'id' => 'SEL_SELKIRK_PROJECT_SEL_SELKIRK_SERVICESEL_SELKIRK_PROJECT_IDA',
    'width' => '10%',
    'default' => true,
  ),
  'SEL_SELKIRK_CLIENT_SEL_SELKIRK_SERVICE_NAME' => 
  array (
    'type' => 'relate',
    'link' => true,
    'label' => 'LBL_SEL_SELKIRK_CLIENT_SEL_SELKIRK_SERVICE_FROM_SEL_SELKIRK_CLIENT_TITLE',
    'id' => 'SEL_SELKIRK_CLIENT_SEL_SELKIRK_SERVICESEL_SELKIRK_CLIENT_IDA',
    'width' => '10%',
    'default' => true,
  ),
);
?>
