<?php
// created: 2014-06-05 22:50:56
$dictionary["sel_selkirk_partner_accounts"] = array (
  'true_relationship_type' => 'one-to-many',
  'relationships' => 
  array (
    'sel_selkirk_partner_accounts' => 
    array (
      'lhs_module' => 'sel_Selkirk_Partner',
      'lhs_table' => 'sel_selkirk_partner',
      'lhs_key' => 'id',
      'rhs_module' => 'Accounts',
      'rhs_table' => 'accounts',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'sel_selkirk_partner_accounts_c',
      'join_key_lhs' => 'sel_selkirk_partner_accountssel_selkirk_partner_ida',
      'join_key_rhs' => 'sel_selkirk_partner_accountsaccounts_idb',
    ),
  ),
  'table' => 'sel_selkirk_partner_accounts_c',
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
      'name' => 'sel_selkirk_partner_accountssel_selkirk_partner_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'sel_selkirk_partner_accountsaccounts_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'sel_selkirk_partner_accountsspk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'sel_selkirk_partner_accounts_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'sel_selkirk_partner_accountssel_selkirk_partner_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'sel_selkirk_partner_accounts_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'sel_selkirk_partner_accountsaccounts_idb',
      ),
    ),
  ),
);