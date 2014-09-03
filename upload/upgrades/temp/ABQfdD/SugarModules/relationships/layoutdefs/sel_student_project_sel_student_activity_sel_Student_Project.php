<?php
 // created: 2014-09-02 13:33:08
$layout_defs["sel_Student_Project"]["subpanel_setup"]['sel_student_project_sel_student_activity'] = array (
  'order' => 100,
  'module' => 'sel_Student_Activity',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_SEL_STUDENT_PROJECT_SEL_STUDENT_ACTIVITY_FROM_SEL_STUDENT_ACTIVITY_TITLE',
  'get_subpanel_data' => 'sel_student_project_sel_student_activity',
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
