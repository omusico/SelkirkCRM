<?php
// created: 2014-06-11 13:07:41
$dictionary["sel_Selkirk_Approvals_01"]["fields"]["sel_selkirk_business_case_sel_selkirk_approvals_01"] = array (
  'name' => 'sel_selkirk_business_case_sel_selkirk_approvals_01',
  'type' => 'link',
  'relationship' => 'sel_selkirk_business_case_sel_selkirk_approvals_01',
  'source' => 'non-db',
  'module' => 'sel_Selkirk_Business_Case',
  'bean_name' => 'sel_Selkirk_Business_Case',
  'vname' => 'LBL_SEL_SELKIRK_BUSINESS_CASE_SEL_SELKIRK_APPROVALS_01_FROM_SEL_SELKIRK_BUSINESS_CASE_TITLE',
  'id_name' => 'sel_selkir5858ss_case_ida',
);
$dictionary["sel_Selkirk_Approvals_01"]["fields"]["sel_selkirk_business_case_sel_selkirk_approvals_01_name"] = array (
  'name' => 'sel_selkirk_business_case_sel_selkirk_approvals_01_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_SEL_SELKIRK_BUSINESS_CASE_SEL_SELKIRK_APPROVALS_01_FROM_SEL_SELKIRK_BUSINESS_CASE_TITLE',
  'save' => true,
  'id_name' => 'sel_selkir5858ss_case_ida',
  'link' => 'sel_selkirk_business_case_sel_selkirk_approvals_01',
  'table' => 'sel_selkirk_business_case',
  'module' => 'sel_Selkirk_Business_Case',
  'rname' => 'name',
);
$dictionary["sel_Selkirk_Approvals_01"]["fields"]["sel_selkir5858ss_case_ida"] = array (
  'name' => 'sel_selkir5858ss_case_ida',
  'type' => 'link',
  'relationship' => 'sel_selkirk_business_case_sel_selkirk_approvals_01',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SEL_SELKIRK_BUSINESS_CASE_SEL_SELKIRK_APPROVALS_01_FROM_SEL_SELKIRK_APPROVALS_01_TITLE',
);
