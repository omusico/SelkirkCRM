<?php
// created: 2014-09-02 10:13:17
$dictionary["sel_Selkirk_Approvals"]["fields"]["sel_selkirk_business_case_sel_selkirk_approvals"] = array (
  'name' => 'sel_selkirk_business_case_sel_selkirk_approvals',
  'type' => 'link',
  'relationship' => 'sel_selkirk_business_case_sel_selkirk_approvals',
  'source' => 'non-db',
  'module' => 'sel_Selkirk_Business_Case',
  'bean_name' => 'sel_Selkirk_Business_Case',
  'vname' => 'LBL_SEL_SELKIRK_BUSINESS_CASE_SEL_SELKIRK_APPROVALS_FROM_SEL_SELKIRK_BUSINESS_CASE_TITLE',
  'id_name' => 'sel_selkir8868ss_case_ida',
);
$dictionary["sel_Selkirk_Approvals"]["fields"]["sel_selkirk_business_case_sel_selkirk_approvals_name"] = array (
  'name' => 'sel_selkirk_business_case_sel_selkirk_approvals_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_SEL_SELKIRK_BUSINESS_CASE_SEL_SELKIRK_APPROVALS_FROM_SEL_SELKIRK_BUSINESS_CASE_TITLE',
  'save' => true,
  'id_name' => 'sel_selkir8868ss_case_ida',
  'link' => 'sel_selkirk_business_case_sel_selkirk_approvals',
  'table' => 'sel_selkirk_business_case',
  'module' => 'sel_Selkirk_Business_Case',
  'rname' => 'name',
);
$dictionary["sel_Selkirk_Approvals"]["fields"]["sel_selkir8868ss_case_ida"] = array (
  'name' => 'sel_selkir8868ss_case_ida',
  'type' => 'link',
  'relationship' => 'sel_selkirk_business_case_sel_selkirk_approvals',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SEL_SELKIRK_BUSINESS_CASE_SEL_SELKIRK_APPROVALS_FROM_SEL_SELKIRK_APPROVALS_TITLE',
);
