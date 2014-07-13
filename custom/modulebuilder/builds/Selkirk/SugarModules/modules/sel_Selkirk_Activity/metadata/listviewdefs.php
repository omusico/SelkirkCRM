<?php
$module_name = 'sel_Selkirk_Activity';
$listViewDefs [$module_name] = 
array (
  'METHOD_OF_CONTACT' => 
  array (
    'type' => 'enum',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_METHOD_OF_CONTACT',
    'width' => '10%',
  ),
  'NAME' => 
  array (
    'type' => 'name',
    'link' => true,
    'label' => 'LBL_NAME',
    'width' => '10%',
    'default' => true,
  ),
  'CONTACTED_BY' => 
  array (
    'type' => 'relate',
    'studio' => 'visible',
    'label' => 'LBL_CONTACTED_BY',
    'id' => 'USER_ID_C',
    'link' => true,
    'width' => '10%',
    'default' => true,
  ),
  'SEL_SELKIRK_CONTACT_SEL_SELKIRK_ACTIVITY_NAME' => 
  array (
    'type' => 'relate',
    'link' => true,
    'label' => 'LBL_SEL_SELKIRK_CONTACT_SEL_SELKIRK_ACTIVITY_FROM_SEL_SELKIRK_CONTACT_TITLE',
    'id' => 'SEL_SELKIRK_CONTACT_SEL_SELKIRK_ACTIVITYSEL_SELKIRK_CONTACT_IDA',
    'width' => '10%',
    'default' => true,
  ),
  'SEL_SELKIRK_CLIENT_SEL_SELKIRK_ACTIVITY_NAME' => 
  array (
    'type' => 'relate',
    'link' => true,
    'label' => 'LBL_SEL_SELKIRK_CLIENT_SEL_SELKIRK_ACTIVITY_FROM_SEL_SELKIRK_CLIENT_TITLE',
    'id' => 'SEL_SELKIRK_CLIENT_SEL_SELKIRK_ACTIVITYSEL_SELKIRK_CLIENT_IDA',
    'width' => '10%',
    'default' => true,
  ),
  'CONTACT_DATE' => 
  array (
    'type' => 'date',
    'label' => 'LBL_CONTACT_DATE',
    'width' => '10%',
    'default' => true,
  ),
  'DESCRIPTION' => 
  array (
    'type' => 'text',
    'label' => 'LBL_DESCRIPTION',
    'sortable' => false,
    'width' => '10%',
    'default' => true,
  ),
);
?>
