<?php
$popupMeta = array (
    'moduleMain' => 'sel_Selkirk_Service',
    'varName' => 'sel_Selkirk_Service',
    'orderBy' => 'sel_selkirk_service.name',
    'whereClauses' => array (
  'name' => 'sel_selkirk_service.name',
  'client' => 'sel_selkirk_service.client',
  'assigned_user_name' => 'sel_selkirk_service.assigned_user_name',
),
    'searchInputs' => array (
  1 => 'name',
  4 => 'client',
  5 => 'assigned_user_name',
),
    'searchdefs' => array (
  'name' => 
  array (
    'type' => 'name',
    'link' => true,
    'label' => 'LBL_NAME',
    'width' => '10%',
    'name' => 'name',
  ),
  'client' => 
  array (
    'type' => 'relate',
    'studio' => 'visible',
    'label' => 'LBL_CLIENT',
    'id' => 'SEL_SELKIRK_CLIENT_ID_C',
    'link' => true,
    'width' => '10%',
    'name' => 'client',
  ),
  'assigned_user_name' => 
  array (
    'link' => true,
    'type' => 'relate',
    'label' => 'LBL_ASSIGNED_TO_NAME',
    'id' => 'ASSIGNED_USER_ID',
    'width' => '10%',
    'name' => 'assigned_user_name',
  ),
),
    'listviewdefs' => array (
  'NAME' => 
  array (
    'type' => 'name',
    'link' => true,
    'label' => 'LBL_NAME',
    'width' => '10%',
    'default' => true,
  ),
  'SELKIRK_SERVICE_STATUS' => 
  array (
    'type' => 'enum',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_SELKIRK_SERVICE_STATUS',
    'width' => '10%',
  ),
  'DURATION' => 
  array (
    'type' => 'float',
    'default' => true,
    'label' => 'LBL_DURATION',
    'width' => '10%',
  ),
  'ASSIGNED_USER_NAME' => 
  array (
    'link' => true,
    'type' => 'relate',
    'label' => 'LBL_ASSIGNED_TO_NAME',
    'id' => 'ASSIGNED_USER_ID',
    'width' => '10%',
    'default' => true,
  ),
),
);
