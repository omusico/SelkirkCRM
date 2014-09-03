<?php
// created: 2014-09-02 09:46:33
$dictionary["sel_selkirk_document_securitygroups"] = array (
  'true_relationship_type' => 'many-to-many',
  'relationships' => 
  array (
    'sel_selkirk_document_securitygroups' => 
    array (
      'lhs_module' => 'sel_Selkirk_Document',
      'lhs_table' => 'sel_selkirk_document',
      'lhs_key' => 'id',
      'rhs_module' => 'SecurityGroups',
      'rhs_table' => 'securitygroups',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'sel_selkirk_document_securitygroups_c',
      'join_key_lhs' => 'sel_selkirk_document_securitygroupssel_selkirk_document_ida',
      'join_key_rhs' => 'sel_selkirk_document_securitygroupssecuritygroups_idb',
    ),
  ),
  'table' => 'sel_selkirk_document_securitygroups_c',
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
      'name' => 'sel_selkirk_document_securitygroupssel_selkirk_document_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'sel_selkirk_document_securitygroupssecuritygroups_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'sel_selkirk_document_securitygroupsspk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'sel_selkirk_document_securitygroups_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'sel_selkirk_document_securitygroupssel_selkirk_document_ida',
        1 => 'sel_selkirk_document_securitygroupssecuritygroups_idb',
      ),
    ),
  ),
);