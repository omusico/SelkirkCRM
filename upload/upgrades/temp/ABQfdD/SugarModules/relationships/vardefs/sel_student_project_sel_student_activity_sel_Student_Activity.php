<?php
// created: 2014-09-02 13:33:08
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
