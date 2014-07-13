<?php 
 $GLOBALS["dictionary"]["AOS_Product_Categories"]=array (
  'table' => 'aos_product_categories',
  'audited' => true,
  'duplicate_merge' => true,
  'fields' => 
  array (
    'id' => 
    array (
      'name' => 'id',
      'vname' => 'LBL_ID',
      'type' => 'id',
      'required' => true,
      'reportable' => true,
      'comment' => 'Unique identifier',
    ),
    'name' => 
    array (
      'name' => 'name',
      'vname' => 'LBL_NAME',
      'type' => 'name',
      'link' => true,
      'dbType' => 'varchar',
      'len' => 255,
      'unified_search' => true,
      'full_text_search' => 
      array (
        'boost' => 3,
      ),
      'required' => true,
      'importable' => 'required',
      'duplicate_merge' => 'enabled',
      'merge_filter' => 'selected',
    ),
    'date_entered' => 
    array (
      'name' => 'date_entered',
      'vname' => 'LBL_DATE_ENTERED',
      'type' => 'datetime',
      'group' => 'created_by_name',
      'comment' => 'Date record created',
      'enable_range_search' => true,
      'options' => 'date_range_search_dom',
    ),
    'date_modified' => 
    array (
      'name' => 'date_modified',
      'vname' => 'LBL_DATE_MODIFIED',
      'type' => 'datetime',
      'group' => 'modified_by_name',
      'comment' => 'Date record last modified',
      'enable_range_search' => true,
      'options' => 'date_range_search_dom',
    ),
    'modified_user_id' => 
    array (
      'name' => 'modified_user_id',
      'rname' => 'user_name',
      'id_name' => 'modified_user_id',
      'vname' => 'LBL_MODIFIED',
      'type' => 'assigned_user_name',
      'table' => 'users',
      'isnull' => 'false',
      'group' => 'modified_by_name',
      'dbType' => 'id',
      'reportable' => true,
      'comment' => 'User who last modified record',
      'massupdate' => false,
    ),
    'modified_by_name' => 
    array (
      'name' => 'modified_by_name',
      'vname' => 'LBL_MODIFIED_NAME',
      'type' => 'relate',
      'reportable' => false,
      'source' => 'non-db',
      'rname' => 'user_name',
      'table' => 'users',
      'id_name' => 'modified_user_id',
      'module' => 'Users',
      'link' => 'modified_user_link',
      'duplicate_merge' => 'disabled',
      'massupdate' => false,
    ),
    'created_by' => 
    array (
      'name' => 'created_by',
      'rname' => 'user_name',
      'id_name' => 'modified_user_id',
      'vname' => 'LBL_CREATED',
      'type' => 'assigned_user_name',
      'table' => 'users',
      'isnull' => 'false',
      'dbType' => 'id',
      'group' => 'created_by_name',
      'comment' => 'User who created record',
      'massupdate' => false,
    ),
    'created_by_name' => 
    array (
      'name' => 'created_by_name',
      'vname' => 'LBL_CREATED',
      'type' => 'relate',
      'reportable' => false,
      'link' => 'created_by_link',
      'rname' => 'user_name',
      'source' => 'non-db',
      'table' => 'users',
      'id_name' => 'created_by',
      'module' => 'Users',
      'duplicate_merge' => 'disabled',
      'importable' => 'false',
      'massupdate' => false,
    ),
    'description' => 
    array (
      'name' => 'description',
      'vname' => 'LBL_DESCRIPTION',
      'type' => 'text',
      'comment' => 'Full text of the note',
      'rows' => 6,
      'cols' => 80,
    ),
    'deleted' => 
    array (
      'name' => 'deleted',
      'vname' => 'LBL_DELETED',
      'type' => 'bool',
      'default' => '0',
      'reportable' => false,
      'comment' => 'Record deletion indicator',
    ),
    'created_by_link' => 
    array (
      'name' => 'created_by_link',
      'type' => 'link',
      'relationship' => 'aos_product_categories_created_by',
      'vname' => 'LBL_CREATED_USER',
      'link_type' => 'one',
      'module' => 'Users',
      'bean_name' => 'User',
      'source' => 'non-db',
    ),
    'modified_user_link' => 
    array (
      'name' => 'modified_user_link',
      'type' => 'link',
      'relationship' => 'aos_product_categories_modified_user',
      'vname' => 'LBL_MODIFIED_USER',
      'link_type' => 'one',
      'module' => 'Users',
      'bean_name' => 'User',
      'source' => 'non-db',
    ),
    'assigned_user_id' => 
    array (
      'name' => 'assigned_user_id',
      'rname' => 'user_name',
      'id_name' => 'assigned_user_id',
      'vname' => 'LBL_ASSIGNED_TO_ID',
      'group' => 'assigned_user_name',
      'type' => 'relate',
      'table' => 'users',
      'module' => 'Users',
      'reportable' => true,
      'isnull' => 'false',
      'dbType' => 'id',
      'audited' => true,
      'comment' => 'User ID assigned to record',
      'duplicate_merge' => 'disabled',
    ),
    'assigned_user_name' => 
    array (
      'name' => 'assigned_user_name',
      'link' => 'assigned_user_link',
      'vname' => 'LBL_ASSIGNED_TO_NAME',
      'rname' => 'user_name',
      'type' => 'relate',
      'reportable' => false,
      'source' => 'non-db',
      'table' => 'users',
      'id_name' => 'assigned_user_id',
      'module' => 'Users',
      'duplicate_merge' => 'disabled',
    ),
    'assigned_user_link' => 
    array (
      'name' => 'assigned_user_link',
      'type' => 'link',
      'relationship' => 'aos_product_categories_assigned_user',
      'vname' => 'LBL_ASSIGNED_TO_USER',
      'link_type' => 'one',
      'module' => 'Users',
      'bean_name' => 'User',
      'source' => 'non-db',
      'duplicate_merge' => 'enabled',
      'rname' => 'user_name',
      'id_name' => 'assigned_user_id',
      'table' => 'users',
    ),
    'is_parent' => 
    array (
      'required' => false,
      'name' => 'is_parent',
      'vname' => 'LBL_IS_PARENT',
      'type' => 'bool',
      'massupdate' => '0',
      'default' => '0',
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'id' => 'AOS_Product_Categoriesis_parent',
    ),
    'aos_products' => 
    array (
      'name' => 'aos_products',
      'type' => 'link',
      'source' => 'non-db',
      'relationship' => 'product_categories',
      'side' => 'right',
      'vname' => 'LBL_AOS_PRODUCT_CATEGORIES_AOS_PRODUCTS_FROM_AOS_PRODUCTS_TITLE',
    ),
    'sub_categories' => 
    array (
      'name' => 'sub_categories',
      'type' => 'link',
      'source' => 'non-db',
      'relationship' => 'sub_product_categories',
      'vname' => 'LBL_SUB_CATEGORIES',
      'id_name' => 'parent_category_id',
    ),
    'parent_category' => 
    array (
      'name' => 'parent_category',
      'type' => 'link',
      'relationship' => 'sub_product_categories',
      'module' => 'AOS_Product_Categories',
      'bean_name' => 'AOS_Product_Categories',
      'link_type' => 'one',
      'source' => 'non-db',
      'vname' => 'LBL_PARENT_CATEGORY',
      'side' => 'right',
    ),
    'parent_category_name' => 
    array (
      'name' => 'parent_category_name',
      'type' => 'relate',
      'source' => 'non-db',
      'vname' => 'LBL_PRODUCT_CATEGORYS_NAME',
      'save' => true,
      'id_name' => 'parent_category_id',
      'link' => 'sub_product_categories',
      'table' => 'aos_product_categories',
      'module' => 'AOS_Product_Categories',
      'rname' => 'name',
    ),
    'parent_category_id' => 
    array (
      'name' => 'parent_category_id',
      'type' => 'id',
      'reportable' => false,
      'vname' => 'LBL_PARENT_CATEGORY_ID',
    ),
  ),
  'relationships' => 
  array (
    'aos_product_categories_modified_user' => 
    array (
      'lhs_module' => 'Users',
      'lhs_table' => 'users',
      'lhs_key' => 'id',
      'rhs_module' => 'AOS_Product_Categories',
      'rhs_table' => 'aos_product_categories',
      'rhs_key' => 'modified_user_id',
      'relationship_type' => 'one-to-many',
    ),
    'aos_product_categories_created_by' => 
    array (
      'lhs_module' => 'Users',
      'lhs_table' => 'users',
      'lhs_key' => 'id',
      'rhs_module' => 'AOS_Product_Categories',
      'rhs_table' => 'aos_product_categories',
      'rhs_key' => 'created_by',
      'relationship_type' => 'one-to-many',
    ),
    'aos_product_categories_assigned_user' => 
    array (
      'lhs_module' => 'Users',
      'lhs_table' => 'users',
      'lhs_key' => 'id',
      'rhs_module' => 'AOS_Product_Categories',
      'rhs_table' => 'aos_product_categories',
      'rhs_key' => 'assigned_user_id',
      'relationship_type' => 'one-to-many',
    ),
    'sub_product_categories' => 
    array (
      'lhs_module' => 'AOS_Product_Categories',
      'lhs_table' => 'aos_product_categories',
      'lhs_key' => 'id',
      'rhs_module' => 'AOS_Product_Categories',
      'rhs_table' => 'aos_product_categories',
      'rhs_key' => 'parent_category_id',
      'relationship_type' => 'one-to-many',
    ),
    'products' => 
    array (
      'lhs_module' => 'AOS_Product_Categories',
      'lhs_table' => 'aos_product_categories',
      'lhs_key' => 'id',
      'rhs_module' => 'AOS_Product',
      'rhs_table' => 'aos_product',
      'rhs_key' => 'aos_product_category_id',
      'relationship_type' => 'one-to-many',
    ),
  ),
  'optimistic_locking' => true,
  'unified_search' => true,
  'indices' => 
  array (
    'id' => 
    array (
      'name' => 'aos_product_categoriespk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
  ),
  'templates' => 
  array (
    'assignable' => 'assignable',
    'basic' => 'basic',
  ),
  'custom_fields' => false,
);