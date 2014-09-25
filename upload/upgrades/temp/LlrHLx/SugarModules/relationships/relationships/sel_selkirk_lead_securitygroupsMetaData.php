<?php
// created: 2014-07-16 09:10:05
$dictionary["sel_selkirk_lead_securitygroups"] = array (
  'true_relationship_type' => 'many-to-many',
  'relationships' => 
  array (
    'sel_selkirk_lead_securitygroups' => 
    array (
      'lhs_module' => 'sel_Selkirk_Lead',
      'lhs_table' => 'sel_selkirk_lead',
      'lhs_key' => 'id',
      'rhs_module' => 'SecurityGroups',
      'rhs_table' => 'securitygroups',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'sel_selkirk_lead_securitygroups_c',
      'join_key_lhs' => 'sel_selkirk_lead_securitygroupssel_selkirk_lead_ida',
      'join_key_rhs' => 'sel_selkirk_lead_securitygroupssecuritygroups_idb',
    ),
  ),
  'table' => 'sel_selkirk_lead_securitygroups_c',
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
      'name' => 'sel_selkirk_lead_securitygroupssel_selkirk_lead_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'sel_selkirk_lead_securitygroupssecuritygroups_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'sel_selkirk_lead_securitygroupsspk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'sel_selkirk_lead_securitygroups_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'sel_selkirk_lead_securitygroupssel_selkirk_lead_ida',
        1 => 'sel_selkirk_lead_securitygroupssecuritygroups_idb',
      ),
    ),
  ),
);