<?php
$module_name = 'sel_Selkirk_Approvals';
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
          1 => 
          array (
            'name' => 'title',
            'studio' => 'visible',
            'label' => 'LBL_TITLE',
          ),
        ),
        1 => 
        array (
          0 => 'description',
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'date_approved',
            'label' => 'LBL_DATE_APPROVED',
          ),
          1 => 'assigned_user_name',
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'sel_selkirk_business_case_sel_selkirk_approvals_name',
            'label' => 'LBL_SEL_SELKIRK_BUSINESS_CASE_SEL_SELKIRK_APPROVALS_FROM_SEL_SELKIRK_BUSINESS_CASE_TITLE',
          ),
        ),
      ),
    ),
  ),
);
?>
