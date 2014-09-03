<?php
// created: 2014-09-02 11:01:55
$dictionary["sel_Selkirk_Client"]["fields"]["sel_selkirk_student_project_activity_sel_selkirk_client"] = array (
  'name' => 'sel_selkirk_student_project_activity_sel_selkirk_client',
  'type' => 'link',
  'relationship' => 'sel_selkirk_student_project_activity_sel_selkirk_client',
  'source' => 'non-db',
  'module' => 'sel_Selkirk_Student_Project_Activity',
  'bean_name' => 'sel_Selkirk_Student_Project_Activity',
  'vname' => 'LBL_SEL_SELKIRK_STUDENT_PROJECT_ACTIVITY_SEL_SELKIRK_CLIENT_FROM_SEL_SELKIRK_STUDENT_PROJECT_ACTIVITY_TITLE',
  'id_name' => 'sel_selkirbf4ectivity_ida',
);
$dictionary["sel_Selkirk_Client"]["fields"]["sel_selkirk_student_project_activity_sel_selkirk_client_name"] = array (
  'name' => 'sel_selkirk_student_project_activity_sel_selkirk_client_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_SEL_SELKIRK_STUDENT_PROJECT_ACTIVITY_SEL_SELKIRK_CLIENT_FROM_SEL_SELKIRK_STUDENT_PROJECT_ACTIVITY_TITLE',
  'save' => true,
  'id_name' => 'sel_selkirbf4ectivity_ida',
  'link' => 'sel_selkirk_student_project_activity_sel_selkirk_client',
  'table' => 'sel_selkirk_student_project_activity',
  'module' => 'sel_Selkirk_Student_Project_Activity',
  'rname' => 'name',
);
$dictionary["sel_Selkirk_Client"]["fields"]["sel_selkirbf4ectivity_ida"] = array (
  'name' => 'sel_selkirbf4ectivity_ida',
  'type' => 'link',
  'relationship' => 'sel_selkirk_student_project_activity_sel_selkirk_client',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_SEL_SELKIRK_STUDENT_PROJECT_ACTIVITY_SEL_SELKIRK_CLIENT_FROM_SEL_SELKIRK_STUDENT_PROJECT_ACTIVITY_TITLE',
);
