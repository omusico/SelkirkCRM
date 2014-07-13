<?php
$module_name = 'sel_Selkirk_Partner';
$searchdefs [$module_name] = 
array (
  'layout' => 
  array (
    'basic_search' => 
    array (
      'partner' => 
      array (
        'type' => 'relate',
        'studio' => 'visible',
        'label' => 'LBL_PARTNER',
        'id' => '',
        'link' => true,
        'width' => '10%',
        'default' => true,
        'name' => 'partner',
      ),
      'current_user_only' => 
      array (
        'name' => 'current_user_only',
        'label' => 'LBL_CURRENT_USER_FILTER',
        'type' => 'bool',
        'default' => true,
        'width' => '10%',
      ),
    ),
    'advanced_search' => 
    array (
      'partner' => 
      array (
        'type' => 'relate',
        'studio' => 'visible',
        'label' => 'LBL_PARTNER',
        'link' => true,
        'width' => '10%',
        'default' => true,
        'id' => '',
        'name' => 'partner',
      ),
      'assigned_user_id' => 
      array (
        'name' => 'assigned_user_id',
        'label' => 'LBL_ASSIGNED_TO',
        'type' => 'enum',
        'function' => 
        array (
          'name' => 'get_user_array',
          'params' => 
          array (
            0 => false,
          ),
        ),
        'default' => true,
        'width' => '10%',
      ),
    ),
  ),
  'templateMeta' => 
  array (
    'maxColumns' => '3',
    'maxColumnsBasic' => '4',
    'widths' => 
    array (
      'label' => '10',
      'field' => '30',
    ),
  ),
);
?>
