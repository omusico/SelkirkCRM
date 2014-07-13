<?php
$module_name = 'sel_Selkirk_Contact';
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
            'name' => 'title',
            'label' => 'LBL_TITLE',
          ),
          1 => '',
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'first_name',
            'label' => 'LBL_FIRST_NAME',
          ),
          1 => 'name',
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'office_phone',
            'label' => 'LBL_OFFICE_PHONE',
          ),
          1 => 
          array (
            'name' => 'cell_phone',
            'label' => 'LBL_CELL_PHONE',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'fax',
            'label' => 'LBL_FAX',
          ),
          1 => 
          array (
            'name' => 'email',
            'label' => 'LBL_EMAIL',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'address_line_1',
            'label' => 'LBL_ADDRESS_LINE_1',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'address_line_2',
            'label' => 'LBL_ADDRESS_LINE_2',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'city',
            'label' => 'LBL_CITY',
          ),
          1 => 
          array (
            'name' => 'province',
            'label' => 'LBL_PROVINCE',
          ),
        ),
        7 => 
        array (
          0 => 
          array (
            'name' => 'postal_code',
            'label' => 'LBL_POSTAL_CODE',
          ),
          1 => '',
        ),
        8 => 
        array (
          0 => 'description',
        ),
      ),
    ),
  ),
);
?>
