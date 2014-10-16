<?php /* Smarty version 2.6.11, created on 2014-10-15 12:47:39
         compiled from cache/modules/AOW_WorkFlow/sel_Selkirk_ServiceDetailViewduration.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'sugar_number_format', 'cache/modules/AOW_WorkFlow/sel_Selkirk_ServiceDetailViewduration.tpl', 3, false),)), $this); ?>

<span class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['duration']['name']; ?>
">
<?php echo smarty_function_sugar_number_format(array('var' => $this->_tpl_vars['fields']['duration']['value']), $this);?>

</span>