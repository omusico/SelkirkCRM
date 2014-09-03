<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2014-09-02 14:59:51
$dictionary["sel_Student_Activity"]["fields"]["sel_selkirk_client_sel_student_activity"] = array (
  'name' => 'sel_selkirk_client_sel_student_activity',
  'type' => 'link',
  'relationship' => 'sel_selkirk_client_sel_student_activity',
  'source' => 'non-db',
  'module' => 'sel_Selkirk_Client',
  'bean_name' => 'sel_Selkirk_Client',
  'vname' => 'LBL_SEL_SELKIRK_CLIENT_SEL_STUDENT_ACTIVITY_FROM_SEL_SELKIRK_CLIENT_TITLE',
  'id_name' => 'sel_selkirk_client_sel_student_activitysel_selkirk_client_ida',
);
$dictionary["sel_Student_Activity"]["fields"]["sel_selkirk_client_sel_student_activity_name"] = array (
  'name' => 'sel_selkirk_client_sel_student_activity_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_SEL_SELKIRK_CLIENT_SEL_STUDENT_ACTIVITY_FROM_SEL_SELKIRK_CLIENT_TITLE',
  'save' => true,
  'id_name' => 'sel_selkirk_client_sel_student_activitysel_selkirk_client_ida',
  'link' => 'sel_selkirk_client_sel_student_activity',
  'table' => 'sel_selkirk_client',
  'module' => 'sel_Selkirk_Client',
  'rname' => 'name',
);
$dictionary["sel_Student_Activity"]["fields"]["sel_selkirk_client_sel_student_activitysel_selkirk_client_ida"] = array (
  'name' => 'sel_selkirk_client_sel_student_activitysel_selkirk_client_ida',
  'type' => 'link',
  'relationship' => 'sel_selkirk_client_sel_student_activity',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SEL_SELKIRK_CLIENT_SEL_STUDENT_ACTIVITY_FROM_SEL_STUDENT_ACTIVITY_TITLE',
);


// created: 2014-09-02 14:59:48
$dictionary["sel_Student_Activity"]["fields"]["sel_student_activity_securitygroups"] = array (
  'name' => 'sel_student_activity_securitygroups',
  'type' => 'link',
  'relationship' => 'sel_student_activity_securitygroups',
  'source' => 'non-db',
  'module' => 'SecurityGroups',
  'bean_name' => 'SecurityGroup',
  'vname' => 'LBL_SEL_STUDENT_ACTIVITY_SECURITYGROUPS_FROM_SECURITYGROUPS_TITLE',
);


// created: 2014-09-02 14:59:51
$dictionary["sel_Student_Activity"]["fields"]["sel_student_project_sel_student_activity"] = array (
  'name' => 'sel_student_project_sel_student_activity',
  'type' => 'link',
  'relationship' => 'sel_student_project_sel_student_activity',
  'source' => 'non-db',
  'module' => 'sel_Student_Project',
  'bean_name' => 'sel_Student_Project',
  'vname' => 'LBL_SEL_STUDENT_PROJECT_SEL_STUDENT_ACTIVITY_FROM_SEL_STUDENT_PROJECT_TITLE',
  'id_name' => 'sel_student_project_sel_student_activitysel_student_project_ida',
);
$dictionary["sel_Student_Activity"]["fields"]["sel_student_project_sel_student_activity_name"] = array (
  'name' => 'sel_student_project_sel_student_activity_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_SEL_STUDENT_PROJECT_SEL_STUDENT_ACTIVITY_FROM_SEL_STUDENT_PROJECT_TITLE',
  'save' => true,
  'id_name' => 'sel_student_project_sel_student_activitysel_student_project_ida',
  'link' => 'sel_student_project_sel_student_activity',
  'table' => 'sel_student_project',
  'module' => 'sel_Student_Project',
  'rname' => 'name',
);
$dictionary["sel_Student_Activity"]["fields"]["sel_student_project_sel_student_activitysel_student_project_ida"] = array (
  'name' => 'sel_student_project_sel_student_activitysel_student_project_ida',
  'type' => 'link',
  'relationship' => 'sel_student_project_sel_student_activity',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SEL_STUDENT_PROJECT_SEL_STUDENT_ACTIVITY_FROM_SEL_STUDENT_ACTIVITY_TITLE',
);

?>