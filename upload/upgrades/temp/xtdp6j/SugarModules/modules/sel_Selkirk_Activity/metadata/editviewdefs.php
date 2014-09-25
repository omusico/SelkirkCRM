<?php
$module_name = 'sel_Selkirk_Activity';
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
          0 => 
          array (
            'name' => 'method_of_contact',
            'studio' => 'visible',
            'label' => 'LBL_METHOD_OF_CONTACT',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'name',
            'label' => 'LBL_NAME',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'contacted_by',
            'studio' => 'visible',
            'label' => 'LBL_CONTACTED_BY',
          ),
          1 => 
          array (
            'name' => 'contact_date',
            'label' => 'LBL_CONTACT_DATE',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'description',
            'comment' => 'Full text of the note',
            'studio' => 'visible',
            'label' => 'LBL_DESCRIPTION',
          ),
          1 => 
          array (
            'name' => 'sel_selkirk_contact_sel_selkirk_activity_name',
            'label' => 'LBL_SEL_SELKIRK_CONTACT_SEL_SELKIRK_ACTIVITY_FROM_SEL_SELKIRK_CONTACT_TITLE',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'sel_selkirk_client_sel_selkirk_activity_name',
            'label' => 'LBL_SEL_SELKIRK_CLIENT_SEL_SELKIRK_ACTIVITY_FROM_SEL_SELKIRK_CLIENT_TITLE',
          ),
        ),
      ),
    ),
  ),
);
?>