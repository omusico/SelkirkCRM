<?php
$module_name = 'sel_Selkirk_Partner';
$listViewDefs [$module_name] = 
array (
  'PARTNER' => 
  array (
    'type' => 'relate',
    'studio' => 'visible',
    'label' => 'LBL_PARTNER',
    'id' => '',
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
);
?>
