<?php
// created: 2014-09-02 10:25:12
$dictionary["sel_Selkirk_Document"]["fields"]["sel_selkirk_template_sel_selkirk_document"] = array (
  'name' => 'sel_selkirk_template_sel_selkirk_document',
  'type' => 'link',
  'relationship' => 'sel_selkirk_template_sel_selkirk_document',
  'source' => 'non-db',
  'module' => 'sel_Selkirk_Template',
  'bean_name' => 'sel_Selkirk_Template',
  'vname' => 'LBL_SEL_SELKIRK_TEMPLATE_SEL_SELKIRK_DOCUMENT_FROM_SEL_SELKIRK_TEMPLATE_TITLE',
  'id_name' => 'sel_selkir95fdemplate_ida',
);
$dictionary["sel_Selkirk_Document"]["fields"]["sel_selkirk_template_sel_selkirk_document_name"] = array (
  'name' => 'sel_selkirk_template_sel_selkirk_document_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_SEL_SELKIRK_TEMPLATE_SEL_SELKIRK_DOCUMENT_FROM_SEL_SELKIRK_TEMPLATE_TITLE',
  'save' => true,
  'id_name' => 'sel_selkir95fdemplate_ida',
  'link' => 'sel_selkirk_template_sel_selkirk_document',
  'table' => 'sel_selkirk_template',
  'module' => 'sel_Selkirk_Template',
  'rname' => 'document_name',
);
$dictionary["sel_Selkirk_Document"]["fields"]["sel_selkir95fdemplate_ida"] = array (
  'name' => 'sel_selkir95fdemplate_ida',
  'type' => 'link',
  'relationship' => 'sel_selkirk_template_sel_selkirk_document',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SEL_SELKIRK_TEMPLATE_SEL_SELKIRK_DOCUMENT_FROM_SEL_SELKIRK_DOCUMENT_TITLE',
);
