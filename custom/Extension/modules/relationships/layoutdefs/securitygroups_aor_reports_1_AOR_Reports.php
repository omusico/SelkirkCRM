<?php
 // created: 2014-09-24 15:29:56
$layout_defs["AOR_Reports"]["subpanel_setup"]['securitygroups_aor_reports_1'] = array (
  'order' => 100,
  'module' => 'SecurityGroups',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_SECURITYGROUPS_AOR_REPORTS_1_FROM_SECURITYGROUPS_TITLE',
  'get_subpanel_data' => 'securitygroups_aor_reports_1',
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
