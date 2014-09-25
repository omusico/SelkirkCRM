<?php
 // created: 2014-09-17 09:21:19
$layout_defs["sel_Selkirk_Team"]["subpanel_setup"]['sel_selkirk_business_case_sel_selkirk_team'] = array (
  'order' => 100,
  'module' => 'sel_Selkirk_Business_Case',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_SEL_SELKIRK_BUSINESS_CASE_SEL_SELKIRK_TEAM_FROM_SEL_SELKIRK_BUSINESS_CASE_TITLE',
  'get_subpanel_data' => 'sel_selkirk_business_case_sel_selkirk_team',
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
