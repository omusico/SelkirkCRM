<?php
$popupMeta = array (
    'moduleMain' => 'sel_Selkirk_Partner',
    'varName' => 'sel_Selkirk_Partner',
    'orderBy' => 'sel_selkirk_partner.name',
    'whereClauses' => array (
  'partner' => 'sel_selkirk_partner.partner',
),
    'searchInputs' => array (
  4 => 'partner',
),
    'searchdefs' => array (
  'partner' => 
  array (
    'type' => 'relate',
    'studio' => 'visible',
    'label' => 'LBL_PARTNER',
    'id' => 'SEL_SELKIRK_CLIENT_ID_C',
    'link' => true,
    'width' => '10%',
    'name' => 'partner',
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
),
);
