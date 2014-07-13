<?php
$module_name='sel_Selkirk_Partner';
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
      'popup_module' => 'sel_Selkirk_Partner',
    ),
  ),
  'where' => '',
  'list_fields' => 
  array (
    'partner' => 
    array (
      'type' => 'relate',
      'studio' => 'visible',
      'vname' => 'LBL_PARTNER',
      'id' => '',
      'link' => true,
      'width' => '10%',
      'default' => true,
      'widget_class' => 'SubPanelDetailViewLink',
      'target_module' => 'sel_Selkirk_Client',
      'target_record_key' => '',
    ),
    'description' => 
    array (
      'type' => 'text',
      'vname' => 'LBL_DESCRIPTION',
      'sortable' => false,
      'width' => '10%',
      'default' => true,
    ),
    'contribution' => 
    array (
      'type' => 'currency',
      'default' => true,
      'vname' => 'LBL_CONTRIBUTION',
      'currency_format' => true,
      'width' => '10%',
    ),
    'edit_button' => 
    array (
      'vname' => 'LBL_EDIT_BUTTON',
      'widget_class' => 'SubPanelEditButton',
      'module' => 'sel_Selkirk_Partner',
      'width' => '4%',
      'default' => true,
    ),
    'remove_button' => 
    array (
      'vname' => 'LBL_REMOVE',
      'widget_class' => 'SubPanelRemoveButton',
      'module' => 'sel_Selkirk_Partner',
      'width' => '5%',
      'default' => true,
    ),
  ),
);