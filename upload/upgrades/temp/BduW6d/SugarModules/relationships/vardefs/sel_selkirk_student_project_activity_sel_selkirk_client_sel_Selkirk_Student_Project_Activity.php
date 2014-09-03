<?php
// created: 2014-09-02 10:25:15
$dictionary["sel_Selkirk_Student_Project_Activity"]["fields"]["sel_selkirk_student_project_activity_sel_selkirk_client"] = array (
  'name' => 'sel_selkirk_student_project_activity_sel_selkirk_client',
  'type' => 'link',
  'relationship' => 'sel_selkirk_student_project_activity_sel_selkirk_client',
  'source' => 'non-db',
  'module' => 'sel_Selkirk_Client',
  'bean_name' => 'sel_Selkirk_Client',
  'vname' => 'LBL_SEL_SELKIRK_STUDENT_PROJECT_ACTIVITY_SEL_SELKIRK_CLIENT_FROM_SEL_SELKIRK_CLIENT_TITLE',
  'id_name' => 'sel_selkir069e_client_idb',
);
$dictionary["sel_Selkirk_Student_Project_Activity"]["fields"]["sel_selkirk_student_project_activity_sel_selkirk_client_name"] = array (
  'name' => 'sel_selkirk_student_project_activity_sel_selkirk_client_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_SEL_SELKIRK_STUDENT_PROJECT_ACTIVITY_SEL_SELKIRK_CLIENT_FROM_SEL_SELKIRK_CLIENT_TITLE',
  'save' => true,
  'id_name' => 'sel_selkir069e_client_idb',
  'link' => 'sel_selkirk_student_project_activity_sel_selkirk_client',
  'table' => 'sel_selkirk_client',
  'module' => 'sel_Selkirk_Client',
  'rname' => 'name',
);
$dictionary["sel_Selkirk_Student_Project_Activity"]["fields"]["sel_selkir069e_client_idb"] = array (
  'name' => 'sel_selkir069e_client_idb',
  'type' => 'link',
  'relationship' => 'sel_selkirk_student_project_activity_sel_selkirk_client',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_SEL_SELKIRK_STUDENT_PROJECT_ACTIVITY_SEL_SELKIRK_CLIENT_FROM_SEL_SELKIRK_CLIENT_TITLE',
);
