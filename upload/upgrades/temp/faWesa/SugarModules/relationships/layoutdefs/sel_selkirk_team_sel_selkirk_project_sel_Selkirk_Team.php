<?php
 // created: 2014-06-13 11:15:29
$layout_defs["sel_Selkirk_Team"]["subpanel_setup"]['sel_selkirk_team_sel_selkirk_project'] = array (
  'order' => 100,
  'module' => 'sel_Selkirk_Project',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_SEL_SELKIRK_TEAM_SEL_SELKIRK_PROJECT_FROM_SEL_SELKIRK_PROJECT_TITLE',
  'get_subpanel_data' => 'sel_selkirk_team_sel_selkirk_project',
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
