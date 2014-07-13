<?php
// created: 2014-06-05 23:03:15
$dictionary["sel_Selkirk_Partner"]["fields"]["sel_selkirk_client_sel_selkirk_partner"] = array (
  'name' => 'sel_selkirk_client_sel_selkirk_partner',
  'type' => 'link',
  'relationship' => 'sel_selkirk_client_sel_selkirk_partner',
  'source' => 'non-db',
  'module' => 'sel_Selkirk_Client',
  'bean_name' => 'sel_Selkirk_Client',
  'vname' => 'LBL_SEL_SELKIRK_CLIENT_SEL_SELKIRK_PARTNER_FROM_SEL_SELKIRK_CLIENT_TITLE',
  'id_name' => 'sel_selkirk_client_sel_selkirk_partnersel_selkirk_client_ida',
);
$dictionary["sel_Selkirk_Partner"]["fields"]["sel_selkirk_client_sel_selkirk_partner_name"] = array (
  'name' => 'sel_selkirk_client_sel_selkirk_partner_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_SEL_SELKIRK_CLIENT_SEL_SELKIRK_PARTNER_FROM_SEL_SELKIRK_CLIENT_TITLE',
  'save' => true,
  'id_name' => 'sel_selkirk_client_sel_selkirk_partnersel_selkirk_client_ida',
  'link' => 'sel_selkirk_client_sel_selkirk_partner',
  'table' => 'sel_selkirk_client',
  'module' => 'sel_Selkirk_Client',
  'rname' => 'name',
);
$dictionary["sel_Selkirk_Partner"]["fields"]["sel_selkirk_client_sel_selkirk_partnersel_selkirk_client_ida"] = array (
  'name' => 'sel_selkirk_client_sel_selkirk_partnersel_selkirk_client_ida',
  'type' => 'link',
  'relationship' => 'sel_selkirk_client_sel_selkirk_partner',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SEL_SELKIRK_CLIENT_SEL_SELKIRK_PARTNER_FROM_SEL_SELKIRK_PARTNER_TITLE',
);
