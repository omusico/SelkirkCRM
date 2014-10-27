<?php
// created: 2014-10-21 14:33:07
$dictionary["sel_student_project_sel_selkirk_document"] = array (
  'true_relationship_type' => 'many-to-many',
  'relationships' => 
  array (
    'sel_student_project_sel_selkirk_document' => 
    array (
      'lhs_module' => 'sel_Student_Project',
      'lhs_table' => 'sel_student_project',
      'lhs_key' => 'id',
      'rhs_module' => 'sel_Selkirk_Document',
      'rhs_table' => 'sel_selkirk_document',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'sel_student_project_sel_selkirk_document_c',
      'join_key_lhs' => 'sel_student_project_sel_selkirk_documentsel_student_project_ida',
      'join_key_rhs' => 'sel_student_project_sel_selkirk_documentsel_selkirk_document_idb',
    ),
  ),
  'table' => 'sel_student_project_sel_selkirk_document_c',
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
      'name' => 'sel_student_project_sel_selkirk_documentsel_student_project_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'sel_student_project_sel_selkirk_documentsel_selkirk_document_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'sel_student_project_sel_selkirk_documentspk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'sel_student_project_sel_selkirk_document_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'sel_student_project_sel_selkirk_documentsel_student_project_ida',
        1 => 'sel_student_project_sel_selkirk_documentsel_selkirk_document_idb',
      ),
    ),
  ),
);