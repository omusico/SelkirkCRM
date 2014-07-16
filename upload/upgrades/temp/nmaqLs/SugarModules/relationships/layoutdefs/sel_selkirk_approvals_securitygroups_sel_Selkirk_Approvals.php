<?php
 // created: 2014-07-16 09:10:05
$layout_defs["sel_Selkirk_Approvals"]["subpanel_setup"]['sel_selkirk_approvals_securitygroups'] = array (
  'order' => 100,
  'module' => 'SecurityGroups',
  'subpanel_name' => 'ForUsers',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_SEL_SELKIRK_APPROVALS_SECURITYGROUPS_FROM_SECURITYGROUPS_TITLE',
  'get_subpanel_data' => 'sel_selkirk_approvals_securitygroups',
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
