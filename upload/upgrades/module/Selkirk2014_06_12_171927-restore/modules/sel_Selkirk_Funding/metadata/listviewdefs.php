<?php
$module_name = 'sel_Selkirk_Funding';
$listViewDefs [$module_name] = 
array (
  'NAME' => 
  array (
    'width' => '32%',
    'label' => 'LBL_NAME',
    'default' => true,
    'link' => true,
  ),
  'FUND_SOURCE' => 
  array (
    'type' => 'relate',
    'studio' => 'visible',
    'label' => 'LBL_FUND_SOURCE',
    'id' => 'SEL_SELKIRK_CLIENT_ID_C',
    'link' => true,
    'width' => '10%',
    'default' => true,
  ),
  'AMOUNT' => 
  array (
    'type' => 'currency',
    'default' => true,
    'label' => 'LBL_AMOUNT',
    'currency_format' => true,
    'width' => '10%',
  ),
  'FUNDING_START_DATE' => 
  array (
    'type' => 'date',
    'label' => 'LBL_FUNDING_START_DATE',
    'width' => '10%',
    'default' => true,
  ),
  'FUNDING_END_DATE' => 
  array (
    'type' => 'date',
    'label' => 'LBL_FUNDING_END_DATE',
    'width' => '10%',
    'default' => true,
  ),
);
?>
