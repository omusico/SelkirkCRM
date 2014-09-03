<?php
$module_name = 'sel_Student_Activity';
$listViewDefs [$module_name] = 
array (
  'NAME' => 
  array (
    'width' => '32%',
    'label' => 'LBL_NAME',
    'default' => true,
    'link' => true,
  ),
  'STUDENT_NUMBER' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_STUDENT_NUMBER',
    'width' => '10%',
    'default' => true,
  ),
  'COURSE' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_COURSE',
    'width' => '10%',
    'default' => true,
  ),
  'DURATION' => 
  array (
    'type' => 'float',
    'label' => 'LBL_DURATION',
    'width' => '10%',
    'default' => true,
  ),
);
?>
