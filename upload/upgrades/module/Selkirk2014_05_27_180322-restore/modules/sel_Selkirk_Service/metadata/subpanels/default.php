<?php
$module_name='sel_Selkirk_Service';
$subpanel_layout = array (
  'top_buttons' => 
  array (
    0 => 
    array (
      'widget_class' => 'SubPanelTopCreateButton',
    ),
    1 => 
    array (
      'widget_class' => 'SubPanelTopSelectButton',
      'popup_module' => 'sel_Selkirk_Service',
    ),
  ),
  'where' => '',
  'list_fields' => 
  array (
    'name' => 
    array (
      'vname' => 'LBL_NAME',
      'widget_class' => 'SubPanelDetailViewLink',
      'width' => '45%',
      'default' => true,
    ),
    'client' => 
    array (
      'type' => 'relate',
      'studio' => 'visible',
      'vname' => 'LBL_CLIENT',
      'id' => 'SEL_SELKIRK_CLIENT_ID_C',
      'link' => true,
      'width' => '10%',
      'default' => true,
      'widget_class' => 'SubPanelDetailViewLink',
      'target_module' => 'sel_Selkirk_Client',
      'target_record_key' => 'sel_selkirk_client_id_c',
    ),
    'start_date' => 
    array (
      'type' => 'date',
      'vname' => 'LBL_START_DATE',
      'width' => '10%',
      'default' => true,
    ),
    'end_date' => 
    array (
      'type' => 'date',
      'vname' => 'LBL_END_DATE',
      'width' => '10%',
      'default' => true,
    ),
    'selkirk_service_type' => 
    array (
      'type' => 'enum',
      'default' => true,
      'studio' => 'visible',
      'vname' => 'LBL_SELKIRK_SERVICE_TYPE',
      'width' => '10%',
    ),
    'assigned_user_name' => 
    array (
      'link' => true,
      'type' => 'relate',
      'vname' => 'LBL_ASSIGNED_TO_NAME',
      'id' => 'ASSIGNED_USER_ID',
      'width' => '10%',
      'default' => true,
      'widget_class' => 'SubPanelDetailViewLink',
      'target_module' => 'Users',
      'target_record_key' => 'assigned_user_id',
    ),
    'selkirk_service_status' => 
    array (
      'type' => 'enum',
      'default' => true,
      'studio' => 'visible',
      'vname' => 'LBL_SELKIRK_SERVICE_STATUS',
      'width' => '10%',
    ),
    'duration' => 
    array (
      'type' => 'float',
      'default' => true,
      'vname' => 'LBL_DURATION',
      'width' => '10%',
    ),
    'edit_button' => 
    array (
      'vname' => 'LBL_EDIT_BUTTON',
      'widget_class' => 'SubPanelEditButton',
      'module' => 'sel_Selkirk_Service',
      'width' => '4%',
      'default' => true,
    ),
    'remove_button' => 
    array (
      'vname' => 'LBL_REMOVE',
      'widget_class' => 'SubPanelRemoveButton',
      'module' => 'sel_Selkirk_Service',
      'width' => '5%',
      'default' => true,
    ),
  ),
);