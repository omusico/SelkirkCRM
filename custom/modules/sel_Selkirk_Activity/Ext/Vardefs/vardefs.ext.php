<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2014-10-21 14:38:04
$dictionary["sel_Selkirk_Activity"]["fields"]["sel_selkirk_activity_securitygroups"] = array (
  'name' => 'sel_selkirk_activity_securitygroups',
  'type' => 'link',
  'relationship' => 'sel_selkirk_activity_securitygroups',
  'source' => 'non-db',
  'module' => 'SecurityGroups',
  'bean_name' => 'SecurityGroup',
  'vname' => 'LBL_SEL_SELKIRK_ACTIVITY_SECURITYGROUPS_FROM_SECURITYGROUPS_TITLE',
);


// created: 2014-10-21 14:38:08
$dictionary["sel_Selkirk_Activity"]["fields"]["sel_selkirk_client_sel_selkirk_activity"] = array (
  'name' => 'sel_selkirk_client_sel_selkirk_activity',
  'type' => 'link',
  'relationship' => 'sel_selkirk_client_sel_selkirk_activity',
  'source' => 'non-db',
  'module' => 'sel_Selkirk_Client',
  'bean_name' => 'sel_Selkirk_Client',
  'vname' => 'LBL_SEL_SELKIRK_CLIENT_SEL_SELKIRK_ACTIVITY_FROM_SEL_SELKIRK_CLIENT_TITLE',
  'id_name' => 'sel_selkirk_client_sel_selkirk_activitysel_selkirk_client_ida',
);
$dictionary["sel_Selkirk_Activity"]["fields"]["sel_selkirk_client_sel_selkirk_activity_name"] = array (
  'name' => 'sel_selkirk_client_sel_selkirk_activity_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_SEL_SELKIRK_CLIENT_SEL_SELKIRK_ACTIVITY_FROM_SEL_SELKIRK_CLIENT_TITLE',
  'save' => true,
  'id_name' => 'sel_selkirk_client_sel_selkirk_activitysel_selkirk_client_ida',
  'link' => 'sel_selkirk_client_sel_selkirk_activity',
  'table' => 'sel_selkirk_client',
  'module' => 'sel_Selkirk_Client',
  'rname' => 'name',
);
$dictionary["sel_Selkirk_Activity"]["fields"]["sel_selkirk_client_sel_selkirk_activitysel_selkirk_client_ida"] = array (
  'name' => 'sel_selkirk_client_sel_selkirk_activitysel_selkirk_client_ida',
  'type' => 'link',
  'relationship' => 'sel_selkirk_client_sel_selkirk_activity',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SEL_SELKIRK_CLIENT_SEL_SELKIRK_ACTIVITY_FROM_SEL_SELKIRK_ACTIVITY_TITLE',
);


// created: 2014-10-21 14:38:05
$dictionary["sel_Selkirk_Activity"]["fields"]["sel_selkirk_contact_sel_selkirk_activity"] = array (
  'name' => 'sel_selkirk_contact_sel_selkirk_activity',
  'type' => 'link',
  'relationship' => 'sel_selkirk_contact_sel_selkirk_activity',
  'source' => 'non-db',
  'module' => 'sel_Selkirk_Contact',
  'bean_name' => 'sel_Selkirk_Contact',
  'vname' => 'LBL_SEL_SELKIRK_CONTACT_SEL_SELKIRK_ACTIVITY_FROM_SEL_SELKIRK_CONTACT_TITLE',
  'id_name' => 'sel_selkirk_contact_sel_selkirk_activitysel_selkirk_contact_ida',
);
$dictionary["sel_Selkirk_Activity"]["fields"]["sel_selkirk_contact_sel_selkirk_activity_name"] = array (
  'name' => 'sel_selkirk_contact_sel_selkirk_activity_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_SEL_SELKIRK_CONTACT_SEL_SELKIRK_ACTIVITY_FROM_SEL_SELKIRK_CONTACT_TITLE',
  'save' => true,
  'id_name' => 'sel_selkirk_contact_sel_selkirk_activitysel_selkirk_contact_ida',
  'link' => 'sel_selkirk_contact_sel_selkirk_activity',
  'table' => 'sel_selkirk_contact',
  'module' => 'sel_Selkirk_Contact',
  'rname' => 'name',
);
$dictionary["sel_Selkirk_Activity"]["fields"]["sel_selkirk_contact_sel_selkirk_activitysel_selkirk_contact_ida"] = array (
  'name' => 'sel_selkirk_contact_sel_selkirk_activitysel_selkirk_contact_ida',
  'type' => 'link',
  'relationship' => 'sel_selkirk_contact_sel_selkirk_activity',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SEL_SELKIRK_CONTACT_SEL_SELKIRK_ACTIVITY_FROM_SEL_SELKIRK_ACTIVITY_TITLE',
);

?>