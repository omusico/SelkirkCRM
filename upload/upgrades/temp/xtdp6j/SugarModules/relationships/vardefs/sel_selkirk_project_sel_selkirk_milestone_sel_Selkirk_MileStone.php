<?php
// created: 2014-09-23 13:36:58
$dictionary["sel_Selkirk_MileStone"]["fields"]["sel_selkirk_project_sel_selkirk_milestone"] = array (
  'name' => 'sel_selkirk_project_sel_selkirk_milestone',
  'type' => 'link',
  'relationship' => 'sel_selkirk_project_sel_selkirk_milestone',
  'source' => 'non-db',
  'module' => 'sel_Selkirk_Project',
  'bean_name' => 'sel_Selkirk_Project',
  'vname' => 'LBL_SEL_SELKIRK_PROJECT_SEL_SELKIRK_MILESTONE_FROM_SEL_SELKIRK_PROJECT_TITLE',
  'id_name' => 'sel_selkirk_project_sel_selkirk_milestonesel_selkirk_project_ida',
);
$dictionary["sel_Selkirk_MileStone"]["fields"]["sel_selkirk_project_sel_selkirk_milestone_name"] = array (
  'name' => 'sel_selkirk_project_sel_selkirk_milestone_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_SEL_SELKIRK_PROJECT_SEL_SELKIRK_MILESTONE_FROM_SEL_SELKIRK_PROJECT_TITLE',
  'save' => true,
  'id_name' => 'sel_selkirk_project_sel_selkirk_milestonesel_selkirk_project_ida',
  'link' => 'sel_selkirk_project_sel_selkirk_milestone',
  'table' => 'sel_selkirk_project',
  'module' => 'sel_Selkirk_Project',
  'rname' => 'name',
);
$dictionary["sel_Selkirk_MileStone"]["fields"]["sel_selkirk_project_sel_selkirk_milestonesel_selkirk_project_ida"] = array (
  'name' => 'sel_selkirk_project_sel_selkirk_milestonesel_selkirk_project_ida',
  'type' => 'link',
  'relationship' => 'sel_selkirk_project_sel_selkirk_milestone',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SEL_SELKIRK_PROJECT_SEL_SELKIRK_MILESTONE_FROM_SEL_SELKIRK_MILESTONE_TITLE',
);
