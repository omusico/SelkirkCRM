<?php
$module_name = 'sel_Student_Activity';
$viewdefs [$module_name] = 
array (
  'QuickCreate' => 
  array (
    'templateMeta' => 
    array (
      'maxColumns' => '2',
      'widths' => 
      array (
        0 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
        1 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
      ),
      'useTabs' => false,
      'tabDefs' => 
      array (
        'DEFAULT' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
    ),
    'panels' => 
    array (
      'default' => 
      array (
        0 => 
        array (
          0 => 'name',
          1 => 
          array (
            'name' => 'student_number',
            'label' => 'LBL_STUDENT_NUMBER',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'course',
            'label' => 'LBL_COURSE',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'start_date',
            'label' => 'LBL_START_DATE',
          ),
          1 => 
          array (
            'name' => 'end_date',
            'label' => 'LBL_END_DATE',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'duration',
            'label' => 'LBL_DURATION',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'description',
            'comment' => 'Full text of the note',
            'label' => 'LBL_DESCRIPTION',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'sel_student_project_sel_student_activity_name',
            'label' => 'LBL_SEL_STUDENT_PROJECT_SEL_STUDENT_ACTIVITY_FROM_SEL_STUDENT_PROJECT_TITLE',
          ),
          1 => 
          array (
            'name' => 'sel_selkirk_client_sel_student_activity_name',
            'label' => 'LBL_SEL_SELKIRK_CLIENT_SEL_STUDENT_ACTIVITY_FROM_SEL_SELKIRK_CLIENT_TITLE',
          ),
        ),
      ),
    ),
  ),
);
?>
