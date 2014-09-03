<?php
// created: 2014-09-02 12:54:48
$dictionary["sel_student_project_sel_student_activity"] = array (
  'true_relationship_type' => 'one-to-many',
  'relationships' => 
  array (
    'sel_student_project_sel_student_activity' => 
    array (
      'lhs_module' => 'sel_Student_Project',
      'lhs_table' => 'sel_student_project',
      'lhs_key' => 'id',
      'rhs_module' => 'sel_Student_Activity',
      'rhs_table' => 'sel_student_activity',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'sel_student_project_sel_student_activity_c',
      'join_key_lhs' => 'sel_student_project_sel_student_activitysel_student_project_ida',
      'join_key_rhs' => 'sel_student_project_sel_student_activitysel_student_activity_idb',
    ),
  ),
  'table' => 'sel_student_project_sel_student_activity_c',
  'fields' => 
  array (
    0 => 
    array (
      'name' => 'id',
      'type' => 'varchar',
      'len' => 36,
    ),
    1 => 
    array (
      'name' => 'date_modified',
      'type' => 'datetime',
    ),
    2 => 
    array (
      'name' => 'deleted',
      'type' => 'bool',
      'len' => '1',
      'default' => '0',
      'required' => true,
    ),
    3 => 
    array (
      'name' => 'sel_student_project_sel_student_activitysel_student_project_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'sel_student_project_sel_student_activitysel_student_activity_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'sel_student_project_sel_student_activityspk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'sel_student_project_sel_student_activity_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'sel_student_project_sel_student_activitysel_student_project_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'sel_student_project_sel_student_activity_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'sel_student_project_sel_student_activitysel_student_activity_idb',
      ),
    ),
  ),
);