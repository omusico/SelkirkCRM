<?php
$module_name = 'sel_Selkirk_MileStone';
$viewdefs [$module_name] = 
array (
  'EditView' => 
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
      'syncDetailEditViews' => true,
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
            'name' => 'milestone_date',
            'label' => 'LBL_MILESTONE_DATE',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'sel_selkirk_project_sel_selkirk_milestone_name',
          ),
        ),
      ),
    ),
  ),
);
?>
