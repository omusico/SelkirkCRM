<?php 
 //WARNING: The contents of this file are auto-generated


 // created: 2014-10-21 14:38:05
$layout_defs["Users"]["subpanel_setup"]['sel_selkirk_team_users'] = array (
  'order' => 100,
  'module' => 'sel_Selkirk_Team',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_SEL_SELKIRK_TEAM_USERS_FROM_SEL_SELKIRK_TEAM_TITLE',
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


global $modules_exempt_from_availability_check;
$modules_exempt_from_availability_check['SecurityGroups']='SecurityGroups';

$layout_defs['Users']['subpanel_setup']['securitygroups'] = array(
    'top_buttons' => array(array('widget_class' => 'SubPanelTopSelectButton', 'popup_module' => 'SecurityGroups', 'mode' => 'MultiSelect'),),
    'order' => 100,
    'sort_by' => 'name',
    'sort_order' => 'asc',
    'module' => 'SecurityGroups',
    'refresh_page'=>1,
    'subpanel_name' => 'default',
    'get_subpanel_data' => 'SecurityGroups',
    'add_subpanel_data' => 'securitygroup_id',
    'title_key' => 'LBL_SECURITYGROUPS_SUBPANEL_TITLE',
);
$layout_defs['UserRoles']['subpanel_setup']['securitygroups'] = array(
    'top_buttons' => array(array('widget_class' => 'SubPanelTopSelectButton', 'popup_module' => 'SecurityGroups', 'mode' => 'MultiSelect'),),
    'order' => 100,
    'sort_by' => 'name',
    'sort_order' => 'asc',
    'module' => 'SecurityGroups',
    'refresh_page'=>1,
    'subpanel_name' => 'default',
    'get_subpanel_data' => 'SecurityGroups',
    'add_subpanel_data' => 'securitygroup_id',
    'title_key' => 'LBL_SECURITYGROUPS_SUBPANEL_TITLE',
);


global $current_user;
if(is_admin($current_user)){

    $layout_defs['Users']['subpanel_setup']['securitygroups']['subpanel_name'] = 'ForUsers';
}else{
    
    $layout_defs['Users']['subpanel_setup']['securitygroups']['top_buttons'] = array();
    
}

?>