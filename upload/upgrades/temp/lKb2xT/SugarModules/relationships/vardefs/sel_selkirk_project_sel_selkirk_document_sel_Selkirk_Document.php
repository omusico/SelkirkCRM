<?php
// created: 2014-06-06 15:55:08
$dictionary["sel_Selkirk_Document"]["fields"]["sel_selkirk_project_sel_selkirk_document"] = array (
  'name' => 'sel_selkirk_project_sel_selkirk_document',
  'type' => 'link',
  'relationship' => 'sel_selkirk_project_sel_selkirk_document',
  'source' => 'non-db',
  'module' => 'sel_Selkirk_Project',
  'bean_name' => 'sel_Selkirk_Project',
  'vname' => 'LBL_SEL_SELKIRK_PROJECT_SEL_SELKIRK_DOCUMENT_FROM_SEL_SELKIRK_PROJECT_TITLE',
  'id_name' => 'sel_selkirk_project_sel_selkirk_documentsel_selkirk_project_ida',
);
$dictionary["sel_Selkirk_Document"]["fields"]["sel_selkirk_project_sel_selkirk_document_name"] = array (
  'name' => 'sel_selkirk_project_sel_selkirk_document_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_SEL_SELKIRK_PROJECT_SEL_SELKIRK_DOCUMENT_FROM_SEL_SELKIRK_PROJECT_TITLE',
  'save' => true,
  'id_name' => 'sel_selkirk_project_sel_selkirk_documentsel_selkirk_project_ida',
  'link' => 'sel_selkirk_project_sel_selkirk_document',
  'table' => 'sel_selkirk_project',
  'module' => 'sel_Selkirk_Project',
  'rname' => 'name',
);
$dictionary["sel_Selkirk_Document"]["fields"]["sel_selkirk_project_sel_selkirk_documentsel_selkirk_project_ida"] = array (
  'name' => 'sel_selkirk_project_sel_selkirk_documentsel_selkirk_project_ida',
  'type' => 'link',
  'relationship' => 'sel_selkirk_project_sel_selkirk_document',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SEL_SELKIRK_PROJECT_SEL_SELKIRK_DOCUMENT_FROM_SEL_SELKIRK_DOCUMENT_TITLE',
);
