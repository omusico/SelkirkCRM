<?php
 // created: 2014-05-21 16:30:12
$layout_defs["sel_Selkirk_Client"]["subpanel_setup"]['sel_selkirk_project_sel_selkirk_client'] = array (
  'order' => 100,
  'module' => 'sel_Selkirk_Project',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_SEL_SELKIRK_PROJECT_SEL_SELKIRK_CLIENT_FROM_SEL_SELKIRK_PROJECT_TITLE',
  'get_subpanel_data' => 'sel_selkirk_project_sel_selkirk_client',
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
