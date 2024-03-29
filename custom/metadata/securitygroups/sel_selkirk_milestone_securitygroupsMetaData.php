<?php
// created: 2014-09-24 13:45:53
$dictionary["sel_selkirk_milestone_securitygroups"] = array (
  'true_relationship_type' => 'many-to-many',
  'relationships' => 
  array (
    'sel_selkirk_milestone_securitygroups' => 
    array (
      'lhs_module' => 'SecurityGroups',
      'lhs_table' => 'securitygroups',
      'lhs_key' => 'id',
      'rhs_module' => 'sel_Selkirk_MileStone',
      'rhs_table' => 'sel_selkirk_milestone',
      'rhs_key' => 'id',
      'join_table' => 'securitygroups_records',
      'join_key_lhs' => 'securitygroup_id',
      'join_key_rhs' => 'record_id',
      'relationship_type' => 'many-to-many',
      'relationship_role_column' => 'module',
      'relationship_role_column_value' => 'sel_selkirk_milestone',
    ),
  ),
);
