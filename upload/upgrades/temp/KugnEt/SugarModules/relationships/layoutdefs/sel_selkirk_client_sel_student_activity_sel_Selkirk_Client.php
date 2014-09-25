<?php
 // created: 2014-09-17 13:20:53
$layout_defs["sel_Selkirk_Client"]["subpanel_setup"]['sel_selkirk_client_sel_student_activity'] = array (
  'order' => 100,
  'module' => 'sel_Student_Activity',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_SEL_SELKIRK_CLIENT_SEL_STUDENT_ACTIVITY_FROM_SEL_STUDENT_ACTIVITY_TITLE',
  'get_subpanel_data' => 'sel_selkirk_client_sel_student_activity',
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
