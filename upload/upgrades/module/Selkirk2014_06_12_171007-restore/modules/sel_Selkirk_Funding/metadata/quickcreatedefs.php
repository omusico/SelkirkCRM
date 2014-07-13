<?php
$module_name = 'sel_Selkirk_Funding';
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
          0 => 
          array (
            'name' => 'description',
            'comment' => 'Full text of the note',
            'label' => 'LBL_DESCRIPTION',
          ),
          1 => 
          array (
            'name' => 'sel_selkirk_project_sel_selkirk_funding_name',
            'label' => 'LBL_SEL_SELKIRK_PROJECT_SEL_SELKIRK_FUNDING_FROM_SEL_SELKIRK_PROJECT_TITLE',
          ),
        ),
      ),
    ),
  ),
);
?>
