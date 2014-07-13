<?php
$module_name = 'sel_Selkirk_Client';
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
      'useTabs' => true,
      'tabDefs' => 
      array (
        'DEFAULT' => 
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL1' => 
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL2' => 
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL3' => 
        array (
          'newTab' => true,
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
          0 => 
          array (
            'name' => 'address_line_1',
            'label' => 'LBL_ADDRESS_LINE_1',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'address_line_2',
            'label' => 'LBL_ADDRESS_LINE_2',
          ),
        ),
        3 => 
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
        4 => 
        array (
          0 => 
          array (
            'name' => 'postal_code',
            'label' => 'LBL_POSTAL_CODE',
          ),
          1 => 
          array (
            'name' => 'country',
            'label' => 'LBL_COUNTRY',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'phone',
            'label' => 'LBL_PHONE',
          ),
          1 => 
          array (
            'name' => 'extension',
            'label' => 'LBL_EXTENSION',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'email',
            'label' => 'LBL_EMAIL',
          ),
          1 => 
          array (
            'name' => 'fax',
            'label' => 'LBL_FAX',
          ),
        ),
        7 => 
        array (
          0 => 
          array (
            'name' => 'primary_contact',
            'studio' => 'visible',
            'label' => 'LBL_PRIMARY_CONTACT',
          ),
          1 => 
          array (
            'name' => 'sekirk_client_type_01',
            'studio' => 'visible',
            'label' => 'LBL_SEKIRK_CLIENT_TYPE_01',
          ),
        ),
        8 => 
        array (
          0 => 
          array (
            'name' => 'website',
            'label' => 'LBL_WEBSITE',
          ),
        ),
        9 => 
        array (
          0 => 
          array (
            'name' => 'selkirk_naics_code',
            'label' => 'LBL_SELKIRK_NAICS_CODE',
          ),
          1 => '',
        ),
      ),
      'lbl_editview_panel1' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'legal_form_of_business',
            'studio' => 'visible',
            'label' => 'LBL_LEGAL_FORM_OF_BUSINESS',
          ),
          1 => 
          array (
            'name' => 'number_of_employees',
            'label' => 'LBL_NUMBER_OF_EMPLOYEES',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'selkirk_industry_sector',
            'studio' => 'visible',
            'label' => 'LBL_SELKIRK_INDUSTRY_SECTOR',
          ),
          1 => 
          array (
            'name' => 'years_in_business',
            'label' => 'LBL_YEARS_IN_BUSINESS',
          ),
        ),
      ),
      'lbl_editview_panel2' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'selkirk_organization_type',
            'studio' => 'visible',
            'label' => 'LBL_SELKIRK_ORGANIZATION_TYPE',
          ),
        ),
      ),
      'lbl_editview_panel3' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'selkirk_goverment_type',
            'studio' => 'visible',
            'label' => 'LBL_SELKIRK_GOVERMENT_TYPE',
          ),
        ),
      ),
    ),
  ),
);
?>
