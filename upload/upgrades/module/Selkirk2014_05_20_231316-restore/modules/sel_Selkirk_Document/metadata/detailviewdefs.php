<?php
$module_name = 'sel_Selkirk_Document';
$_object_name = 'sel_selkirk_document';
$viewdefs [$module_name] = 
array (
  'DetailView' => 
  array (
    'templateMeta' => 
    array (
      'maxColumns' => '2',
      'form' => 
      array (
      ),
      'widths' => 
      array (
        0 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
        1 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
      ),
    ),
    'panels' => 
    array (
      'default' => 
      array (
        0 => 
        array (
          0 => 'document_name',
          1 => 'uploadfile',
        ),
        1 => 
        array (
          0 => 'category_id',
          1 => 'subcategory_id',
        ),
        2 => 
        array (
          0 => 'status',
        ),
        3 => 
        array (
          0 => 'active_date',
          1 => 'exp_date',
        ),
        4 => 
        array (
          0 => 'assigned_user_name',
        ),
        5 => 
        array (
          0 => 'description',
          1 => 
          array (
            'name' => 'sel_selkirk_client_sel_selkirk_document_name',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'sel_selkirk_project_sel_selkirk_document_name',
          ),
        ),
      ),
    ),
  ),
);
?>
