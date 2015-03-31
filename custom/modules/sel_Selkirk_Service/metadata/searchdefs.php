<?php
$module_name = 'sel_Selkirk_Service';
$searchdefs [$module_name] = 
array (
  'layout' => 
  array (
    'basic_search' => 
    array (
      'current_user_only' => 
      array (
        'name' => 'current_user_only',
        'label' => 'LBL_CURRENT_USER_FILTER',
        'type' => 'bool',
        'default' => true,
        'width' => '10%',
      ),
      'assigned_user_name' => 
      array (
        'link' => true,
        'type' => 'relate',
        'label' => 'LBL_ASSIGNED_TO_NAME',
        'id' => 'ASSIGNED_USER_ID',
        'width' => '10%',
        'default' => true,
        'name' => 'assigned_user_name',
      ),
      'sel_selkirk_project_sel_selkirk_service_name' => 
      array (
        'type' => 'relate',
        'link' => true,
        'label' => 'LBL_SEL_SELKIRK_PROJECT_SEL_SELKIRK_SERVICE_FROM_SEL_SELKIRK_PROJECT_TITLE',
        'id' => 'SEL_SELKIRK_PROJECT_SEL_SELKIRK_SERVICESEL_SELKIRK_PROJECT_IDA',
        'width' => '10%',
        'default' => true,
        'name' => 'sel_selkirk_project_sel_selkirk_service_name',
      ),
      'sel_selkirk_client_sel_selkirk_service_name' => 
      array (
        'type' => 'relate',
        'link' => true,
        'label' => 'LBL_SEL_SELKIRK_CLIENT_SEL_SELKIRK_SERVICE_FROM_SEL_SELKIRK_CLIENT_TITLE',
        'id' => 'SEL_SELKIRK_CLIENT_SEL_SELKIRK_SERVICESEL_SELKIRK_CLIENT_IDA',
        'width' => '10%',
        'default' => true,
        'name' => 'sel_selkirk_client_sel_selkirk_service_name',
      ),
    ),
    'advanced_search' => 
    array (
      'current_user_only' => 
      array (
        'label' => 'LBL_CURRENT_USER_FILTER',
        'type' => 'bool',
        'default' => true,
        'width' => '10%',
        'name' => 'current_user_only',
      ),
      'assigned_user_name' => 
      array (
        'link' => true,
        'type' => 'relate',
        'label' => 'LBL_ASSIGNED_TO_NAME',
        'width' => '10%',
        'default' => true,
        'id' => 'ASSIGNED_USER_ID',
        'name' => 'assigned_user_name',
      ),
      'sel_selkirk_project_sel_selkirk_service_name' => 
      array (
        'type' => 'relate',
        'link' => true,
        'label' => 'LBL_SEL_SELKIRK_PROJECT_SEL_SELKIRK_SERVICE_FROM_SEL_SELKIRK_PROJECT_TITLE',
        'width' => '10%',
        'default' => true,
        'id' => 'SEL_SELKIRK_PROJECT_SEL_SELKIRK_SERVICESEL_SELKIRK_PROJECT_IDA',
        'name' => 'sel_selkirk_project_sel_selkirk_service_name',
      ),
      'sel_selkirk_client_sel_selkirk_service_name' => 
      array (
        'type' => 'relate',
        'link' => true,
        'label' => 'LBL_SEL_SELKIRK_CLIENT_SEL_SELKIRK_SERVICE_FROM_SEL_SELKIRK_CLIENT_TITLE',
        'width' => '10%',
        'default' => true,
        'id' => 'SEL_SELKIRK_CLIENT_SEL_SELKIRK_SERVICESEL_SELKIRK_CLIENT_IDA',
        'name' => 'sel_selkirk_client_sel_selkirk_service_name',
      ),
    ),
  ),
  'templateMeta' => 
  array (
    'maxColumns' => '3',
    'maxColumnsBasic' => '4',
    'widths' => 
    array (
      'label' => '10',
      'field' => '30',
    ),
  ),
);
?>
