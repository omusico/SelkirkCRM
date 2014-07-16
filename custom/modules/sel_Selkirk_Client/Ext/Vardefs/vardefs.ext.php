<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2014-07-16 11:41:09
$dictionary["sel_Selkirk_Client"]["fields"]["sel_selkirk_document_sel_selkirk_client"] = array (
  'name' => 'sel_selkirk_document_sel_selkirk_client',
  'type' => 'link',
  'relationship' => 'sel_selkirk_document_sel_selkirk_client',
  'source' => 'non-db',
  'module' => 'sel_Selkirk_Document',
  'bean_name' => 'sel_Selkirk_Document',
  'vname' => 'LBL_SEL_SELKIRK_DOCUMENT_SEL_SELKIRK_CLIENT_FROM_SEL_SELKIRK_DOCUMENT_TITLE',
);


// created: 2014-07-16 11:41:10
$dictionary["sel_Selkirk_Client"]["fields"]["sel_selkirk_client_sel_selkirk_service"] = array (
  'name' => 'sel_selkirk_client_sel_selkirk_service',
  'type' => 'link',
  'relationship' => 'sel_selkirk_client_sel_selkirk_service',
  'source' => 'non-db',
  'module' => 'sel_Selkirk_Service',
  'bean_name' => 'sel_Selkirk_Service',
  'side' => 'right',
  'vname' => 'LBL_SEL_SELKIRK_CLIENT_SEL_SELKIRK_SERVICE_FROM_SEL_SELKIRK_SERVICE_TITLE',
);


// created: 2014-07-16 11:41:11
$dictionary["sel_Selkirk_Client"]["fields"]["sel_selkirk_client_sel_selkirk_activity"] = array (
  'name' => 'sel_selkirk_client_sel_selkirk_activity',
  'type' => 'link',
  'relationship' => 'sel_selkirk_client_sel_selkirk_activity',
  'source' => 'non-db',
  'module' => 'sel_Selkirk_Activity',
  'bean_name' => 'sel_Selkirk_Activity',
  'side' => 'right',
  'vname' => 'LBL_SEL_SELKIRK_CLIENT_SEL_SELKIRK_ACTIVITY_FROM_SEL_SELKIRK_ACTIVITY_TITLE',
);


// created: 2014-07-16 11:41:11
$dictionary["sel_Selkirk_Client"]["fields"]["sel_selkirk_client_securitygroups"] = array (
  'name' => 'sel_selkirk_client_securitygroups',
  'type' => 'link',
  'relationship' => 'sel_selkirk_client_securitygroups',
  'source' => 'non-db',
  'module' => 'SecurityGroups',
  'bean_name' => 'SecurityGroup',
  'vname' => 'LBL_SEL_SELKIRK_CLIENT_SECURITYGROUPS_FROM_SECURITYGROUPS_TITLE',
);


// created: 2014-07-16 11:41:10
$dictionary["sel_Selkirk_Client"]["fields"]["sel_selkirk_client_sel_selkirk_contact"] = array (
  'name' => 'sel_selkirk_client_sel_selkirk_contact',
  'type' => 'link',
  'relationship' => 'sel_selkirk_client_sel_selkirk_contact',
  'source' => 'non-db',
  'module' => 'sel_Selkirk_Contact',
  'bean_name' => 'sel_Selkirk_Contact',
  'vname' => 'LBL_SEL_SELKIRK_CLIENT_SEL_SELKIRK_CONTACT_FROM_SEL_SELKIRK_CONTACT_TITLE',
);

?>