<?php
// created: 2014-09-24 10:30:06
$dictionary["sel_Selkirk_Service"]["fields"]["sel_selkirk_project_sel_selkirk_service"] = array (
  'name' => 'sel_selkirk_project_sel_selkirk_service',
  'type' => 'link',
  'relationship' => 'sel_selkirk_project_sel_selkirk_service',
  'source' => 'non-db',
  'module' => 'sel_Selkirk_Project',
  'bean_name' => 'sel_Selkirk_Project',
  'vname' => 'LBL_SEL_SELKIRK_PROJECT_SEL_SELKIRK_SERVICE_FROM_SEL_SELKIRK_PROJECT_TITLE',
  'id_name' => 'sel_selkirk_project_sel_selkirk_servicesel_selkirk_project_ida',
);
$dictionary["sel_Selkirk_Service"]["fields"]["sel_selkirk_project_sel_selkirk_service_name"] = array (
  'name' => 'sel_selkirk_project_sel_selkirk_service_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_SEL_SELKIRK_PROJECT_SEL_SELKIRK_SERVICE_FROM_SEL_SELKIRK_PROJECT_TITLE',
  'save' => true,
  'id_name' => 'sel_selkirk_project_sel_selkirk_servicesel_selkirk_project_ida',
  'link' => 'sel_selkirk_project_sel_selkirk_service',
  'table' => 'sel_selkirk_project',
  'module' => 'sel_Selkirk_Project',
  'rname' => 'name',
);
$dictionary["sel_Selkirk_Service"]["fields"]["sel_selkirk_project_sel_selkirk_servicesel_selkirk_project_ida"] = array (
  'name' => 'sel_selkirk_project_sel_selkirk_servicesel_selkirk_project_ida',
  'type' => 'link',
  'relationship' => 'sel_selkirk_project_sel_selkirk_service',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SEL_SELKIRK_PROJECT_SEL_SELKIRK_SERVICE_FROM_SEL_SELKIRK_SERVICE_TITLE',
);
