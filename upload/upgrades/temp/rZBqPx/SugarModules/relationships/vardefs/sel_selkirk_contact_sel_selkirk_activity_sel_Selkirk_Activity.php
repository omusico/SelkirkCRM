<?php
// created: 2014-09-02 12:54:46
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
