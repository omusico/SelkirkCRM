<?php
$module_name='sel_Selkirk_Funding';
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
      'popup_module' => 'sel_Selkirk_Funding',
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
    'fund_source' => 
    array (
      'type' => 'relate',
      'studio' => 'visible',
      'vname' => 'LBL_FUND_SOURCE',
      'id' => 'SEL_SELKIRK_CLIENT_ID_C',
      'link' => true,
      'width' => '10%',
      'default' => true,
      'widget_class' => 'SubPanelDetailViewLink',
      'target_module' => 'sel_Selkirk_Client',
      'target_record_key' => 'sel_selkirk_client_id_c',
    ),
    'funding_start_date' => 
    array (
      'type' => 'date',
      'vname' => 'LBL_FUNDING_START_DATE',
      'width' => '10%',
      'default' => true,
    ),
    'funding_end_date' => 
    array (
      'type' => 'date',
      'vname' => 'LBL_FUNDING_END_DATE',
      'width' => '10%',
      'default' => true,
    ),
    'amount' => 
    array (
      'type' => 'currency',
      'default' => true,
      'vname' => 'LBL_AMOUNT',
      'currency_format' => true,
      'width' => '10%',
    ),
    'edit_button' => 
    array (
      'vname' => 'LBL_EDIT_BUTTON',
      'widget_class' => 'SubPanelEditButton',
      'module' => 'sel_Selkirk_Funding',
      'width' => '4%',
      'default' => true,
    ),
    'remove_button' => 
    array (
      'vname' => 'LBL_REMOVE',
      'widget_class' => 'SubPanelRemoveButton',
      'module' => 'sel_Selkirk_Funding',
      'width' => '5%',
      'default' => true,
    ),
  ),
);