<?php
 // created: 2014-10-21 14:33:07
$layout_defs["SecurityGroups"]["subpanel_setup"]['sel_selkirk_partner_securitygroups'] = array (
  'order' => 100,
  'module' => 'sel_Selkirk_Partner',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_SEL_SELKIRK_PARTNER_SECURITYGROUPS_FROM_SEL_SELKIRK_PARTNER_TITLE',
  'get_subpanel_data' => 'sel_selkirk_partner_securitygroups',
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
