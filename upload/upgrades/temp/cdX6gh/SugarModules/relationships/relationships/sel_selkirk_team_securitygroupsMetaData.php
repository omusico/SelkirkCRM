<?php
// created: 2014-10-21 14:33:05
$dictionary["sel_selkirk_team_securitygroups"] = array (
  'true_relationship_type' => 'many-to-many',
  'relationships' => 
  array (
    'sel_selkirk_team_securitygroups' => 
    array (
      'lhs_module' => 'SecurityGroups',
      'lhs_table' => 'securitygroups',
      'lhs_key' => 'id',
      'rhs_module' => 'sel_Selkirk_Team',
      'rhs_table' => 'sel_selkirk_team',
      'rhs_key' => 'id',
      'join_table' => 'securitygroups_records',
      'join_key_lhs' => 'securitygroup_id',
      'join_key_rhs' => 'record_id',
      'relationship_type' => 'many-to-many',
      'relationship_role_column' => 'module',
      'relationship_role_column_value' => 'sel_selkirk_team',
    ),
  ),
  'table' => 'securitygroups_records',
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
      'name' => 'securitygroup_id',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'record_id',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'sel_selkirk_team_securitygroupsspk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'sel_selkirk_team_securitygroups_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'securitygroup_id',
        1 => 'record_id',
      ),
    ),
  ),
);