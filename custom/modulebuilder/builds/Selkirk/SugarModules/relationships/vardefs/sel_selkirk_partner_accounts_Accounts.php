<?php
// created: 2014-06-05 22:50:56
$dictionary["Account"]["fields"]["sel_selkirk_partner_accounts"] = array (
  'name' => 'sel_selkirk_partner_accounts',
  'type' => 'link',
  'relationship' => 'sel_selkirk_partner_accounts',
  'source' => 'non-db',
  'module' => 'sel_Selkirk_Partner',
  'bean_name' => 'sel_Selkirk_Partner',
  'vname' => 'LBL_SEL_SELKIRK_PARTNER_ACCOUNTS_FROM_SEL_SELKIRK_PARTNER_TITLE',
  'id_name' => 'sel_selkirk_partner_accountssel_selkirk_partner_ida',
);
$dictionary["Account"]["fields"]["sel_selkirk_partner_accounts_name"] = array (
  'name' => 'sel_selkirk_partner_accounts_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_SEL_SELKIRK_PARTNER_ACCOUNTS_FROM_SEL_SELKIRK_PARTNER_TITLE',
  'save' => true,
  'id_name' => 'sel_selkirk_partner_accountssel_selkirk_partner_ida',
  'link' => 'sel_selkirk_partner_accounts',
  'table' => 'sel_selkirk_partner',
  'module' => 'sel_Selkirk_Partner',
  'rname' => 'name',
);
$dictionary["Account"]["fields"]["sel_selkirk_partner_accountssel_selkirk_partner_ida"] = array (
  'name' => 'sel_selkirk_partner_accountssel_selkirk_partner_ida',
  'type' => 'link',
  'relationship' => 'sel_selkirk_partner_accounts',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SEL_SELKIRK_PARTNER_ACCOUNTS_FROM_ACCOUNTS_TITLE',
);
