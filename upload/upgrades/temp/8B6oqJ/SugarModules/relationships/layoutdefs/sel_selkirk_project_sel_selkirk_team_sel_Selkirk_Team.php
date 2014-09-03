<?php
 // created: 2014-09-02 13:10:53
$layout_defs["sel_Selkirk_Team"]["subpanel_setup"]['sel_selkirk_project_sel_selkirk_team'] = array (
  'order' => 100,
  'module' => 'sel_Selkirk_Project',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_SEL_SELKIRK_PROJECT_SEL_SELKIRK_TEAM_FROM_SEL_SELKIRK_PROJECT_TITLE',
  'get_subpanel_data' => 'sel_selkirk_project_sel_selkirk_team',
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
