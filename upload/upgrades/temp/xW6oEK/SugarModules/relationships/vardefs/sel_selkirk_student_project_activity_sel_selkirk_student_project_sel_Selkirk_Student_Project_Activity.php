<?php
// created: 2014-09-02 11:00:09
$dictionary["sel_Selkirk_Student_Project_Activity"]["fields"]["sel_selkirk_student_project_activity_sel_selkirk_student_project"] = array (
  'name' => 'sel_selkirk_student_project_activity_sel_selkirk_student_project',
  'type' => 'link',
  'relationship' => 'sel_selkirk_student_project_activity_sel_selkirk_student_project',
  'source' => 'non-db',
  'module' => 'sel_Selkirk_Student_Project',
  'bean_name' => 'sel_Selkirk_Student_Project',
  'vname' => 'LBL_SEL_SELKIRK_STUDENT_PROJECT_ACTIVITY_SEL_SELKIRK_STUDENT_PROJECT_FROM_SEL_SELKIRK_STUDENT_PROJECT_TITLE',
  'id_name' => 'sel_selkir478eproject_ida',
);
$dictionary["sel_Selkirk_Student_Project_Activity"]["fields"]["sel_selkir34a1roject_name"] = array (
  'name' => 'sel_selkir34a1roject_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_SEL_SELKIRK_STUDENT_PROJECT_ACTIVITY_SEL_SELKIRK_STUDENT_PROJECT_FROM_SEL_SELKIRK_STUDENT_PROJECT_TITLE',
  'save' => true,
  'id_name' => 'sel_selkir478eproject_ida',
  'link' => 'sel_selkirk_student_project_activity_sel_selkirk_student_project',
  'table' => 'sel_selkirk_student_project',
  'module' => 'sel_Selkirk_Student_Project',
  'rname' => 'name',
);
$dictionary["sel_Selkirk_Student_Project_Activity"]["fields"]["sel_selkir478eproject_ida"] = array (
  'name' => 'sel_selkir478eproject_ida',
  'type' => 'link',
  'relationship' => 'sel_selkirk_student_project_activity_sel_selkirk_student_project',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SEL_SELKIRK_STUDENT_PROJECT_ACTIVITY_SEL_SELKIRK_STUDENT_PROJECT_FROM_SEL_SELKIRK_STUDENT_PROJECT_ACTIVITY_TITLE',
);
