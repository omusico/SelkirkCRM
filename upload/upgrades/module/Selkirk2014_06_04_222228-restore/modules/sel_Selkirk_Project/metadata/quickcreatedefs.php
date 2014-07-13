<?php
$module_name = 'sel_Selkirk_Project';
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
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'project_lead',
            'studio' => 'visible',
            'label' => 'LBL_PROJECT_LEAD',
          ),
          1 => 
          array (
            'name' => 'department',
            'studio' => 'visible',
            'label' => 'LBL_DEPARTMENT',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'project_type',
            'studio' => 'visible',
            'label' => 'LBL_PROJECT_TYPE',
          ),
          1 => 
          array (
            'name' => 'status',
            'studio' => 'visible',
            'label' => 'LBL_STATUS',
          ),
        ),
        3 => 
        array (
          0 => '',
        ),
      ),
    ),
  ),
);
?>
