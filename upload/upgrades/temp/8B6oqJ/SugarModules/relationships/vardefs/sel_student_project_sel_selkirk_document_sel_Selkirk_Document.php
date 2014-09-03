<?php
// created: 2014-09-02 13:10:56
$dictionary["sel_Selkirk_Document"]["fields"]["sel_student_project_sel_selkirk_document"] = array (
  'name' => 'sel_student_project_sel_selkirk_document',
  'type' => 'link',
  'relationship' => 'sel_student_project_sel_selkirk_document',
  'source' => 'non-db',
  'module' => 'sel_Student_Project',
  'bean_name' => 'sel_Student_Project',
  'vname' => 'LBL_SEL_STUDENT_PROJECT_SEL_SELKIRK_DOCUMENT_FROM_SEL_STUDENT_PROJECT_TITLE',
  'id_name' => 'sel_student_project_sel_selkirk_documentsel_student_project_ida',
);
$dictionary["sel_Selkirk_Document"]["fields"]["sel_student_project_sel_selkirk_document_name"] = array (
  'name' => 'sel_student_project_sel_selkirk_document_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_SEL_STUDENT_PROJECT_SEL_SELKIRK_DOCUMENT_FROM_SEL_STUDENT_PROJECT_TITLE',
  'save' => true,
  'id_name' => 'sel_student_project_sel_selkirk_documentsel_student_project_ida',
  'link' => 'sel_student_project_sel_selkirk_document',
  'table' => 'sel_student_project',
  'module' => 'sel_Student_Project',
  'rname' => 'name',
);
$dictionary["sel_Selkirk_Document"]["fields"]["sel_student_project_sel_selkirk_documentsel_student_project_ida"] = array (
  'name' => 'sel_student_project_sel_selkirk_documentsel_student_project_ida',
  'type' => 'link',
  'relationship' => 'sel_student_project_sel_selkirk_document',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SEL_STUDENT_PROJECT_SEL_SELKIRK_DOCUMENT_FROM_SEL_SELKIRK_DOCUMENT_TITLE',
);
