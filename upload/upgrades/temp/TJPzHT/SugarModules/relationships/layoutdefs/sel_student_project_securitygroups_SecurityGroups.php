<?php
 // created: 2014-09-24 10:30:09
$layout_defs["SecurityGroups"]["subpanel_setup"]['sel_student_project_securitygroups'] = array (
  'order' => 100,
  'module' => 'sel_Student_Project',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_SEL_STUDENT_PROJECT_SECURITYGROUPS_FROM_SEL_STUDENT_PROJECT_TITLE',
  'get_subpanel_data' => 'sel_student_project_securitygroups',
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
