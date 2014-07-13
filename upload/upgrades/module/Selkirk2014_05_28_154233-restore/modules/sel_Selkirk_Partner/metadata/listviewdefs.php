<?php
$module_name = 'sel_Selkirk_Partner';
$listViewDefs [$module_name] = 
array (
  'PARTNER' => 
  array (
    'type' => 'relate',
    'studio' => 'visible',
    'label' => 'LBL_PARTNER',
    'id' => 'SEL_SELKIRK_CLIENT_ID_C',
    'link' => true,
    'width' => '10%',
    'default' => true,
  ),
  'CONTRIBUTION' => 
  array (
    'type' => 'currency',
    'default' => true,
    'label' => 'LBL_CONTRIBUTION',
    'currency_format' => true,
    'width' => '10%',
  ),
  'CONTRIBUTION_DATE' => 
  array (
    'type' => 'date',
    'label' => 'LBL_CONTRIBUTION_DATE',
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
  'NAME' => 
  array (
    'width' => '32%',
    'label' => 'LBL_NAME',
    'default' => true,
    'link' => true,
  ),
);
?>
