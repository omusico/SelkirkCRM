<?php
$dashletData['sel_Selkirk_ServiceDashlet']['searchFields'] = array (
  'date_entered' => 
  array (
    'default' => '',
  ),
  'date_modified' => 
  array (
    'default' => '',
  ),
  'assigned_user_id' => 
  array (
    'type' => 'assigned_user_name',
    'default' => 'Admin Administrator',
  ),
);
$dashletData['sel_Selkirk_ServiceDashlet']['columns'] = array (
  'name' => 
  array (
    'width' => '40%',
    'label' => 'LBL_LIST_NAME',
    'link' => true,
    'default' => true,
    'name' => 'name',
  ),
  'selkirk_service_type' => 
  array (
    'type' => 'enum',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_SELKIRK_SERVICE_TYPE',
    'width' => '10%',
    'name' => 'selkirk_service_type',
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
  'date_modified' => 
  array (
    'width' => '15%',
    'label' => 'LBL_DATE_MODIFIED',
    'name' => 'date_modified',
    'default' => false,
  ),
  'created_by' => 
  array (
    'width' => '8%',
    'label' => 'LBL_CREATED',
    'name' => 'created_by',
    'default' => false,
  ),
  'assigned_user_name' => 
  array (
    'width' => '8%',
    'label' => 'LBL_LIST_ASSIGNED_USER',
    'name' => 'assigned_user_name',
    'default' => false,
  ),
  'date_entered' => 
  array (
    'width' => '15%',
    'label' => 'LBL_DATE_ENTERED',
    'default' => false,
    'name' => 'date_entered',
  ),
  'service_category' => 
  array (
    'type' => 'enum',
    'default' => false,
    'studio' => 'visible',
    'label' => 'LBL_SERVICE_CATEGORY',
    'width' => '10%',
    'name' => 'service_category',
  ),
);
