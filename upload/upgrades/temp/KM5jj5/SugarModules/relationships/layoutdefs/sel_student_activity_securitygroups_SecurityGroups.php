<?php
 // created: 2014-09-23 11:12:17
$layout_defs["SecurityGroups"]["subpanel_setup"]['sel_student_activity_securitygroups'] = array (
  'order' => 100,
  'module' => 'sel_Student_Activity',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_SEL_STUDENT_ACTIVITY_SECURITYGROUPS_FROM_SEL_STUDENT_ACTIVITY_TITLE',
  'get_subpanel_data' => 'sel_student_activity_securitygroups',
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
