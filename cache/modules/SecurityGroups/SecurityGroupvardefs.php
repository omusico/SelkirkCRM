<?php 
 $GLOBALS["dictionary"]["SecurityGroup"]=array (
  'table' => 'securitygroups',
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
      'relationship' => 'securitygroups_created_by',
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
      'relationship' => 'securitygroups_modified_user',
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
      'relationship' => 'securitygroups_assigned_user',
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
    'noninheritable' => 
    array (
      'name' => 'noninheritable',
      'vname' => 'LBL_NONINHERITABLE',
      'type' => 'bool',
      'reportable' => false,
      'comment' => 'Indicator for whether a group can be inherited by a record',
    ),
    'users' => 
    array (
      'name' => 'users',
      'type' => 'link',
      'relationship' => 'securitygroups_users',
      'source' => 'non-db',
      'vname' => 'LBL_USERS',
    ),
    'aclroles' => 
    array (
      'name' => 'aclroles',
      'type' => 'link',
      'relationship' => 'securitygroups_acl_roles',
      'source' => 'non-db',
      'vname' => 'LBL_ROLES',
    ),
    'securitygroup_noninher_fields' => 
    array (
      'name' => 'securitygroup_noninher_fields',
      'rname' => 'id',
      'relationship_fields' => 
      array (
        'id' => 'securitygroup_noninherit_id',
        'noninheritable' => 'securitygroup_noninheritable',
        'primary_group' => 'securitygroup_primary_group',
      ),
      'vname' => 'LBL_USER_NAME',
      'type' => 'relate',
      'link' => 'users',
      'link_type' => 'relationship_info',
      'source' => 'non-db',
      'Importable' => false,
      'duplicate_merge' => 'disabled',
    ),
    'securitygroup_noninherit_id' => 
    array (
      'name' => 'securitygroup_noninherit_id',
      'type' => 'varchar',
      'source' => 'non-db',
      'vname' => 'LBL_securitygroup_noninherit_id',
    ),
    'securitygroup_noninheritable' => 
    array (
      'name' => 'securitygroup_noninheritable',
      'type' => 'bool',
      'source' => 'non-db',
      'vname' => 'LBL_SECURITYGROUP_NONINHERITABLE',
    ),
    'securitygroup_primary_group' => 
    array (
      'name' => 'securitygroup_primary_group',
      'type' => 'bool',
      'source' => 'non-db',
      'vname' => 'LBL_PRIMARY_GROUP',
    ),
    'sel_selkirk_document_securitygroups' => 
    array (
      'name' => 'sel_selkirk_document_securitygroups',
      'type' => 'link',
      'relationship' => 'sel_selkirk_document_securitygroups',
      'source' => 'non-db',
      'module' => 'sel_Selkirk_Document',
      'bean_name' => 'sel_Selkirk_Document',
      'vname' => 'LBL_SEL_SELKIRK_DOCUMENT_SECURITYGROUPS_FROM_SEL_SELKIRK_DOCUMENT_TITLE',
    ),
    'sel_selkirk_contact_securitygroups' => 
    array (
      'name' => 'sel_selkirk_contact_securitygroups',
      'type' => 'link',
      'relationship' => 'sel_selkirk_contact_securitygroups',
      'source' => 'non-db',
      'module' => 'sel_Selkirk_Contact',
      'bean_name' => 'sel_Selkirk_Contact',
      'vname' => 'LBL_SEL_SELKIRK_CONTACT_SECURITYGROUPS_FROM_SEL_SELKIRK_CONTACT_TITLE',
    ),
    'sel_selkirk_business_case_securitygroups' => 
    array (
      'name' => 'sel_selkirk_business_case_securitygroups',
      'type' => 'link',
      'relationship' => 'sel_selkirk_business_case_securitygroups',
      'source' => 'non-db',
      'module' => 'sel_Selkirk_Business_Case',
      'bean_name' => 'sel_Selkirk_Business_Case',
      'vname' => 'LBL_SEL_SELKIRK_BUSINESS_CASE_SECURITYGROUPS_FROM_SEL_SELKIRK_BUSINESS_CASE_TITLE',
    ),
    'sel_selkirk_activity_securitygroups' => 
    array (
      'name' => 'sel_selkirk_activity_securitygroups',
      'type' => 'link',
      'relationship' => 'sel_selkirk_activity_securitygroups',
      'source' => 'non-db',
      'module' => 'sel_Selkirk_Activity',
      'bean_name' => 'sel_Selkirk_Activity',
      'vname' => 'LBL_SEL_SELKIRK_ACTIVITY_SECURITYGROUPS_FROM_SEL_SELKIRK_ACTIVITY_TITLE',
    ),
    'sel_selkirk_team_securitygroups' => 
    array (
      'name' => 'sel_selkirk_team_securitygroups',
      'type' => 'link',
      'relationship' => 'sel_selkirk_team_securitygroups',
      'source' => 'non-db',
      'module' => 'sel_Selkirk_Team',
      'bean_name' => 'sel_Selkirk_Team',
      'vname' => 'LBL_SEL_SELKIRK_TEAM_SECURITYGROUPS_FROM_SEL_SELKIRK_TEAM_TITLE',
    ),
    'sel_student_activity_securitygroups' => 
    array (
      'name' => 'sel_student_activity_securitygroups',
      'type' => 'link',
      'relationship' => 'sel_student_activity_securitygroups',
      'source' => 'non-db',
      'module' => 'sel_Student_Activity',
      'bean_name' => 'sel_Student_Activity',
      'vname' => 'LBL_SEL_STUDENT_ACTIVITY_SECURITYGROUPS_FROM_SEL_STUDENT_ACTIVITY_TITLE',
    ),
    'sel_selkirk_service_securitygroups' => 
    array (
      'name' => 'sel_selkirk_service_securitygroups',
      'type' => 'link',
      'relationship' => 'sel_selkirk_service_securitygroups',
      'source' => 'non-db',
      'module' => 'sel_Selkirk_Service',
      'bean_name' => 'sel_Selkirk_Service',
      'vname' => 'LBL_SEL_SELKIRK_SERVICE_SECURITYGROUPS_FROM_SEL_SELKIRK_SERVICE_TITLE',
    ),
    'sel_selkirk_milestone_securitygroups' => 
    array (
      'name' => 'sel_selkirk_milestone_securitygroups',
      'type' => 'link',
      'relationship' => 'sel_selkirk_milestone_securitygroups',
      'source' => 'non-db',
      'module' => 'sel_Selkirk_MileStone',
      'bean_name' => 'sel_Selkirk_MileStone',
      'vname' => 'LBL_SEL_SELKIRK_MILESTONE_SECURITYGROUPS_FROM_SEL_SELKIRK_MILESTONE_TITLE',
    ),
    'sel_selkirk_client_securitygroups' => 
    array (
      'name' => 'sel_selkirk_client_securitygroups',
      'type' => 'link',
      'relationship' => 'sel_selkirk_client_securitygroups',
      'source' => 'non-db',
      'module' => 'sel_Selkirk_Client',
      'bean_name' => 'sel_Selkirk_Client',
      'vname' => 'LBL_SEL_SELKIRK_CLIENT_SECURITYGROUPS_FROM_SEL_SELKIRK_CLIENT_TITLE',
    ),
    'sel_selkirk_project_securitygroups' => 
    array (
      'name' => 'sel_selkirk_project_securitygroups',
      'type' => 'link',
      'relationship' => 'sel_selkirk_project_securitygroups',
      'source' => 'non-db',
      'module' => 'sel_Selkirk_Project',
      'bean_name' => 'sel_Selkirk_Project',
      'vname' => 'LBL_SEL_SELKIRK_PROJECT_SECURITYGROUPS_FROM_SEL_SELKIRK_PROJECT_TITLE',
    ),
    'sel_selkirk_template_securitygroups' => 
    array (
      'name' => 'sel_selkirk_template_securitygroups',
      'type' => 'link',
      'relationship' => 'sel_selkirk_template_securitygroups',
      'source' => 'non-db',
      'module' => 'sel_Selkirk_Template',
      'bean_name' => 'sel_Selkirk_Template',
      'vname' => 'LBL_SEL_SELKIRK_TEMPLATE_SECURITYGROUPS_FROM_SEL_SELKIRK_TEMPLATE_TITLE',
    ),
    'sel_student_project_securitygroups' => 
    array (
      'name' => 'sel_student_project_securitygroups',
      'type' => 'link',
      'relationship' => 'sel_student_project_securitygroups',
      'source' => 'non-db',
      'module' => 'sel_Student_Project',
      'bean_name' => 'sel_Student_Project',
      'vname' => 'LBL_SEL_STUDENT_PROJECT_SECURITYGROUPS_FROM_SEL_STUDENT_PROJECT_TITLE',
    ),
    'sel_selkirk_approvals_securitygroups' => 
    array (
      'name' => 'sel_selkirk_approvals_securitygroups',
      'type' => 'link',
      'relationship' => 'sel_selkirk_approvals_securitygroups',
      'source' => 'non-db',
      'module' => 'sel_Selkirk_Approvals',
      'bean_name' => 'sel_Selkirk_Approvals',
      'vname' => 'LBL_SEL_SELKIRK_APPROVALS_SECURITYGROUPS_FROM_SEL_SELKIRK_APPROVALS_TITLE',
    ),
    'sel_selkirk_funding_securitygroups' => 
    array (
      'name' => 'sel_selkirk_funding_securitygroups',
      'type' => 'link',
      'relationship' => 'sel_selkirk_funding_securitygroups',
      'source' => 'non-db',
      'module' => 'sel_Selkirk_Funding',
      'bean_name' => 'sel_Selkirk_Funding',
      'vname' => 'LBL_SEL_SELKIRK_FUNDING_SECURITYGROUPS_FROM_SEL_SELKIRK_FUNDING_TITLE',
    ),
    'sel_selkirk_partner_securitygroups' => 
    array (
      'name' => 'sel_selkirk_partner_securitygroups',
      'type' => 'link',
      'relationship' => 'sel_selkirk_partner_securitygroups',
      'source' => 'non-db',
      'module' => 'sel_Selkirk_Partner',
      'bean_name' => 'sel_Selkirk_Partner',
      'vname' => 'LBL_SEL_SELKIRK_PARTNER_SECURITYGROUPS_FROM_SEL_SELKIRK_PARTNER_TITLE',
    ),
  ),
  'relationships' => 
  array (
    'securitygroups_modified_user' => 
    array (
      'lhs_module' => 'Users',
      'lhs_table' => 'users',
      'lhs_key' => 'id',
      'rhs_module' => 'SecurityGroups',
      'rhs_table' => 'securitygroups',
      'rhs_key' => 'modified_user_id',
      'relationship_type' => 'one-to-many',
    ),
    'securitygroups_created_by' => 
    array (
      'lhs_module' => 'Users',
      'lhs_table' => 'users',
      'lhs_key' => 'id',
      'rhs_module' => 'SecurityGroups',
      'rhs_table' => 'securitygroups',
      'rhs_key' => 'created_by',
      'relationship_type' => 'one-to-many',
    ),
    'securitygroups_assigned_user' => 
    array (
      'lhs_module' => 'Users',
      'lhs_table' => 'users',
      'lhs_key' => 'id',
      'rhs_module' => 'SecurityGroups',
      'rhs_table' => 'securitygroups',
      'rhs_key' => 'assigned_user_id',
      'relationship_type' => 'one-to-many',
    ),
  ),
  'optimistic_lock' => true,
  'indices' => 
  array (
    'id' => 
    array (
      'name' => 'securitygroupspk',
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