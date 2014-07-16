<?php 
 $GLOBALS["dictionary"]["sel_Selkirk_Document"]=array (
  'table' => 'sel_selkirk_document',
  'audited' => true,
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
      'source' => 'non-db',
      'type' => 'varchar',
      'db_concat_fields' => 
      array (
        0 => 'document_name',
      ),
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
      'relationship' => 'sel_selkirk_document_created_by',
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
      'relationship' => 'sel_selkirk_document_modified_user',
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
      'relationship' => 'sel_selkirk_document_assigned_user',
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
    'document_name' => 
    array (
      'name' => 'document_name',
      'vname' => 'LBL_NAME',
      'type' => 'name',
      'link' => true,
      'dbType' => 'varchar',
      'len' => '255',
      'required' => true,
      'unified_search' => false,
      'full_text_search' => 
      array (
        'boost' => 3,
      ),
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'reportable' => true,
      'merge_filter' => 'disabled',
      'size' => '20',
    ),
    'filename' => 
    array (
      'name' => 'filename',
      'vname' => 'LBL_FILENAME',
      'type' => 'varchar',
      'required' => true,
      'importable' => 'required',
      'len' => '255',
      'studio' => 'false',
    ),
    'file_ext' => 
    array (
      'name' => 'file_ext',
      'vname' => 'LBL_FILE_EXTENSION',
      'type' => 'varchar',
      'len' => 100,
    ),
    'file_mime_type' => 
    array (
      'name' => 'file_mime_type',
      'vname' => 'LBL_MIME',
      'type' => 'varchar',
      'len' => '100',
    ),
    'uploadfile' => 
    array (
      'name' => 'uploadfile',
      'vname' => 'LBL_FILE_UPLOAD',
      'type' => 'file',
      'required' => true,
      'massupdate' => 0,
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
      'len' => '255',
      'size' => '20',
    ),
    'active_date' => 
    array (
      'name' => 'active_date',
      'vname' => 'LBL_DOC_ACTIVE_DATE',
      'type' => 'date',
      'required' => false,
      'importable' => 'required',
      'display_default' => 'now',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'size' => '20',
      'enable_range_search' => false,
    ),
    'exp_date' => 
    array (
      'name' => 'exp_date',
      'vname' => 'LBL_DOC_EXP_DATE',
      'type' => 'date',
    ),
    'category_id' => 
    array (
      'name' => 'category_id',
      'vname' => 'LBL_SF_CATEGORY',
      'type' => 'enum',
      'len' => 100,
      'options' => 'document_category_dom',
      'reportable' => false,
    ),
    'subcategory_id' => 
    array (
      'name' => 'subcategory_id',
      'vname' => 'LBL_SF_SUBCATEGORY',
      'type' => 'enum',
      'len' => 100,
      'options' => 'document_subcategory_dom',
      'reportable' => false,
    ),
    'status_id' => 
    array (
      'name' => 'status_id',
      'vname' => 'LBL_DOC_STATUS',
      'type' => 'enum',
      'len' => 100,
      'options' => 'document_status_dom',
      'reportable' => false,
    ),
    'status' => 
    array (
      'name' => 'status',
      'vname' => 'LBL_DOC_STATUS',
      'type' => 'varchar',
      'source' => 'non-db',
      'Comment' => 'Document status for Meta-Data framework',
    ),
    'sel_selkirk_document_sel_selkirk_client' => 
    array (
      'name' => 'sel_selkirk_document_sel_selkirk_client',
      'type' => 'link',
      'relationship' => 'sel_selkirk_document_sel_selkirk_client',
      'source' => 'non-db',
      'module' => 'sel_Selkirk_Client',
      'bean_name' => 'sel_Selkirk_Client',
      'vname' => 'LBL_SEL_SELKIRK_DOCUMENT_SEL_SELKIRK_CLIENT_FROM_SEL_SELKIRK_CLIENT_TITLE',
    ),
    'sel_selkirk_document_sel_selkirk_project' => 
    array (
      'name' => 'sel_selkirk_document_sel_selkirk_project',
      'type' => 'link',
      'relationship' => 'sel_selkirk_document_sel_selkirk_project',
      'source' => 'non-db',
      'module' => 'sel_Selkirk_Project',
      'bean_name' => 'sel_Selkirk_Project',
      'vname' => 'LBL_SEL_SELKIRK_DOCUMENT_SEL_SELKIRK_PROJECT_FROM_SEL_SELKIRK_PROJECT_TITLE',
    ),
    'sel_selkirk_document_securitygroups' => 
    array (
      'name' => 'sel_selkirk_document_securitygroups',
      'type' => 'link',
      'relationship' => 'sel_selkirk_document_securitygroups',
      'source' => 'non-db',
      'module' => 'SecurityGroups',
      'bean_name' => 'SecurityGroup',
      'vname' => 'LBL_SEL_SELKIRK_DOCUMENT_SECURITYGROUPS_FROM_SECURITYGROUPS_TITLE',
    ),
    'sel_selkirk_template_sel_selkirk_document' => 
    array (
      'name' => 'sel_selkirk_template_sel_selkirk_document',
      'type' => 'link',
      'relationship' => 'sel_selkirk_template_sel_selkirk_document',
      'source' => 'non-db',
      'module' => 'sel_Selkirk_Template',
      'bean_name' => 'sel_Selkirk_Template',
      'vname' => 'LBL_SEL_SELKIRK_TEMPLATE_SEL_SELKIRK_DOCUMENT_FROM_SEL_SELKIRK_TEMPLATE_TITLE',
      'id_name' => 'sel_selkir95fdemplate_ida',
    ),
    'sel_selkirk_template_sel_selkirk_document_name' => 
    array (
      'name' => 'sel_selkirk_template_sel_selkirk_document_name',
      'type' => 'relate',
      'source' => 'non-db',
      'vname' => 'LBL_SEL_SELKIRK_TEMPLATE_SEL_SELKIRK_DOCUMENT_FROM_SEL_SELKIRK_TEMPLATE_TITLE',
      'save' => true,
      'id_name' => 'sel_selkir95fdemplate_ida',
      'link' => 'sel_selkirk_template_sel_selkirk_document',
      'table' => 'sel_selkirk_template',
      'module' => 'sel_Selkirk_Template',
      'rname' => 'document_name',
    ),
    'sel_selkir95fdemplate_ida' => 
    array (
      'name' => 'sel_selkir95fdemplate_ida',
      'type' => 'link',
      'relationship' => 'sel_selkirk_template_sel_selkirk_document',
      'source' => 'non-db',
      'reportable' => false,
      'side' => 'right',
      'vname' => 'LBL_SEL_SELKIRK_TEMPLATE_SEL_SELKIRK_DOCUMENT_FROM_SEL_SELKIRK_DOCUMENT_TITLE',
    ),
    'sel_selkirk_business_case_sel_selkirk_document' => 
    array (
      'name' => 'sel_selkirk_business_case_sel_selkirk_document',
      'type' => 'link',
      'relationship' => 'sel_selkirk_business_case_sel_selkirk_document',
      'source' => 'non-db',
      'module' => 'sel_Selkirk_Business_Case',
      'bean_name' => 'sel_Selkirk_Business_Case',
      'vname' => 'LBL_SEL_SELKIRK_BUSINESS_CASE_SEL_SELKIRK_DOCUMENT_FROM_SEL_SELKIRK_BUSINESS_CASE_TITLE',
      'id_name' => 'sel_selkirae30ss_case_ida',
    ),
    'sel_selkirk_business_case_sel_selkirk_document_name' => 
    array (
      'name' => 'sel_selkirk_business_case_sel_selkirk_document_name',
      'type' => 'relate',
      'source' => 'non-db',
      'vname' => 'LBL_SEL_SELKIRK_BUSINESS_CASE_SEL_SELKIRK_DOCUMENT_FROM_SEL_SELKIRK_BUSINESS_CASE_TITLE',
      'save' => true,
      'id_name' => 'sel_selkirae30ss_case_ida',
      'link' => 'sel_selkirk_business_case_sel_selkirk_document',
      'table' => 'sel_selkirk_business_case',
      'module' => 'sel_Selkirk_Business_Case',
      'rname' => 'name',
    ),
    'sel_selkirae30ss_case_ida' => 
    array (
      'name' => 'sel_selkirae30ss_case_ida',
      'type' => 'link',
      'relationship' => 'sel_selkirk_business_case_sel_selkirk_document',
      'source' => 'non-db',
      'reportable' => false,
      'side' => 'right',
      'vname' => 'LBL_SEL_SELKIRK_BUSINESS_CASE_SEL_SELKIRK_DOCUMENT_FROM_SEL_SELKIRK_DOCUMENT_TITLE',
    ),
    'sel_selkirk_document_sel_selkirk_service' => 
    array (
      'name' => 'sel_selkirk_document_sel_selkirk_service',
      'type' => 'link',
      'relationship' => 'sel_selkirk_document_sel_selkirk_service',
      'source' => 'non-db',
      'module' => 'sel_Selkirk_Service',
      'bean_name' => 'sel_Selkirk_Service',
      'vname' => 'LBL_SEL_SELKIRK_DOCUMENT_SEL_SELKIRK_SERVICE_FROM_SEL_SELKIRK_SERVICE_TITLE',
    ),
  ),
  'relationships' => 
  array (
    'sel_selkirk_document_modified_user' => 
    array (
      'lhs_module' => 'Users',
      'lhs_table' => 'users',
      'lhs_key' => 'id',
      'rhs_module' => 'sel_Selkirk_Document',
      'rhs_table' => 'sel_selkirk_document',
      'rhs_key' => 'modified_user_id',
      'relationship_type' => 'one-to-many',
    ),
    'sel_selkirk_document_created_by' => 
    array (
      'lhs_module' => 'Users',
      'lhs_table' => 'users',
      'lhs_key' => 'id',
      'rhs_module' => 'sel_Selkirk_Document',
      'rhs_table' => 'sel_selkirk_document',
      'rhs_key' => 'created_by',
      'relationship_type' => 'one-to-many',
    ),
    'sel_selkirk_document_assigned_user' => 
    array (
      'lhs_module' => 'Users',
      'lhs_table' => 'users',
      'lhs_key' => 'id',
      'rhs_module' => 'sel_Selkirk_Document',
      'rhs_table' => 'sel_selkirk_document',
      'rhs_key' => 'assigned_user_id',
      'relationship_type' => 'one-to-many',
    ),
  ),
  'optimistic_locking' => true,
  'unified_search' => true,
  'indices' => 
  array (
    'id' => 
    array (
      'name' => 'sel_selkirk_documentpk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
  ),
  'templates' => 
  array (
    'file' => 'file',
    'assignable' => 'assignable',
    'basic' => 'basic',
  ),
  'custom_fields' => false,
);