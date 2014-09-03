<?php
// created: 2014-09-02 12:45:32
$dictionary["sel_selkirk_template_sel_selkirk_document"] = array (
  'true_relationship_type' => 'one-to-many',
  'relationships' => 
  array (
    'sel_selkirk_template_sel_selkirk_document' => 
    array (
      'lhs_module' => 'sel_Selkirk_Template',
      'lhs_table' => 'sel_selkirk_template',
      'lhs_key' => 'id',
      'rhs_module' => 'sel_Selkirk_Document',
      'rhs_table' => 'sel_selkirk_document',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'sel_selkirk_template_sel_selkirk_document_c',
      'join_key_lhs' => 'sel_selkir95fdemplate_ida',
      'join_key_rhs' => 'sel_selkir5634ocument_idb',
    ),
  ),
  'table' => 'sel_selkirk_template_sel_selkirk_document_c',
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
      'name' => 'sel_selkir95fdemplate_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'sel_selkir5634ocument_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'sel_selkirk_template_sel_selkirk_documentspk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'sel_selkirk_template_sel_selkirk_document_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'sel_selkir95fdemplate_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'sel_selkirk_template_sel_selkirk_document_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'sel_selkir5634ocument_idb',
      ),
    ),
  ),
);