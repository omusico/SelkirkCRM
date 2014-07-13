<?php
// created: 2014-05-21 01:07:32
$dictionary["sel_Selkirk_Client"]["fields"]["sel_selkirk_project_sel_selkirk_client_1"] = array (
  'name' => 'sel_selkirk_project_sel_selkirk_client_1',
  'type' => 'link',
  'relationship' => 'sel_selkirk_project_sel_selkirk_client_1',
  'source' => 'non-db',
  'module' => 'sel_Selkirk_Project',
  'bean_name' => 'sel_Selkirk_Project',
  'vname' => 'LBL_SEL_SELKIRK_PROJECT_SEL_SELKIRK_CLIENT_1_FROM_SEL_SELKIRK_PROJECT_TITLE',
  'id_name' => 'sel_selkirk_project_sel_selkirk_client_1sel_selkirk_project_ida',
);
$dictionary["sel_Selkirk_Client"]["fields"]["sel_selkirk_project_sel_selkirk_client_1_name"] = array (
  'name' => 'sel_selkirk_project_sel_selkirk_client_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_SEL_SELKIRK_PROJECT_SEL_SELKIRK_CLIENT_1_FROM_SEL_SELKIRK_PROJECT_TITLE',
  'save' => true,
  'id_name' => 'sel_selkirk_project_sel_selkirk_client_1sel_selkirk_project_ida',
  'link' => 'sel_selkirk_project_sel_selkirk_client_1',
  'table' => 'sel_selkirk_project',
  'module' => 'sel_Selkirk_Project',
  'rname' => 'name',
);
$dictionary["sel_Selkirk_Client"]["fields"]["sel_selkirk_project_sel_selkirk_client_1sel_selkirk_project_ida"] = array (
  'name' => 'sel_selkirk_project_sel_selkirk_client_1sel_selkirk_project_ida',
  'type' => 'link',
  'relationship' => 'sel_selkirk_project_sel_selkirk_client_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SEL_SELKIRK_PROJECT_SEL_SELKIRK_CLIENT_1_FROM_SEL_SELKIRK_CLIENT_TITLE',
);
