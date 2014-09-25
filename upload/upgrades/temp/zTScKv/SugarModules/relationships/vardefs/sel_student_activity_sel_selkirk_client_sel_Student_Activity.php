<?php
// created: 2014-09-02 12:48:32
$dictionary["sel_Student_Activity"]["fields"]["sel_student_activity_sel_selkirk_client"] = array (
  'name' => 'sel_student_activity_sel_selkirk_client',
  'type' => 'link',
  'relationship' => 'sel_student_activity_sel_selkirk_client',
  'source' => 'non-db',
  'module' => 'sel_Selkirk_Client',
  'bean_name' => 'sel_Selkirk_Client',
  'vname' => 'LBL_SEL_STUDENT_ACTIVITY_SEL_SELKIRK_CLIENT_FROM_SEL_SELKIRK_CLIENT_TITLE',
  'id_name' => 'sel_student_activity_sel_selkirk_clientsel_selkirk_client_ida',
);
$dictionary["sel_Student_Activity"]["fields"]["sel_student_activity_sel_selkirk_client_name"] = array (
  'name' => 'sel_student_activity_sel_selkirk_client_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_SEL_STUDENT_ACTIVITY_SEL_SELKIRK_CLIENT_FROM_SEL_SELKIRK_CLIENT_TITLE',
  'save' => true,
  'id_name' => 'sel_student_activity_sel_selkirk_clientsel_selkirk_client_ida',
  'link' => 'sel_student_activity_sel_selkirk_client',
  'table' => 'sel_selkirk_client',
  'module' => 'sel_Selkirk_Client',
  'rname' => 'name',
);
$dictionary["sel_Student_Activity"]["fields"]["sel_student_activity_sel_selkirk_clientsel_selkirk_client_ida"] = array (
  'name' => 'sel_student_activity_sel_selkirk_clientsel_selkirk_client_ida',
  'type' => 'link',
  'relationship' => 'sel_student_activity_sel_selkirk_client',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SEL_STUDENT_ACTIVITY_SEL_SELKIRK_CLIENT_FROM_SEL_STUDENT_ACTIVITY_TITLE',
);
