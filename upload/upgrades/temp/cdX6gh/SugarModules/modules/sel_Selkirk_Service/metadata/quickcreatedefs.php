<?php
$module_name = 'sel_Selkirk_Service';
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
          0 => 
          array (
            'name' => 'selkirk_service_type',
            'studio' => 'visible',
            'label' => 'LBL_SELKIRK_SERVICE_TYPE',
          ),
          1 => 'name',
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'service_category',
            'studio' => 'visible',
            'label' => 'LBL_SERVICE_CATEGORY',
          ),
          1 => 
          array (
            'name' => 'selkirk_service_status',
            'studio' => 'visible',
            'label' => 'LBL_SELKIRK_SERVICE_STATUS',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'sel_selkirk_client_sel_selkirk_service_name',
            'label' => 'LBL_SEL_SELKIRK_CLIENT_SEL_SELKIRK_SERVICE_FROM_SEL_SELKIRK_CLIENT_TITLE',
          ),
          1 => 
          array (
            'name' => 'sel_selkirk_project_sel_selkirk_service_name',
            'label' => 'LBL_SEL_SELKIRK_PROJECT_SEL_SELKIRK_SERVICE_FROM_SEL_SELKIRK_PROJECT_TITLE',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'start_date',
            'label' => 'LBL_START_DATE',
          ),
          1 => 
          array (
            'name' => 'duration',
            'label' => 'LBL_DURATION',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'end_date',
            'label' => 'LBL_END_DATE',
          ),
          1 => 'assigned_user_name',
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'description',
            'comment' => 'Full text of the note',
            'studio' => 'visible',
            'label' => 'LBL_DESCRIPTION',
          ),
        ),
      ),
    ),
  ),
);
?>
