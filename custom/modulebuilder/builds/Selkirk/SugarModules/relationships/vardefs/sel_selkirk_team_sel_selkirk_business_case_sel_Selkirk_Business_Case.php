<?php
// created: 2014-06-13 11:15:29
$dictionary["sel_Selkirk_Business_Case"]["fields"]["sel_selkirk_team_sel_selkirk_business_case"] = array (
  'name' => 'sel_selkirk_team_sel_selkirk_business_case',
  'type' => 'link',
  'relationship' => 'sel_selkirk_team_sel_selkirk_business_case',
  'source' => 'non-db',
  'module' => 'sel_Selkirk_Team',
  'bean_name' => 'sel_Selkirk_Team',
  'vname' => 'LBL_SEL_SELKIRK_TEAM_SEL_SELKIRK_BUSINESS_CASE_FROM_SEL_SELKIRK_TEAM_TITLE',
  'id_name' => 'sel_selkirk_team_sel_selkirk_business_casesel_selkirk_team_ida',
);
$dictionary["sel_Selkirk_Business_Case"]["fields"]["sel_selkirk_team_sel_selkirk_business_case_name"] = array (
  'name' => 'sel_selkirk_team_sel_selkirk_business_case_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_SEL_SELKIRK_TEAM_SEL_SELKIRK_BUSINESS_CASE_FROM_SEL_SELKIRK_TEAM_TITLE',
  'save' => true,
  'id_name' => 'sel_selkirk_team_sel_selkirk_business_casesel_selkirk_team_ida',
  'link' => 'sel_selkirk_team_sel_selkirk_business_case',
  'table' => 'sel_selkirk_team',
  'module' => 'sel_Selkirk_Team',
  'rname' => 'name',
);
$dictionary["sel_Selkirk_Business_Case"]["fields"]["sel_selkirk_team_sel_selkirk_business_casesel_selkirk_team_ida"] = array (
  'name' => 'sel_selkirk_team_sel_selkirk_business_casesel_selkirk_team_ida',
  'type' => 'link',
  'relationship' => 'sel_selkirk_team_sel_selkirk_business_case',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SEL_SELKIRK_TEAM_SEL_SELKIRK_BUSINESS_CASE_FROM_SEL_SELKIRK_BUSINESS_CASE_TITLE',
);
