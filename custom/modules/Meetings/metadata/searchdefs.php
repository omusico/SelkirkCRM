<?php
// created: 2014-12-07 13:58:36
$searchdefs['Meetings'] = array (
  'layout' => 
  array (
    'basic_search' => 
    array (
      0 => 
      array (
        'name' => 'collection',
        'label' => 'LBL_COLLECTION_TYPE',
        'type' => 'enum',
        'default' => true,
        'width' => '10%',
      ),
      1 => 
      array (
        'name' => 'name',
        'default' => true,
        'width' => '10%',
      ),
      2 => 
      array (
        'type' => 'datetime',
        'label' => 'LBL_DATE_MODIFIED',
        'name' => 'date_modified',
        'default' => true,
        'width' => '10%',
      ),
      3 => 
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
      0 => 
      array (
        'name' => 'name',
        'default' => true,
        'width' => '10%',
      ),
      1 => 
      array (
        'type' => 'parent',
        'label' => 'LBL_LIST_RELATED_TO',
        'width' => '10%',
        'default' => true,
        'name' => 'parent_name',
      ),
      2 => 
      array (
        'name' => 'current_user_only',
        'label' => 'LBL_CURRENT_USER_FILTER',
        'type' => 'bool',
        'default' => true,
        'width' => '10%',
      ),
      3 => 
      array (
        'name' => 'status',
        'default' => true,
        'width' => '10%',
      ),
      4 => 
      array (
        'name' => 'assigned_user_id',
        'type' => 'enum',
        'label' => 'LBL_ASSIGNED_TO',
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