<?php
 // created: 2014-09-02 09:46:32
$layout_defs["SecurityGroups"]["subpanel_setup"]['sel_selkirk_contact_securitygroups'] = array (
  'order' => 100,
  'module' => 'sel_Selkirk_Contact',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_SEL_SELKIRK_CONTACT_SECURITYGROUPS_FROM_SEL_SELKIRK_CONTACT_TITLE',
  'get_subpanel_data' => 'sel_selkirk_contact_securitygroups',
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
