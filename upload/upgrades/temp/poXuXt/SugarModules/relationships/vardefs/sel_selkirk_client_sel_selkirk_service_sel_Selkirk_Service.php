<?php
// created: 2014-09-02 12:48:34
$dictionary["sel_Selkirk_Service"]["fields"]["sel_selkirk_client_sel_selkirk_service"] = array (
  'name' => 'sel_selkirk_client_sel_selkirk_service',
  'type' => 'link',
  'relationship' => 'sel_selkirk_client_sel_selkirk_service',
  'source' => 'non-db',
  'module' => 'sel_Selkirk_Client',
  'bean_name' => 'sel_Selkirk_Client',
  'vname' => 'LBL_SEL_SELKIRK_CLIENT_SEL_SELKIRK_SERVICE_FROM_SEL_SELKIRK_CLIENT_TITLE',
  'id_name' => 'sel_selkirk_client_sel_selkirk_servicesel_selkirk_client_ida',
);
$dictionary["sel_Selkirk_Service"]["fields"]["sel_selkirk_client_sel_selkirk_service_name"] = array (
  'name' => 'sel_selkirk_client_sel_selkirk_service_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_SEL_SELKIRK_CLIENT_SEL_SELKIRK_SERVICE_FROM_SEL_SELKIRK_CLIENT_TITLE',
  'save' => true,
  'id_name' => 'sel_selkirk_client_sel_selkirk_servicesel_selkirk_client_ida',
  'link' => 'sel_selkirk_client_sel_selkirk_service',
  'table' => 'sel_selkirk_client',
  'module' => 'sel_Selkirk_Client',
  'rname' => 'name',
);
$dictionary["sel_Selkirk_Service"]["fields"]["sel_selkirk_client_sel_selkirk_servicesel_selkirk_client_ida"] = array (
  'name' => 'sel_selkirk_client_sel_selkirk_servicesel_selkirk_client_ida',
  'type' => 'link',
  'relationship' => 'sel_selkirk_client_sel_selkirk_service',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SEL_SELKIRK_CLIENT_SEL_SELKIRK_SERVICE_FROM_SEL_SELKIRK_SERVICE_TITLE',
);
