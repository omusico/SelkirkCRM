<?php
$module_name = 'sel_Selkirk_Contact';
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
      'address_line_1' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_ADDRESS_LINE_1',
        'width' => '10%',
        'default' => true,
        'name' => 'address_line_1',
      ),
    ),
    'advanced_search' => 
    array (
      'first_name' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_FIRST_NAME',
        'width' => '10%',
        'default' => true,
        'name' => 'first_name',
      ),
      'name' => 
      array (
        'name' => 'name',
        'default' => true,
        'width' => '10%',
      ),
      'address_line_1' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_ADDRESS_LINE_1',
        'width' => '10%',
        'default' => true,
        'name' => 'address_line_1',
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
