<?php
$module_name = 'sel_Selkirk_Service';
$searchdefs [$module_name] = 
array (
  'layout' => 
  array (
    'basic_search' => 
    array (
      'name' => 
      array (
        'name' => 'name',
        'default' => true,
        'width' => '10%',
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
      'name' => 
      array (
        'name' => 'name',
        'default' => true,
        'width' => '10%',
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
