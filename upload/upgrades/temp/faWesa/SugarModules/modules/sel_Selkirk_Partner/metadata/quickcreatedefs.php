<?php
$module_name = 'sel_Selkirk_Partner';
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
      'useTabs' => true,
      'tabDefs' => 
      array (
        'DEFAULT' => 
        array (
          'newTab' => true,
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
          0 => 
          array (
            'name' => 'name',
            'label' => 'LBL_NAME',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'contribution_date',
            'label' => 'LBL_CONTRIBUTION_DATE',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'contribution',
            'label' => 'LBL_CONTRIBUTION',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'in_kind_contribution',
            'studio' => 'visible',
            'label' => 'LBL_IN_KIND_CONTRIBUTION',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'partner',
            'studio' => 'visible',
            'label' => 'LBL_PARTNER',
          ),
          1 => 
          array (
            'name' => 'sel_selkirk_project_sel_selkirk_partner_name',
            'label' => 'LBL_SEL_SELKIRK_PROJECT_SEL_SELKIRK_PARTNER_FROM_SEL_SELKIRK_PROJECT_TITLE',
          ),
        ),
      ),
    ),
  ),
);
?>
