<?php
$module_name = 'sel_Selkirk_Partner';
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
  'IN_KIND_CONTRIBUTION' => 
  array (
    'type' => 'text',
    'studio' => 'visible',
    'label' => 'LBL_IN_KIND_CONTRIBUTION',
    'sortable' => false,
    'width' => '10%',
    'default' => true,
  ),
  'CONTRIBUTION_DATE' => 
  array (
    'type' => 'date',
    'label' => 'LBL_CONTRIBUTION_DATE',
    'width' => '10%',
    'default' => true,
  ),
  'SEL_SELKIRK_PROJECT_SEL_SELKIRK_PARTNER_NAME' => 
  array (
    'type' => 'relate',
    'link' => true,
    'label' => 'LBL_SEL_SELKIRK_PROJECT_SEL_SELKIRK_PARTNER_FROM_SEL_SELKIRK_PROJECT_TITLE',
    'id' => 'SEL_SELKIRK_PROJECT_SEL_SELKIRK_PARTNERSEL_SELKIRK_PROJECT_IDA',
    'width' => '10%',
    'default' => true,
  ),
);
?>
