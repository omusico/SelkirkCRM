<?php
$module_name='sel_Selkirk_Project';
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
      'popup_module' => 'sel_Selkirk_Project',
    ),
  ),
  'where' => '',
  'list_fields' => 
  array (
    'name' => 
    array (
      'vname' => 'LBL_NAME',
      'widget_class' => 'SubPanelDetailViewLink',
      'width' => '10%',
      'default' => true,
    ),
    'assigned_user_name' => 
    array (
      'link' => true,
      'type' => 'relate',
      'studio' => 'visible',
      'vname' => 'LBL_ASSIGNED_TO_NAME',
      'id' => 'ASSIGNED_USER_ID',
      'width' => '10%',
      'default' => true,
      'widget_class' => 'SubPanelDetailViewLink',
      'target_module' => '',
      'target_record_key' => 'assigned_user_id',
    ),
    'department' => 
    array (
      'type' => 'relate',
      'studio' => 'visible',
      'vname' => 'LBL_DEPARTMENT',
      'id' => 'SEL_SELKIRK_CLIENT_ID_C',
      'link' => true,
      'width' => '10%',
      'default' => true,
      'widget_class' => 'SubPanelDetailViewLink',
      'target_module' => 'sel_Selkirk_Client',
      'target_record_key' => 'sel_selkirk_client_id_c',
    ),
    'project_type' => 
    array (
      'type' => 'enum',
      'default' => true,
      'studio' => 'visible',
      'vname' => 'LBL_PROJECT_TYPE',
      'width' => '10%',
    ),
    'status' => 
    array (
      'type' => 'enum',
      'default' => true,
      'studio' => 'visible',
      'vname' => 'LBL_STATUS',
      'width' => '10%',
    ),
    'edit_button' => 
    array (
      'vname' => 'LBL_EDIT_BUTTON',
      'widget_class' => 'SubPanelEditButton',
      'module' => 'sel_Selkirk_Project',
      'width' => '4%',
      'default' => true,
    ),
    'remove_button' => 
    array (
      'vname' => 'LBL_REMOVE',
      'widget_class' => 'SubPanelRemoveButton',
      'module' => 'sel_Selkirk_Project',
      'width' => '5%',
      'default' => true,
    ),
  ),
);