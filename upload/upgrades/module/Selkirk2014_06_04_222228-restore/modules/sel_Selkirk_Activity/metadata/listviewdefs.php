<?php
$module_name = 'sel_Selkirk_Activity';
$listViewDefs [$module_name] = 
array (
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
