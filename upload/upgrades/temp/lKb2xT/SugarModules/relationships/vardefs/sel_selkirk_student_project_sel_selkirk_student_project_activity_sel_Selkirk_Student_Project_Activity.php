<?php
// created: 2014-09-02 10:57:14
$dictionary["sel_Selkirk_Student_Project_Activity"]["fields"]["sel_selkirk_student_project_sel_selkirk_student_project_activity"] = array (
  'name' => 'sel_selkirk_student_project_sel_selkirk_student_project_activity',
  'type' => 'link',
  'relationship' => 'sel_selkirk_student_project_sel_selkirk_student_project_activity',
  'source' => 'non-db',
  'module' => 'sel_Selkirk_Student_Project',
  'bean_name' => 'sel_Selkirk_Student_Project',
  'vname' => 'LBL_SEL_SELKIRK_STUDENT_PROJECT_SEL_SELKIRK_STUDENT_PROJECT_ACTIVITY_FROM_SEL_SELKIRK_STUDENT_PROJECT_TITLE',
  'id_name' => 'sel_selkir0a45project_ida',
);
$dictionary["sel_Selkirk_Student_Project_Activity"]["fields"]["sel_selkir5155tivity_name"] = array (
  'name' => 'sel_selkir5155tivity_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_SEL_SELKIRK_STUDENT_PROJECT_SEL_SELKIRK_STUDENT_PROJECT_ACTIVITY_FROM_SEL_SELKIRK_STUDENT_PROJECT_TITLE',
  'save' => true,
  'id_name' => 'sel_selkir0a45project_ida',
  'link' => 'sel_selkirk_student_project_sel_selkirk_student_project_activity',
  'table' => 'sel_selkirk_student_project',
  'module' => 'sel_Selkirk_Student_Project',
  'rname' => 'name',
);
$dictionary["sel_Selkirk_Student_Project_Activity"]["fields"]["sel_selkir0a45project_ida"] = array (
  'name' => 'sel_selkir0a45project_ida',
  'type' => 'link',
  'relationship' => 'sel_selkirk_student_project_sel_selkirk_student_project_activity',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SEL_SELKIRK_STUDENT_PROJECT_SEL_SELKIRK_STUDENT_PROJECT_ACTIVITY_FROM_SEL_SELKIRK_STUDENT_PROJECT_ACTIVITY_TITLE',
);
