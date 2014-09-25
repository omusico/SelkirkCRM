<?php
 // created: 2014-09-17 09:21:17
$layout_defs["SecurityGroups"]["subpanel_setup"]['sel_selkirk_template_securitygroups'] = array (
  'order' => 100,
  'module' => 'sel_Selkirk_Template',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_SEL_SELKIRK_TEMPLATE_SECURITYGROUPS_FROM_SEL_SELKIRK_TEMPLATE_TITLE',
  'get_subpanel_data' => 'sel_selkirk_template_securitygroups',
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
