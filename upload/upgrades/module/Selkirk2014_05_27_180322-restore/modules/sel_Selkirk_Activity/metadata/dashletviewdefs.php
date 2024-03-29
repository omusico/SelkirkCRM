<?php
$dashletData['sel_Selkirk_ActivityDashlet']['searchFields'] = array (
  'assigned_user_name' => 
  array (
    'default' => '',
  ),
  'contact_date' => 
  array (
    'default' => '',
  ),
  'description' => 
  array (
    'default' => '',
  ),
);
$dashletData['sel_Selkirk_ActivityDashlet']['columns'] = array (
  'assigned_user_name' => 
  array (
    'width' => '8%',
    'label' => 'LBL_LIST_ASSIGNED_USER',
    'name' => 'assigned_user_name',
    'default' => true,
  ),
  'contact_date' => 
  array (
    'type' => 'date',
    'label' => 'LBL_CONTACT_DATE',
    'width' => '10%',
    'default' => true,
  ),
  'description' => 
  array (
    'type' => 'text',
    'label' => 'LBL_DESCRIPTION',
    'sortable' => false,
    'width' => '10%',
    'default' => true,
  ),
  'sel_selkirk_client_sel_selkirk_activity_name' => 
  array (
    'type' => 'relate',
    'link' => true,
    'label' => 'LBL_SEL_SELKIRK_CLIENT_SEL_SELKIRK_ACTIVITY_FROM_SEL_SELKIRK_CLIENT_TITLE',
    'id' => 'SEL_SELKIRK_CLIENT_SEL_SELKIRK_ACTIVITYSEL_SELKIRK_CLIENT_IDA',
    'width' => '10%',
    'default' => true,
  ),
);
