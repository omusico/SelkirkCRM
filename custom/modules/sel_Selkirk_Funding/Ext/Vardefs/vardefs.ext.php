<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2014-10-21 14:38:06
$dictionary["sel_Selkirk_Funding"]["fields"]["sel_selkirk_project_sel_selkirk_funding"] = array (
  'name' => 'sel_selkirk_project_sel_selkirk_funding',
  'type' => 'link',
  'relationship' => 'sel_selkirk_project_sel_selkirk_funding',
  'source' => 'non-db',
  'module' => 'sel_Selkirk_Project',
  'bean_name' => 'sel_Selkirk_Project',
  'vname' => 'LBL_SEL_SELKIRK_PROJECT_SEL_SELKIRK_FUNDING_FROM_SEL_SELKIRK_PROJECT_TITLE',
  'id_name' => 'sel_selkirk_project_sel_selkirk_fundingsel_selkirk_project_ida',
);
$dictionary["sel_Selkirk_Funding"]["fields"]["sel_selkirk_project_sel_selkirk_funding_name"] = array (
  'name' => 'sel_selkirk_project_sel_selkirk_funding_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_SEL_SELKIRK_PROJECT_SEL_SELKIRK_FUNDING_FROM_SEL_SELKIRK_PROJECT_TITLE',
  'save' => true,
  'id_name' => 'sel_selkirk_project_sel_selkirk_fundingsel_selkirk_project_ida',
  'link' => 'sel_selkirk_project_sel_selkirk_funding',
  'table' => 'sel_selkirk_project',
  'module' => 'sel_Selkirk_Project',
  'rname' => 'name',
);
$dictionary["sel_Selkirk_Funding"]["fields"]["sel_selkirk_project_sel_selkirk_fundingsel_selkirk_project_ida"] = array (
  'name' => 'sel_selkirk_project_sel_selkirk_fundingsel_selkirk_project_ida',
  'type' => 'link',
  'relationship' => 'sel_selkirk_project_sel_selkirk_funding',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SEL_SELKIRK_PROJECT_SEL_SELKIRK_FUNDING_FROM_SEL_SELKIRK_FUNDING_TITLE',
);


// created: 2014-10-21 14:38:05
$dictionary["sel_Selkirk_Funding"]["fields"]["sel_selkirk_funding_securitygroups"] = array (
  'name' => 'sel_selkirk_funding_securitygroups',
  'type' => 'link',
  'relationship' => 'sel_selkirk_funding_securitygroups',
  'source' => 'non-db',
  'module' => 'SecurityGroups',
  'bean_name' => 'SecurityGroup',
  'vname' => 'LBL_SEL_SELKIRK_FUNDING_SECURITYGROUPS_FROM_SECURITYGROUPS_TITLE',
);

?>