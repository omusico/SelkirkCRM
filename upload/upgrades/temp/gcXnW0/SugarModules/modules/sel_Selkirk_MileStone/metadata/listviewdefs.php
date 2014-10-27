<?php
$module_name = 'sel_Selkirk_MileStone';
$listViewDefs [$module_name] = 
array (
  'NAME' => 
  array (
    'width' => '10%',
    'label' => 'LBL_NAME',
    'default' => true,
    'link' => true,
  ),
  'MILESTONE_DATE' => 
  array (
    'type' => 'date',
    'label' => 'LBL_MILESTONE_DATE',
    'width' => '10%',
    'default' => true,
  ),
  'NOTIFCATION_SENT' => 
  array (
    'type' => 'date',
    'label' => 'LBL_NOTIFCATION_SENT',
    'width' => '10%',
    'default' => true,
  ),
  'SEL_SELKIRK_PROJECT_SEL_SELKIRK_MILESTONE_NAME' => 
  array (
    'type' => 'relate',
    'link' => true,
    'label' => 'LBL_SEL_SELKIRK_PROJECT_SEL_SELKIRK_MILESTONE_FROM_SEL_SELKIRK_PROJECT_TITLE',
    'id' => 'SEL_SELKIRK_PROJECT_SEL_SELKIRK_MILESTONESEL_SELKIRK_PROJECT_IDA',
    'width' => '10%',
    'default' => true,
  ),
);
?>
