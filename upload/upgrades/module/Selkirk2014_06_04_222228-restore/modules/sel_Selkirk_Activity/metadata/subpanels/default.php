<?php
$module_name='sel_Selkirk_Activity';
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
      'popup_module' => 'sel_Selkirk_Activity',
    ),
  ),
  'where' => '',
  'list_fields' => 
  array (
    'name' => 
    array (
      'type' => 'name',
      'link' => true,
      'width' => '45%',
      'vname' => 'LBL_NAME',
      'default' => true,
      'widget_class' => 'SubPanelDetailViewLink',
      'target_module' => NULL,
      'target_record_key' => NULL,
    ),
    'contacted_by' => 
    array (
      'type' => 'relate',
      'studio' => 'visible',
      'vname' => 'LBL_CONTACTED_BY',
      'id' => 'USER_ID_C',
      'link' => true,
      'width' => '10%',
      'default' => true,
      'widget_class' => 'SubPanelDetailViewLink',
      'target_module' => 'Users',
      'target_record_key' => 'user_id_c',
    ),
    'contact_date' => 
    array (
      'type' => 'date',
      'vname' => 'LBL_CONTACT_DATE',
      'width' => '10%',
      'default' => true,
    ),
    'description' => 
    array (
      'type' => 'text',
      'vname' => 'LBL_DESCRIPTION',
      'sortable' => false,
      'width' => '10%',
      'default' => true,
    ),
    'edit_button' => 
    array (
      'vname' => 'LBL_EDIT_BUTTON',
      'widget_class' => 'SubPanelEditButton',
      'module' => 'sel_Selkirk_Activity',
      'width' => '4%',
      'default' => true,
    ),
    'remove_button' => 
    array (
      'vname' => 'LBL_REMOVE',
      'widget_class' => 'SubPanelRemoveButton',
      'module' => 'sel_Selkirk_Activity',
      'width' => '5%',
      'default' => true,
    ),
  ),
);