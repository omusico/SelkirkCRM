<?php
$module_name='sel_Selkirk_Client';
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
      'popup_module' => 'sel_Selkirk_Client',
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
    'phone' => 
    array (
      'type' => 'varchar',
      'vname' => 'LBL_PHONE',
      'width' => '10%',
      'default' => true,
    ),
    'city' => 
    array (
      'type' => 'varchar',
      'vname' => 'LBL_CITY',
      'width' => '10%',
      'default' => true,
    ),
    'primary_contact' => 
    array (
      'type' => 'relate',
      'studio' => 'visible',
      'vname' => 'LBL_PRIMARY_CONTACT',
      'id' => 'SEL_SELKIRK_CONTACT_ID_C',
      'link' => true,
      'width' => '10%',
      'default' => true,
      'widget_class' => 'SubPanelDetailViewLink',
      'target_module' => 'sel_Selkirk_Contact',
      'target_record_key' => 'sel_selkirk_contact_id_c',
    ),
    'edit_button' => 
    array (
      'vname' => 'LBL_EDIT_BUTTON',
      'widget_class' => 'SubPanelEditButton',
      'module' => 'sel_Selkirk_Client',
      'width' => '4%',
      'default' => true,
    ),
    'remove_button' => 
    array (
      'vname' => 'LBL_REMOVE',
      'widget_class' => 'SubPanelRemoveButton',
      'module' => 'sel_Selkirk_Client',
      'width' => '5%',
      'default' => true,
    ),
  ),
);