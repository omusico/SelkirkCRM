<?php
// created: 2014-06-13 11:15:29
$dictionary["sel_Selkirk_Project"]["fields"]["sel_selkirk_team_sel_selkirk_project"] = array (
  'name' => 'sel_selkirk_team_sel_selkirk_project',
  'type' => 'link',
  'relationship' => 'sel_selkirk_team_sel_selkirk_project',
  'source' => 'non-db',
  'module' => 'sel_Selkirk_Team',
  'bean_name' => 'sel_Selkirk_Team',
  'vname' => 'LBL_SEL_SELKIRK_TEAM_SEL_SELKIRK_PROJECT_FROM_SEL_SELKIRK_TEAM_TITLE',
  'id_name' => 'sel_selkirk_team_sel_selkirk_projectsel_selkirk_team_ida',
);
$dictionary["sel_Selkirk_Project"]["fields"]["sel_selkirk_team_sel_selkirk_project_name"] = array (
  'name' => 'sel_selkirk_team_sel_selkirk_project_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_SEL_SELKIRK_TEAM_SEL_SELKIRK_PROJECT_FROM_SEL_SELKIRK_TEAM_TITLE',
  'save' => true,
  'id_name' => 'sel_selkirk_team_sel_selkirk_projectsel_selkirk_team_ida',
  'link' => 'sel_selkirk_team_sel_selkirk_project',
  'table' => 'sel_selkirk_team',
  'module' => 'sel_Selkirk_Team',
  'rname' => 'name',
);
$dictionary["sel_Selkirk_Project"]["fields"]["sel_selkirk_team_sel_selkirk_projectsel_selkirk_team_ida"] = array (
  'name' => 'sel_selkirk_team_sel_selkirk_projectsel_selkirk_team_ida',
  'type' => 'link',
  'relationship' => 'sel_selkirk_team_sel_selkirk_project',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SEL_SELKIRK_TEAM_SEL_SELKIRK_PROJECT_FROM_SEL_SELKIRK_PROJECT_TITLE',
);
