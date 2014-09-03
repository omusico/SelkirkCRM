<?php
 // created: 2014-09-02 10:15:36
$layout_defs["sel_Selkirk_Business_Case"]["subpanel_setup"]['sel_selkirk_business_case_sel_selkirk_document'] = array (
  'order' => 100,
  'module' => 'sel_Selkirk_Document',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_SEL_SELKIRK_BUSINESS_CASE_SEL_SELKIRK_DOCUMENT_FROM_SEL_SELKIRK_DOCUMENT_TITLE',
  'get_subpanel_data' => 'sel_selkirk_business_case_sel_selkirk_document',
  'top_buttons' => 
  array (
    0 => 
    array (
      'widget_class' => 'SubPanelTopButtonQuickCreate',
    ),
    1 => 
    array (
      'widget_class' => 'SubPanelTopSelectButton',
      'mode' => 'MultiSelect',
    ),
  ),
);
