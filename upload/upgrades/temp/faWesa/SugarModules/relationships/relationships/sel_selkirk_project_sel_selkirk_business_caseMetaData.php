<?php
// created: 2014-07-16 11:08:07
$dictionary["sel_selkirk_project_sel_selkirk_business_case"] = array (
  'true_relationship_type' => 'many-to-many',
  'relationships' => 
  array (
    'sel_selkirk_project_sel_selkirk_business_case' => 
    array (
      'lhs_module' => 'sel_Selkirk_Project',
      'lhs_table' => 'sel_selkirk_project',
      'lhs_key' => 'id',
      'rhs_module' => 'sel_Selkirk_Business_Case',
      'rhs_table' => 'sel_selkirk_business_case',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'sel_selkirk_project_sel_selkirk_business_case_c',
      'join_key_lhs' => 'sel_selkirecadproject_ida',
      'join_key_rhs' => 'sel_selkir9312ss_case_idb',
    ),
  ),
  'table' => 'sel_selkirk_project_sel_selkirk_business_case_c',
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
      'name' => 'sel_selkirecadproject_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'sel_selkir9312ss_case_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'sel_selkirk_project_sel_selkirk_business_casespk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'sel_selkirk_project_sel_selkirk_business_case_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'sel_selkirecadproject_ida',
        1 => 'sel_selkir9312ss_case_idb',
      ),
    ),
  ),
);