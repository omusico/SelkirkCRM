<?php
$module_name = 'sel_Selkirk_Student_Project';
$viewdefs [$module_name] = 
array (
  'DetailView' => 
  array (
    'templateMeta' => 
    array (
      'form' => 
      array (
        'buttons' => 
        array (
          0 => 'EDIT',
          1 => 'DUPLICATE',
          2 => 'DELETE',
          3 => 'FIND_DUPLICATES',
        ),
      ),
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
      'syncDetailEditViews' => true,
    ),
    'panels' => 
    array (
      'default' => 
      array (
        0 => 
        array (
          0 => 'name',
        ),
        1 => 
        array (
          0 => 'description',
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'program',
            'label' => 'LBL_PROGRAM',
          ),
          1 => 
          array (
            'name' => 'school',
            'label' => 'LBL_SCHOOL',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'supervisor',
            'label' => 'LBL_SUPERVISOR',
          ),
          1 => 'assigned_user_name',
        ),
      ),
    ),
  ),
);
?>
