<?php
 // created: 2014-07-16 11:08:06
$layout_defs["sel_Selkirk_Funding"]["subpanel_setup"]['sel_selkirk_funding_securitygroups'] = array (
  'order' => 100,
  'module' => 'SecurityGroups',
  'subpanel_name' => 'ForUsers',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_SEL_SELKIRK_FUNDING_SECURITYGROUPS_FROM_SECURITYGROUPS_TITLE',
  'get_subpanel_data' => 'sel_selkirk_funding_securitygroups',
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
