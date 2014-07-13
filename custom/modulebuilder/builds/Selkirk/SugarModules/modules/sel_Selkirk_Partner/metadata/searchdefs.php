<?php
$module_name = 'sel_Selkirk_Partner';
$searchdefs [$module_name] = 
array (
  'layout' => 
  array (
    'basic_search' => 
    array (
      'name' => 
      array (
        'name' => 'name',
        'default' => true,
        'width' => '10%',
      ),
      'partner' => 
      array (
        'type' => 'relate',
        'studio' => 'visible',
        'label' => 'LBL_PARTNER',
        'id' => 'SEL_SELKIRK_CLIENT_ID_C',
        'link' => true,
        'width' => '10%',
        'default' => true,
        'name' => 'partner',
      ),
    ),
    'advanced_search' => 
    array (
      'name' => 
      array (
        'name' => 'name',
        'default' => true,
        'width' => '10%',
      ),
      'contribution' => 
      array (
        'type' => 'currency',
        'default' => true,
        'label' => 'LBL_CONTRIBUTION',
        'currency_format' => true,
        'width' => '10%',
        'name' => 'contribution',
      ),
    ),
  ),
  'templateMeta' => 
  array (
    'maxColumns' => '3',
    'maxColumnsBasic' => '4',
    'widths' => 
    array (
      'label' => '10',
      'field' => '30',
    ),
  ),
);
?>
