<?php 
 $GLOBALS["dictionary"]["sel_Selkirk_Business_Case"]=array (
  'table' => 'sel_selkirk_business_case',
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
      'len' => '255',
      'unified_search' => false,
      'full_text_search' => 
      array (
        'boost' => 3,
      ),
      'required' => true,
      'importable' => 'required',
      'duplicate_merge' => 'disabled',
      'merge_filter' => 'disabled',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'reportable' => true,
      'size' => '20',
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
      'rows' => '6',
      'cols' => '80',
      'required' => false,
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'Full text of the note',
      'help' => 'What is the problem that the project will address.',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'size' => '20',
      'studio' => 'visible',
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
      'relationship' => 'sel_selkirk_business_case_created_by',
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
      'relationship' => 'sel_selkirk_business_case_modified_user',
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
      'relationship' => 'sel_selkirk_business_case_assigned_user',
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
    'date_prepared' => 
    array (
      'required' => false,
      'name' => 'date_prepared',
      'vname' => 'LBL_DATE_PREPARED',
      'type' => 'date',
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
      'size' => '20',
      'enable_range_search' => false,
    ),
    'department_name' => 
    array (
      'required' => false,
      'name' => 'department_name',
      'vname' => 'LBL_DEPARTMENT_NAME',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '255',
      'size' => '20',
    ),
    'executive_summary' => 
    array (
      'required' => false,
      'source' => 'non-db',
      'name' => 'executive_summary',
      'vname' => 'LBL_EXECUTIVE_SUMMARY',
      'type' => 'html',
      'massupdate' => 0,
      'default' => '&lt;h1&gt;Executive Summary&lt;/h1&gt;
&lt;p&gt;&lt;strong&gt;This section should provide general information on the issues surrounding the business problem and the proposed project or initiative created to address it. Usually, this section is completed last after all other sections of the business case have been written. This is because the executive summary is exactly that, a summary of the detail that is provided in subsequent sections of the document.&lt;/strong&gt;&lt;/p&gt;',
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
      'default_value' => '&lt;h1&gt;Executive Summary&lt;/h1&gt;
&lt;p&gt;&lt;strong&gt;This section should provide general information on the issues surrounding the business problem and the proposed project or initiative created to address it. Usually, this section is completed last after all other sections of the business case have been written. This is because the executive summary is exactly that, a summary of the detail that is provided in subsequent sections of the document.&lt;/strong&gt;&lt;/p&gt;',
      'studio' => 'visible',
      'dbType' => 'text',
    ),
    'anticipated_outcomes' => 
    array (
      'required' => false,
      'name' => 'anticipated_outcomes',
      'vname' => 'LBL_ANTICIPATED_OUTCOMES',
      'type' => 'text',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => 'How will project benefit organization; summary of financial impact; summary of timeline',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'size' => '20',
      'studio' => 'visible',
      'rows' => '6',
      'cols' => '80',
    ),
    'recomendation' => 
    array (
      'required' => false,
      'name' => 'recomendation',
      'vname' => 'LBL_RECOMENDATION',
      'type' => 'text',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => 'How will approach address problem; how will results be achieved',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'size' => '20',
      'studio' => 'visible',
      'rows' => '6',
      'cols' => '80',
    ),
    'justification' => 
    array (
      'required' => false,
      'name' => 'justification',
      'vname' => 'LBL_JUSTIFICATION',
      'type' => 'text',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => 'Why this alternative was selected over others and impact if project is not implemented',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'size' => '20',
      'studio' => 'visible',
      'rows' => '6',
      'cols' => '80',
    ),
    'project_overview' => 
    array (
      'required' => false,
      'source' => 'non-db',
      'name' => 'project_overview',
      'vname' => 'LBL_PROJECT_OVERVIEW',
      'type' => 'html',
      'massupdate' => 0,
      'default' => '&lt;h1&gt;Project Overview&lt;/h1&gt;
&lt;p&gt;&lt;strong&gt;This section describes high-level information about the project to include a description, goals and objectives, performance criteria, assumptions, constraints, and milestones. &nbsp;This section consolidates all project-specific information into one chapter and allows for an easy understanding of the project since the baseline business problem, impacts, and recommendations have already been established.&lt;/strong&gt;&lt;/p&gt;',
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
      'default_value' => '&lt;h1&gt;Project Overview&lt;/h1&gt;
&lt;p&gt;&lt;strong&gt;This section describes high-level information about the project to include a description, goals and objectives, performance criteria, assumptions, constraints, and milestones. &nbsp;This section consolidates all project-specific information into one chapter and allows for an easy understanding of the project since the baseline business problem, impacts, and recommendations have already been established.&lt;/strong&gt;&lt;/p&gt;',
      'studio' => 'visible',
      'dbType' => 'text',
    ),
    'current_situation' => 
    array (
      'required' => false,
      'name' => 'current_situation',
      'vname' => 'LBL_CURRENT_SITUATION',
      'type' => 'text',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'The problem may be process, technology, or product/service oriented',
      'help' => 'The problem may be process, technology, or product/service oriented',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'size' => '20',
      'studio' => 'visible',
      'rows' => '6',
      'cols' => '80',
    ),
    'project_description' => 
    array (
      'required' => false,
      'name' => 'project_description',
      'vname' => 'LBL_PROJECT_DESCRIPTION ',
      'type' => 'text',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => 'The approach the project will use to address problem',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'size' => '20',
      'studio' => 'visible',
      'rows' => '6',
      'cols' => '80',
    ),
    'project_assumptions' => 
    array (
      'required' => false,
      'name' => 'project_assumptions',
      'vname' => 'LBL_PROJECT_ASSUMPTIONS ',
      'type' => 'text',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => 'List initial assumptions',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'size' => '20',
      'studio' => 'visible',
      'rows' => '6',
      'cols' => '80',
    ),
    'project_constraints' => 
    array (
      'required' => false,
      'name' => 'project_constraints',
      'vname' => 'LBL_PROJECT_CONSTRAINTS ',
      'type' => 'text',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => 'Preliminary constraints on project (i.e. resources, time, etc.)',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'size' => '20',
      'studio' => 'visible',
      'rows' => '6',
      'cols' => '80',
    ),
    'major_project_milestones' => 
    array (
      'required' => false,
      'name' => 'major_project_milestones',
      'vname' => 'LBL_MAJOR_PROJECT_MILESTONES',
      'type' => 'text',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '1.8	General milestones and target completion dates',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'size' => '20',
      'studio' => 'visible',
      'rows' => '6',
      'cols' => '80',
    ),
    'project_roll_over' => 
    array (
      'required' => false,
      'name' => 'project_roll_over',
      'vname' => 'LBL_PROJECT_ROLL_OVER',
      'type' => 'radioenum',
      'massupdate' => 0,
      'default' => 'yes',
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
      'len' => 100,
      'size' => '20',
      'options' => 'Selkirk_Yes_No',
      'studio' => 'visible',
      'dbType' => 'enum',
      'separator' => '<br>',
    ),
    'strategic_alignment_hdr' => 
    array (
      'required' => false,
      'source' => 'non-db',
      'name' => 'strategic_alignment_hdr',
      'vname' => 'LBL_STRATEGIC_ALIGNMENT_HDR',
      'type' => 'html',
      'massupdate' => 0,
      'default' => '&lt;h1&gt;Strategic Alignment&lt;/h1&gt;
&lt;p&gt;&lt;strong&gt;All projects should support the organization&rsquo;s strategy and strategic plans in order to add value and maintain executive and organizational support. &nbsp;This section provides an overview of the organizational strategic plans that are related to the project. &nbsp;This includes the strategic plan, what the plan calls for, and how the project supports the strategic plan.&lt;/strong&gt;&lt;/p&gt;',
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
      'default_value' => '&lt;h1&gt;Strategic Alignment&lt;/h1&gt;
&lt;p&gt;&lt;strong&gt;All projects should support the organization&rsquo;s strategy and strategic plans in order to add value and maintain executive and organizational support. &nbsp;This section provides an overview of the organizational strategic plans that are related to the project. &nbsp;This includes the strategic plan, what the plan calls for, and how the project supports the strategic plan.&lt;/strong&gt;&lt;/p&gt;',
      'studio' => 'visible',
      'dbType' => 'text',
    ),
    'strategic_alignment' => 
    array (
      'required' => false,
      'name' => 'strategic_alignment',
      'vname' => 'LBL_STRATEGIC_ALIGNMENT',
      'type' => 'text',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'size' => '20',
      'studio' => 'visible',
      'rows' => '6',
      'cols' => '80',
    ),
    'cost_benefit_analysis_hdr' => 
    array (
      'required' => false,
      'source' => 'non-db',
      'name' => 'cost_benefit_analysis_hdr',
      'vname' => 'LBL_COST_BENEFIT_ANALYSIS_HDR',
      'type' => 'html',
      'massupdate' => 0,
      'default' => '&lt;h1&gt;Cost/Benefit Analysis&lt;/h1&gt;
&lt;p&gt;&lt;strong&gt;Information that quantifies the financial benefits of the project as much as possible in the business case. Illustrate the costs of the project and compare them with the benefits and savings to determine if the project is worth pursuing.&lt;/strong&gt;&lt;/p&gt;',
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
      'default_value' => '&lt;h1&gt;Cost/Benefit Analysis&lt;/h1&gt;
&lt;p&gt;&lt;strong&gt;Information that quantifies the financial benefits of the project as much as possible in the business case. Illustrate the costs of the project and compare them with the benefits and savings to determine if the project is worth pursuing.&lt;/strong&gt;&lt;/p&gt;',
      'studio' => 'visible',
      'dbType' => 'text',
    ),
    'tangible_intangible_benefits' => 
    array (
      'required' => false,
      'source' => 'non-db',
      'name' => 'tangible_intangible_benefits',
      'vname' => 'LBL_TANGIBLE_INTANGIBLE_BENEFITS',
      'type' => 'html',
      'massupdate' => 0,
      'default' => '&lt;h2&gt;Tangible &nbsp;&amp; Intangible Benefits&lt;/h2&gt;',
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
      'default_value' => '&lt;h2&gt;Tangible &nbsp;&amp; Intangible Benefits&lt;/h2&gt;',
      'studio' => 'visible',
      'dbType' => 'text',
    ),
    'community_profile' => 
    array (
      'required' => false,
      'name' => 'community_profile',
      'vname' => 'LBL_COMMUNITY_PROFILE',
      'type' => 'text',
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
      'size' => '20',
      'studio' => 'visible',
      'rows' => '6',
      'cols' => '80',
    ),
    'tangible_intangible_cost' => 
    array (
      'required' => false,
      'source' => 'non-db',
      'name' => 'tangible_intangible_cost',
      'vname' => 'LBL_TANGIBLE_INTANGIBLE_COST',
      'type' => 'html',
      'massupdate' => 0,
      'default' => '&lt;h2&gt;Tangible &amp; Intangible Costs&lt;/h2&gt;',
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
      'default_value' => '&lt;h2&gt;Tangible &amp; Intangible Costs&lt;/h2&gt;',
      'studio' => 'visible',
      'dbType' => 'text',
    ),
    'new_revenues' => 
    array (
      'required' => false,
      'name' => 'new_revenues',
      'vname' => 'LBL_NEW_REVENUES',
      'type' => 'text',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'size' => '20',
      'studio' => 'visible',
      'rows' => '6',
      'cols' => '80',
    ),
    'labour_material' => 
    array (
      'required' => false,
      'name' => 'labour_material',
      'vname' => 'LBL_LABOUR_MATERIAL',
      'type' => 'text',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'size' => '20',
      'studio' => 'visible',
      'rows' => '6',
      'cols' => '80',
    ),
    'job_impact_productivity_loss' => 
    array (
      'required' => false,
      'name' => 'job_impact_productivity_loss',
      'vname' => 'LBL_JOB_IMPACT_PRODUCTIVITY_LOSS',
      'type' => 'text',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'size' => '20',
      'studio' => 'visible',
      'rows' => '6',
      'cols' => '80',
    ),
    'overall_revenue_cost_project' => 
    array (
      'required' => false,
      'name' => 'overall_revenue_cost_project',
      'vname' => 'LBL_OVERALL_REVENUE_COST_PROJECT',
      'type' => 'text',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'size' => '20',
      'studio' => 'visible',
      'rows' => '6',
      'cols' => '80',
    ),
    'cashflow_projects' => 
    array (
      'required' => false,
      'name' => 'cashflow_projects',
      'vname' => 'LBL_CASHFLOW_PROJECTS',
      'type' => 'text',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'size' => '20',
      'studio' => 'visible',
      'rows' => '6',
      'cols' => '80',
    ),
    'pay_back_return_on_investment' => 
    array (
      'required' => false,
      'name' => 'pay_back_return_on_investment',
      'vname' => 'LBL_PAY_BACK_RETURN_ON_INVESTMENT',
      'type' => 'text',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'size' => '20',
      'studio' => 'visible',
      'rows' => '6',
      'cols' => '80',
    ),
    'alternative_analysis_hrd' => 
    array (
      'required' => false,
      'source' => 'non-db',
      'name' => 'alternative_analysis_hrd',
      'vname' => 'LBL_ALTERNATIVE_ANALYSIS_HRD',
      'type' => 'html',
      'massupdate' => 0,
      'default' => '&lt;h1&gt;Alternative Analysis&lt;/h1&gt;
&lt;p&gt;&lt;strong&gt;All business problems may be addressed by any number of alternative projects. &nbsp;Include a brief summary of considered alternatives including status quo or doing nothing. &nbsp;Also include reasons for not selecting alternatives.&lt;/strong&gt;&lt;/p&gt;',
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
      'default_value' => '&lt;h1&gt;Alternative Analysis&lt;/h1&gt;
&lt;p&gt;&lt;strong&gt;All business problems may be addressed by any number of alternative projects. &nbsp;Include a brief summary of considered alternatives including status quo or doing nothing. &nbsp;Also include reasons for not selecting alternatives.&lt;/strong&gt;&lt;/p&gt;',
      'studio' => 'visible',
      'dbType' => 'text',
    ),
    'alternative_analysis' => 
    array (
      'required' => false,
      'name' => 'alternative_analysis',
      'vname' => 'LBL_ALTERNATIVE_ANALYSIS',
      'type' => 'text',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'size' => '20',
      'studio' => 'visible',
      'rows' => '6',
      'cols' => '80',
    ),
    'risks' => 
    array (
      'required' => false,
      'name' => 'risks',
      'vname' => 'LBL_RISKS',
      'type' => 'text',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'size' => '20',
      'studio' => 'visible',
      'rows' => '6',
      'cols' => '80',
    ),
    'future_development' => 
    array (
      'required' => false,
      'name' => 'future_development',
      'vname' => 'LBL_FUTURE_DEVELOPMENT',
      'type' => 'text',
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
      'size' => '20',
      'studio' => 'visible',
      'rows' => '6',
      'cols' => '80',
    ),
    'sel_selkirk_business_case_securitygroups' => 
    array (
      'name' => 'sel_selkirk_business_case_securitygroups',
      'type' => 'link',
      'relationship' => 'sel_selkirk_business_case_securitygroups',
      'source' => 'non-db',
      'module' => 'SecurityGroups',
      'bean_name' => 'SecurityGroup',
      'vname' => 'LBL_SEL_SELKIRK_BUSINESS_CASE_SECURITYGROUPS_FROM_SECURITYGROUPS_TITLE',
    ),
    'sel_selkirk_business_case_sel_selkirk_approvals' => 
    array (
      'name' => 'sel_selkirk_business_case_sel_selkirk_approvals',
      'type' => 'link',
      'relationship' => 'sel_selkirk_business_case_sel_selkirk_approvals',
      'source' => 'non-db',
      'module' => 'sel_Selkirk_Approvals',
      'bean_name' => 'sel_Selkirk_Approvals',
      'side' => 'right',
      'vname' => 'LBL_SEL_SELKIRK_BUSINESS_CASE_SEL_SELKIRK_APPROVALS_FROM_SEL_SELKIRK_APPROVALS_TITLE',
    ),
    'sel_selkirk_business_case_sel_selkirk_document' => 
    array (
      'name' => 'sel_selkirk_business_case_sel_selkirk_document',
      'type' => 'link',
      'relationship' => 'sel_selkirk_business_case_sel_selkirk_document',
      'source' => 'non-db',
      'module' => 'sel_Selkirk_Document',
      'bean_name' => 'sel_Selkirk_Document',
      'side' => 'right',
      'vname' => 'LBL_SEL_SELKIRK_BUSINESS_CASE_SEL_SELKIRK_DOCUMENT_FROM_SEL_SELKIRK_DOCUMENT_TITLE',
    ),
    'sel_selkirk_business_case_sel_selkirk_team' => 
    array (
      'name' => 'sel_selkirk_business_case_sel_selkirk_team',
      'type' => 'link',
      'relationship' => 'sel_selkirk_business_case_sel_selkirk_team',
      'source' => 'non-db',
      'module' => 'sel_Selkirk_Team',
      'bean_name' => 'sel_Selkirk_Team',
      'vname' => 'LBL_SEL_SELKIRK_BUSINESS_CASE_SEL_SELKIRK_TEAM_FROM_SEL_SELKIRK_TEAM_TITLE',
    ),
    'sel_selkirk_project_sel_selkirk_business_case' => 
    array (
      'name' => 'sel_selkirk_project_sel_selkirk_business_case',
      'type' => 'link',
      'relationship' => 'sel_selkirk_project_sel_selkirk_business_case',
      'source' => 'non-db',
      'module' => 'sel_Selkirk_Project',
      'bean_name' => 'sel_Selkirk_Project',
      'vname' => 'LBL_SEL_SELKIRK_PROJECT_SEL_SELKIRK_BUSINESS_CASE_FROM_SEL_SELKIRK_PROJECT_TITLE',
    ),
  ),
  'relationships' => 
  array (
    'sel_selkirk_business_case_modified_user' => 
    array (
      'lhs_module' => 'Users',
      'lhs_table' => 'users',
      'lhs_key' => 'id',
      'rhs_module' => 'sel_Selkirk_Business_Case',
      'rhs_table' => 'sel_selkirk_business_case',
      'rhs_key' => 'modified_user_id',
      'relationship_type' => 'one-to-many',
    ),
    'sel_selkirk_business_case_created_by' => 
    array (
      'lhs_module' => 'Users',
      'lhs_table' => 'users',
      'lhs_key' => 'id',
      'rhs_module' => 'sel_Selkirk_Business_Case',
      'rhs_table' => 'sel_selkirk_business_case',
      'rhs_key' => 'created_by',
      'relationship_type' => 'one-to-many',
    ),
    'sel_selkirk_business_case_assigned_user' => 
    array (
      'lhs_module' => 'Users',
      'lhs_table' => 'users',
      'lhs_key' => 'id',
      'rhs_module' => 'sel_Selkirk_Business_Case',
      'rhs_table' => 'sel_selkirk_business_case',
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
      'name' => 'sel_selkirk_business_casepk',
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