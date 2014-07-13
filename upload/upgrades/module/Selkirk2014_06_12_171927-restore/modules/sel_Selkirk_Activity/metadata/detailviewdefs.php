<?php
$module_name = 'sel_Selkirk_Activity';
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
          0 => 
          array (
            'name' => 'name',
            'label' => 'LBL_NAME',
          ),
          1 => 
          array (
            'name' => 'contact_date',
            'label' => 'LBL_CONTACT_DATE',
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
            'name' => 'contacted_by',
            'studio' => 'visible',
            'label' => 'LBL_CONTACTED_BY',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'sel_selkirk_contact_sel_selkirk_activity_name',
          ),
          1 => 
          array (
            'name' => 'sel_selkirk_client_sel_selkirk_activity_name',
          ),
        ),
      ),
    ),
  ),
);
?>
