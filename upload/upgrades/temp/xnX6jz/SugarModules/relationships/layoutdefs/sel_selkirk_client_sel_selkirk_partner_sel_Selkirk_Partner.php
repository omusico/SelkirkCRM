<?php
 // created: 2014-06-05 22:58:17
$layout_defs["sel_Selkirk_Partner"]["subpanel_setup"]['sel_selkirk_client_sel_selkirk_partner'] = array (
  'order' => 100,
  'module' => 'sel_Selkirk_Client',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_SEL_SELKIRK_CLIENT_SEL_SELKIRK_PARTNER_FROM_SEL_SELKIRK_CLIENT_TITLE',
  'get_subpanel_data' => 'sel_selkirk_client_sel_selkirk_partner',
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
