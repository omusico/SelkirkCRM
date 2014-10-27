<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2014-10-21 14:38:07
$dictionary["sel_Selkirk_Contact"]["fields"]["sel_selkirk_client_sel_selkirk_contact"] = array (
  'name' => 'sel_selkirk_client_sel_selkirk_contact',
  'type' => 'link',
  'relationship' => 'sel_selkirk_client_sel_selkirk_contact',
  'source' => 'non-db',
  'module' => 'sel_Selkirk_Client',
  'bean_name' => 'sel_Selkirk_Client',
  'vname' => 'LBL_SEL_SELKIRK_CLIENT_SEL_SELKIRK_CONTACT_FROM_SEL_SELKIRK_CLIENT_TITLE',
);


// created: 2014-10-21 14:38:05
$dictionary["sel_Selkirk_Contact"]["fields"]["sel_selkirk_contact_securitygroups"] = array (
  'name' => 'sel_selkirk_contact_securitygroups',
  'type' => 'link',
  'relationship' => 'sel_selkirk_contact_securitygroups',
  'source' => 'non-db',
  'module' => 'SecurityGroups',
  'bean_name' => 'SecurityGroup',
  'vname' => 'LBL_SEL_SELKIRK_CONTACT_SECURITYGROUPS_FROM_SECURITYGROUPS_TITLE',
);


// created: 2014-10-21 14:38:05
$dictionary["sel_Selkirk_Contact"]["fields"]["sel_selkirk_contact_sel_selkirk_activity"] = array (
  'name' => 'sel_selkirk_contact_sel_selkirk_activity',
  'type' => 'link',
  'relationship' => 'sel_selkirk_contact_sel_selkirk_activity',
  'source' => 'non-db',
  'module' => 'sel_Selkirk_Activity',
  'bean_name' => 'sel_Selkirk_Activity',
  'side' => 'right',
  'vname' => 'LBL_SEL_SELKIRK_CONTACT_SEL_SELKIRK_ACTIVITY_FROM_SEL_SELKIRK_ACTIVITY_TITLE',
);

?>