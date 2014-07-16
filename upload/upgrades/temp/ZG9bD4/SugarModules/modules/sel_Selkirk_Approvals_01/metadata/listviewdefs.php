<?php
$module_name = 'sel_Selkirk_Approvals_01';
$listViewDefs [$module_name] = 
array (
  'NAME' => 
  array (
    'width' => '32%',
    'label' => 'LBL_NAME',
    'default' => true,
    'link' => true,
  ),
  'DATE_APPROVED' => 
  array (
    'type' => 'date',
    'label' => 'LBL_DATE_APPROVED',
    'width' => '10%',
    'default' => true,
  ),
  'ASSIGNED_USER_NAME' => 
  array (
    'width' => '9%',
    'label' => 'LBL_ASSIGNED_TO_NAME',
    'module' => 'Employees',
    'id' => 'ASSIGNED_USER_ID',
    'default' => true,
  ),
  'SEL_SELKIRK_BUSINESS_CASE_SEL_SELKIRK_APPROVALS_01_NAME' => 
  array (
    'type' => 'relate',
    'link' => true,
    'label' => 'LBL_SEL_SELKIRK_BUSINESS_CASE_SEL_SELKIRK_APPROVALS_01_FROM_SEL_SELKIRK_BUSINESS_CASE_TITLE',
    'id' => 'SEL_SELKIR5858SS_CASE_IDA',
    'width' => '10%',
    'default' => true,
  ),
);
?>
