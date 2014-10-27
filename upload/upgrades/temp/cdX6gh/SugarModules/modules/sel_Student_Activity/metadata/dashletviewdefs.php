<?php
$dashletData['sel_Student_ActivityDashlet']['searchFields'] = array (
  'name' => 
  array (
    'default' => '',
  ),
  'student_number' => 
  array (
    'default' => '',
  ),
  'course' => 
  array (
    'default' => '',
  ),
);
$dashletData['sel_Student_ActivityDashlet']['columns'] = array (
  'name' => 
  array (
    'width' => '40%',
    'label' => 'LBL_LIST_NAME',
    'link' => true,
    'default' => true,
    'name' => 'name',
  ),
  'course' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_COURSE',
    'width' => '10%',
    'default' => true,
    'name' => 'course',
  ),
  'student_number' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_STUDENT_NUMBER',
    'width' => '10%',
    'default' => true,
    'name' => 'student_number',
  ),
);
