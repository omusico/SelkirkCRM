<?php
 // created: 2014-07-15 14:29:33
$layout_defs["SecurityGroups"]["subpanel_setup"]['sel_selkirk_lead_securitygroups'] = array (
  'order' => 100,
  'module' => 'sel_Selkirk_Lead',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_SEL_SELKIRK_LEAD_SECURITYGROUPS_FROM_SEL_SELKIRK_LEAD_TITLE',
  'get_subpanel_data' => 'sel_selkirk_lead_securitygroups',
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
