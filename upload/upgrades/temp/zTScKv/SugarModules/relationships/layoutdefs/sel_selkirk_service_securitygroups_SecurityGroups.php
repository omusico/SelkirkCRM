<?php
 // created: 2014-09-24 12:07:20
$layout_defs["SecurityGroups"]["subpanel_setup"]['sel_selkirk_service_securitygroups'] = array (
  'order' => 100,
  'module' => 'sel_Selkirk_Service',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_SEL_SELKIRK_SERVICE_SECURITYGROUPS_FROM_SEL_SELKIRK_SERVICE_TITLE',
  'get_subpanel_data' => 'sel_selkirk_service_securitygroups',
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
