<?php
// created: 2014-09-02 14:59:50
$dictionary["sel_selkirk_business_case_sel_selkirk_team"] = array (
  'true_relationship_type' => 'many-to-many',
  'relationships' => 
  array (
    'sel_selkirk_business_case_sel_selkirk_team' => 
    array (
      'lhs_module' => 'sel_Selkirk_Business_Case',
      'lhs_table' => 'sel_selkirk_business_case',
      'lhs_key' => 'id',
      'rhs_module' => 'sel_Selkirk_Team',
      'rhs_table' => 'sel_selkirk_team',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'sel_selkirk_business_case_sel_selkirk_team_c',
      'join_key_lhs' => 'sel_selkir00b7ss_case_ida',
      'join_key_rhs' => 'sel_selkirk_business_case_sel_selkirk_teamsel_selkirk_team_idb',
    ),
  ),
  'table' => 'sel_selkirk_business_case_sel_selkirk_team_c',
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
      'name' => 'sel_selkir00b7ss_case_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'sel_selkirk_business_case_sel_selkirk_teamsel_selkirk_team_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'sel_selkirk_business_case_sel_selkirk_teamspk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'sel_selkirk_business_case_sel_selkirk_team_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'sel_selkir00b7ss_case_ida',
        1 => 'sel_selkirk_business_case_sel_selkirk_teamsel_selkirk_team_idb',
      ),
    ),
  ),
);