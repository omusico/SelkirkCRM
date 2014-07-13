<?php
// created: 2014-05-21 01:07:30
$dictionary["sel_selkirk_project_sel_selkirk_client_1"] = array (
  'true_relationship_type' => 'one-to-many',
  'relationships' => 
  array (
    'sel_selkirk_project_sel_selkirk_client_1' => 
    array (
      'lhs_module' => 'sel_Selkirk_Project',
      'lhs_table' => 'sel_selkirk_project',
      'lhs_key' => 'id',
      'rhs_module' => 'sel_Selkirk_Client',
      'rhs_table' => 'sel_selkirk_client',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'sel_selkirk_project_sel_selkirk_client_1_c',
      'join_key_lhs' => 'sel_selkirk_project_sel_selkirk_client_1sel_selkirk_project_ida',
      'join_key_rhs' => 'sel_selkirk_project_sel_selkirk_client_1sel_selkirk_client_idb',
    ),
  ),
  'table' => 'sel_selkirk_project_sel_selkirk_client_1_c',
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
      'name' => 'sel_selkirk_project_sel_selkirk_client_1sel_selkirk_project_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'sel_selkirk_project_sel_selkirk_client_1sel_selkirk_client_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'sel_selkirk_project_sel_selkirk_client_1spk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'sel_selkirk_project_sel_selkirk_client_1_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'sel_selkirk_project_sel_selkirk_client_1sel_selkirk_project_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'sel_selkirk_project_sel_selkirk_client_1_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'sel_selkirk_project_sel_selkirk_client_1sel_selkirk_client_idb',
      ),
    ),
  ),
);