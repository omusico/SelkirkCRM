<?php
 // created: 2014-09-02 10:25:13
$layout_defs["sel_Selkirk_Team"]["subpanel_setup"]['sel_selkirk_team_users'] = array (
  'order' => 100,
  'module' => 'Users',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_SEL_SELKIRK_TEAM_USERS_FROM_USERS_TITLE',
  'get_subpanel_data' => 'sel_selkirk_team_users',
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
