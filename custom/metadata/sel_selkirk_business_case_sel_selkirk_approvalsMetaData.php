<?php
// created: 2014-10-21 14:38:07
$dictionary["sel_selkirk_business_case_sel_selkirk_approvals"] = array (
  'true_relationship_type' => 'one-to-many',
  'relationships' => 
  array (
    'sel_selkirk_business_case_sel_selkirk_approvals' => 
    array (
      'lhs_module' => 'sel_Selkirk_Business_Case',
      'lhs_table' => 'sel_selkirk_business_case',
      'lhs_key' => 'id',
      'rhs_module' => 'sel_Selkirk_Approvals',
      'rhs_table' => 'sel_selkirk_approvals',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'sel_selkirk_business_case_sel_selkirk_approvals_c',
      'join_key_lhs' => 'sel_selkir8868ss_case_ida',
      'join_key_rhs' => 'sel_selkir79c5provals_idb',
    ),
  ),
  'table' => 'sel_selkirk_business_case_sel_selkirk_approvals_c',
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
      'name' => 'sel_selkir8868ss_case_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'sel_selkir79c5provals_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'sel_selkirk_business_case_sel_selkirk_approvalsspk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'sel_selkirk_business_case_sel_selkirk_approvals_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'sel_selkir8868ss_case_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'sel_selkirk_business_case_sel_selkirk_approvals_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'sel_selkir79c5provals_idb',
      ),
    ),
  ),
);