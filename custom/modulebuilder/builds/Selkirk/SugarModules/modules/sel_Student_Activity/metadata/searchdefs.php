<?php
$module_name = 'sel_Student_Activity';
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
      'student_number' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_STUDENT_NUMBER',
        'width' => '10%',
        'default' => true,
        'name' => 'student_number',
      ),
      'course' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_COURSE',
        'width' => '10%',
        'default' => true,
        'name' => 'course',
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
      'student_number' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_STUDENT_NUMBER',
        'width' => '10%',
        'default' => true,
        'name' => 'student_number',
      ),
      'duration' => 
      array (
        'type' => 'float',
        'label' => 'LBL_DURATION',
        'width' => '10%',
        'default' => true,
        'name' => 'duration',
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
