<?php
$module_name = 'sel_Selkirk_Funding';
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
            'name' => 'fund_source',
            'studio' => 'visible',
            'label' => 'LBL_FUND_SOURCE',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'amount',
            'label' => 'LBL_AMOUNT',
          ),
          1 => '',
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'funding_start_date',
            'label' => 'LBL_FUNDING_START_DATE',
          ),
          1 => 
          array (
            'name' => 'funding_end_date',
            'label' => 'LBL_FUNDING_END_DATE',
          ),
        ),
        3 => 
        array (
          0 => 'description',
          1 => 
          array (
            'name' => 'sel_selkirk_project_sel_selkirk_funding_name',
          ),
        ),
      ),
    ),
  ),
);
?>
