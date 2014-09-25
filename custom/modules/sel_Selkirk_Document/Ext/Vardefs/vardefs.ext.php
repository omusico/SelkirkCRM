<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2014-09-24 13:45:52
$dictionary["sel_Selkirk_Document"]["fields"]["sel_selkirk_document_sel_selkirk_client"] = array (
  'name' => 'sel_selkirk_document_sel_selkirk_client',
  'type' => 'link',
  'relationship' => 'sel_selkirk_document_sel_selkirk_client',
  'source' => 'non-db',
  'module' => 'sel_Selkirk_Client',
  'bean_name' => 'sel_Selkirk_Client',
  'vname' => 'LBL_SEL_SELKIRK_DOCUMENT_SEL_SELKIRK_CLIENT_FROM_SEL_SELKIRK_CLIENT_TITLE',
);


// created: 2014-09-24 13:45:52
$dictionary["sel_Selkirk_Document"]["fields"]["sel_selkirk_document_sel_selkirk_project"] = array (
  'name' => 'sel_selkirk_document_sel_selkirk_project',
  'type' => 'link',
  'relationship' => 'sel_selkirk_document_sel_selkirk_project',
  'source' => 'non-db',
  'module' => 'sel_Selkirk_Project',
  'bean_name' => 'sel_Selkirk_Project',
  'vname' => 'LBL_SEL_SELKIRK_DOCUMENT_SEL_SELKIRK_PROJECT_FROM_SEL_SELKIRK_PROJECT_TITLE',
);


// created: 2014-09-24 13:45:52
$dictionary["sel_Selkirk_Document"]["fields"]["sel_selkirk_document_securitygroups"] = array (
  'name' => 'sel_selkirk_document_securitygroups',
  'type' => 'link',
  'relationship' => 'sel_selkirk_document_securitygroups',
  'source' => 'non-db',
  'module' => 'SecurityGroups',
  'bean_name' => 'SecurityGroup',
  'vname' => 'LBL_SEL_SELKIRK_DOCUMENT_SECURITYGROUPS_FROM_SECURITYGROUPS_TITLE',
);


// created: 2014-09-24 13:45:51
$dictionary["sel_Selkirk_Document"]["fields"]["sel_selkirk_template_sel_selkirk_document"] = array (
  'name' => 'sel_selkirk_template_sel_selkirk_document',
  'type' => 'link',
  'relationship' => 'sel_selkirk_template_sel_selkirk_document',
  'source' => 'non-db',
  'module' => 'sel_Selkirk_Template',
  'bean_name' => 'sel_Selkirk_Template',
  'vname' => 'LBL_SEL_SELKIRK_TEMPLATE_SEL_SELKIRK_DOCUMENT_FROM_SEL_SELKIRK_TEMPLATE_TITLE',
  'id_name' => 'sel_selkir95fdemplate_ida',
);
$dictionary["sel_Selkirk_Document"]["fields"]["sel_selkirk_template_sel_selkirk_document_name"] = array (
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
);
$dictionary["sel_Selkirk_Document"]["fields"]["sel_selkir95fdemplate_ida"] = array (
  'name' => 'sel_selkir95fdemplate_ida',
  'type' => 'link',
  'relationship' => 'sel_selkirk_template_sel_selkirk_document',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SEL_SELKIRK_TEMPLATE_SEL_SELKIRK_DOCUMENT_FROM_SEL_SELKIRK_DOCUMENT_TITLE',
);


// created: 2014-09-24 13:45:53
$dictionary["sel_Selkirk_Document"]["fields"]["sel_selkirk_business_case_sel_selkirk_document"] = array (
  'name' => 'sel_selkirk_business_case_sel_selkirk_document',
  'type' => 'link',
  'relationship' => 'sel_selkirk_business_case_sel_selkirk_document',
  'source' => 'non-db',
  'module' => 'sel_Selkirk_Business_Case',
  'bean_name' => 'sel_Selkirk_Business_Case',
  'vname' => 'LBL_SEL_SELKIRK_BUSINESS_CASE_SEL_SELKIRK_DOCUMENT_FROM_SEL_SELKIRK_BUSINESS_CASE_TITLE',
  'id_name' => 'sel_selkirae30ss_case_ida',
);
$dictionary["sel_Selkirk_Document"]["fields"]["sel_selkirk_business_case_sel_selkirk_document_name"] = array (
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
);
$dictionary["sel_Selkirk_Document"]["fields"]["sel_selkirae30ss_case_ida"] = array (
  'name' => 'sel_selkirae30ss_case_ida',
  'type' => 'link',
  'relationship' => 'sel_selkirk_business_case_sel_selkirk_document',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SEL_SELKIRK_BUSINESS_CASE_SEL_SELKIRK_DOCUMENT_FROM_SEL_SELKIRK_DOCUMENT_TITLE',
);


// created: 2014-09-24 13:45:54
$dictionary["sel_Selkirk_Document"]["fields"]["sel_student_project_sel_selkirk_document"] = array (
  'name' => 'sel_student_project_sel_selkirk_document',
  'type' => 'link',
  'relationship' => 'sel_student_project_sel_selkirk_document',
  'source' => 'non-db',
  'module' => 'sel_Student_Project',
  'bean_name' => 'sel_Student_Project',
  'vname' => 'LBL_SEL_STUDENT_PROJECT_SEL_SELKIRK_DOCUMENT_FROM_SEL_STUDENT_PROJECT_TITLE',
);


// created: 2014-09-24 13:45:52
$dictionary["sel_Selkirk_Document"]["fields"]["sel_selkirk_document_sel_selkirk_service"] = array (
  'name' => 'sel_selkirk_document_sel_selkirk_service',
  'type' => 'link',
  'relationship' => 'sel_selkirk_document_sel_selkirk_service',
  'source' => 'non-db',
  'module' => 'sel_Selkirk_Service',
  'bean_name' => 'sel_Selkirk_Service',
  'vname' => 'LBL_SEL_SELKIRK_DOCUMENT_SEL_SELKIRK_SERVICE_FROM_SEL_SELKIRK_SERVICE_TITLE',
);

?>