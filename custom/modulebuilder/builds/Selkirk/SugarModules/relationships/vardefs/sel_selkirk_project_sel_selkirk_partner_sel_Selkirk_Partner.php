<?php
// created: 2014-07-14 14:05:11
$dictionary["sel_Selkirk_Partner"]["fields"]["sel_selkirk_project_sel_selkirk_partner"] = array (
  'name' => 'sel_selkirk_project_sel_selkirk_partner',
  'type' => 'link',
  'relationship' => 'sel_selkirk_project_sel_selkirk_partner',
  'source' => 'non-db',
  'module' => 'sel_Selkirk_Project',
  'bean_name' => 'sel_Selkirk_Project',
  'vname' => 'LBL_SEL_SELKIRK_PROJECT_SEL_SELKIRK_PARTNER_FROM_SEL_SELKIRK_PROJECT_TITLE',
  'id_name' => 'sel_selkirk_project_sel_selkirk_partnersel_selkirk_project_ida',
);
$dictionary["sel_Selkirk_Partner"]["fields"]["sel_selkirk_project_sel_selkirk_partner_name"] = array (
  'name' => 'sel_selkirk_project_sel_selkirk_partner_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_SEL_SELKIRK_PROJECT_SEL_SELKIRK_PARTNER_FROM_SEL_SELKIRK_PROJECT_TITLE',
  'save' => true,
  'id_name' => 'sel_selkirk_project_sel_selkirk_partnersel_selkirk_project_ida',
  'link' => 'sel_selkirk_project_sel_selkirk_partner',
  'table' => 'sel_selkirk_project',
  'module' => 'sel_Selkirk_Project',
  'rname' => 'name',
);
$dictionary["sel_Selkirk_Partner"]["fields"]["sel_selkirk_project_sel_selkirk_partnersel_selkirk_project_ida"] = array (
  'name' => 'sel_selkirk_project_sel_selkirk_partnersel_selkirk_project_ida',
  'type' => 'link',
  'relationship' => 'sel_selkirk_project_sel_selkirk_partner',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SEL_SELKIRK_PROJECT_SEL_SELKIRK_PARTNER_FROM_SEL_SELKIRK_PARTNER_TITLE',
);
