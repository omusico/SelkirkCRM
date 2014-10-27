<?php
$module_name = 'sel_Student_Project';
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
    ),
    'advanced_search' => 
    array (
      'name' => 
      array (
        'name' => 'name',
        'default' => true,
        'width' => '10%',
      ),
      'program' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_PROGRAM',
        'width' => '10%',
        'default' => true,
        'name' => 'program',
      ),
      'supervisor' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_SUPERVISOR',
        'width' => '10%',
        'default' => true,
        'name' => 'supervisor',
      ),
      'school' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_SCHOOL',
        'width' => '10%',
        'default' => true,
        'name' => 'school',
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
