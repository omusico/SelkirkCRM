<?php
// created: 2014-06-05 23:29:20
$dictionary["sel_Selkirk_Partner"]["fields"]["sel_selkirk_partner_sel_selkirk_client"] = array (
  'name' => 'sel_selkirk_partner_sel_selkirk_client',
  'type' => 'link',
  'relationship' => 'sel_selkirk_partner_sel_selkirk_client',
  'source' => 'non-db',
  'module' => 'sel_Selkirk_Client',
  'bean_name' => 'sel_Selkirk_Client',
  'vname' => 'LBL_SEL_SELKIRK_PARTNER_SEL_SELKIRK_CLIENT_FROM_SEL_SELKIRK_CLIENT_TITLE',
  'id_name' => 'sel_selkirk_partner_sel_selkirk_clientsel_selkirk_client_ida',
);
$dictionary["sel_Selkirk_Partner"]["fields"]["sel_selkirk_partner_sel_selkirk_client_name"] = array (
  'name' => 'sel_selkirk_partner_sel_selkirk_client_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_SEL_SELKIRK_PARTNER_SEL_SELKIRK_CLIENT_FROM_SEL_SELKIRK_CLIENT_TITLE',
  'save' => true,
  'id_name' => 'sel_selkirk_partner_sel_selkirk_clientsel_selkirk_client_ida',
  'link' => 'sel_selkirk_partner_sel_selkirk_client',
  'table' => 'sel_selkirk_client',
  'module' => 'sel_Selkirk_Client',
  'rname' => 'name',
);
$dictionary["sel_Selkirk_Partner"]["fields"]["sel_selkirk_partner_sel_selkirk_clientsel_selkirk_client_ida"] = array (
  'name' => 'sel_selkirk_partner_sel_selkirk_clientsel_selkirk_client_ida',
  'type' => 'link',
  'relationship' => 'sel_selkirk_partner_sel_selkirk_client',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SEL_SELKIRK_PARTNER_SEL_SELKIRK_CLIENT_FROM_SEL_SELKIRK_PARTNER_TITLE',
);
