<?php
 // created: 2014-09-02 12:48:33
$layout_defs["sel_Selkirk_Document"]["subpanel_setup"]['sel_selkirk_document_sel_selkirk_client'] = array (
  'order' => 100,
  'module' => 'sel_Selkirk_Client',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_SEL_SELKIRK_DOCUMENT_SEL_SELKIRK_CLIENT_FROM_SEL_SELKIRK_CLIENT_TITLE',
  'get_subpanel_data' => 'sel_selkirk_document_sel_selkirk_client',
  'top_buttons' => 
  array (
    0 => 
    array (
      'widget_class' => 'SubPanelTopButtonQuickCreate',
    ),
    1 => 
    array (
      'widget_class' => 'SubPanelTopSelectButton',
      'mode' => 'MultiSelect',
    ),
  ),
);