<?php
// created: 2014-09-02 11:09:22
$dictionary["sel_selkirk_student_project_sel_selkirk_student_project_activity"] = array (
  'true_relationship_type' => 'many-to-many',
  'relationships' => 
  array (
    'sel_selkirk_student_project_sel_selkirk_student_project_activity' => 
    array (
      'lhs_module' => 'sel_Selkirk_Student_Project',
      'lhs_table' => 'sel_selkirk_student_project',
      'lhs_key' => 'id',
      'rhs_module' => 'sel_Selkirk_Student_Project_Activity',
      'rhs_table' => 'sel_selkirk_student_project_activity',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'sel_selkir6cdc_activity_c',
      'join_key_lhs' => 'sel_selkir0a45project_ida',
      'join_key_rhs' => 'sel_selkir58b5ctivity_idb',
    ),
  ),
  'table' => 'sel_selkir6cdc_activity_c',
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
      'name' => 'sel_selkir0a45project_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'sel_selkir58b5ctivity_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'sel_selkirk_student_project_sel_selkirk_student_project_activityspk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'sel_selkirk_student_project_sel_selkirk_student_project_activity_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'sel_selkir0a45project_ida',
        1 => 'sel_selkir58b5ctivity_idb',
      ),
    ),
  ),
);