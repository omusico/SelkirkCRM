<?php
// created: 2014-09-02 11:19:16
$dictionary["sel_Selkirk_Client"]["fields"]["sel_student_activity_sel_selkirk_client"] = array (
  'name' => 'sel_student_activity_sel_selkirk_client',
  'type' => 'link',
  'relationship' => 'sel_student_activity_sel_selkirk_client',
  'source' => 'non-db',
  'module' => 'sel_Student_Activity',
  'bean_name' => 'sel_Student_Activity',
  'vname' => 'LBL_SEL_STUDENT_ACTIVITY_SEL_SELKIRK_CLIENT_FROM_SEL_STUDENT_ACTIVITY_TITLE',
  'id_name' => 'sel_student_activity_sel_selkirk_clientsel_student_activity_ida',
);
$dictionary["sel_Selkirk_Client"]["fields"]["sel_student_activity_sel_selkirk_client_name"] = array (
  'name' => 'sel_student_activity_sel_selkirk_client_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_SEL_STUDENT_ACTIVITY_SEL_SELKIRK_CLIENT_FROM_SEL_STUDENT_ACTIVITY_TITLE',
  'save' => true,
  'id_name' => 'sel_student_activity_sel_selkirk_clientsel_student_activity_ida',
  'link' => 'sel_student_activity_sel_selkirk_client',
  'table' => 'sel_student_activity',
  'module' => 'sel_Student_Activity',
  'rname' => 'name',
);
$dictionary["sel_Selkirk_Client"]["fields"]["sel_student_activity_sel_selkirk_clientsel_student_activity_ida"] = array (
  'name' => 'sel_student_activity_sel_selkirk_clientsel_student_activity_ida',
  'type' => 'link',
  'relationship' => 'sel_student_activity_sel_selkirk_client',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_SEL_STUDENT_ACTIVITY_SEL_SELKIRK_CLIENT_FROM_SEL_STUDENT_ACTIVITY_TITLE',
);
