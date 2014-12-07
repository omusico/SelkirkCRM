<?php /* Smarty version 2.6.11, created on 2014-12-07 06:07:58
         compiled from cache/modules/AOW_WorkFlow/sel_Selkirk_ServiceDetailViewselkirk_service_type.tpl */ ?>


<?php if (is_string ( $this->_tpl_vars['fields']['selkirk_service_type']['options'] )): ?>
<input type="hidden" class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['selkirk_service_type']['name']; ?>
" value="<?php echo $this->_tpl_vars['fields']['selkirk_service_type']['options']; ?>
">
<?php echo $this->_tpl_vars['fields']['selkirk_service_type']['options']; ?>

<?php else: ?>
<input type="hidden" class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['selkirk_service_type']['name']; ?>
" value="<?php echo $this->_tpl_vars['fields']['selkirk_service_type']['value']; ?>
">
<?php echo $this->_tpl_vars['fields']['selkirk_service_type']['options'][$this->_tpl_vars['fields']['selkirk_service_type']['value']]; ?>

<?php endif; ?>