<?php
 // created: 2014-07-16 11:05:44
$layout_defs["sel_Selkirk_Project"]["subpanel_setup"]['sel_selkirk_project_sel_selkirk_funding'] = array (
  'order' => 100,
  'module' => 'sel_Selkirk_Funding',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_SEL_SELKIRK_PROJECT_SEL_SELKIRK_FUNDING_FROM_SEL_SELKIRK_FUNDING_TITLE',
  'get_subpanel_data' => 'sel_selkirk_project_sel_selkirk_funding',
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
