<?php /* Smarty version 2.6.11, created on 2014-07-09 14:03:40
         compiled from modules/DynamicFields/templates/Fields/Forms/float.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'sugar_translate', 'modules/DynamicFields/templates/Fields/Forms/float.tpl', 46, false),array('modifier', 'default', 'modules/DynamicFields/templates/Fields/Forms/float.tpl', 63, false),)), $this); ?>


<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "modules/DynamicFields/templates/Fields/Forms/coreTop.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<tr>
	<td class='mbLBL'><?php echo smarty_function_sugar_translate(array('module' => 'DynamicFields','label' => 'COLUMN_TITLE_DEFAULT_VALUE'), $this);?>
:</td>
	<td>
	<?php if ($this->_tpl_vars['hideLevel'] < 5): ?>
		<input type='text' id='default' name='default' value='<?php echo $this->_tpl_vars['vardef']['default']; ?>
'>
		<script>
		addToValidate('popup_form', 'default', 'float', false,'<?php echo smarty_function_sugar_translate(array('module' => 'DynamicFields','label' => 'COLUMN_TITLE_DEFAULT_VALUE'), $this);?>
' );
		formWithPrecision = new addToValidatePrecision('popup_form_id', 'default', 'precision');
		</script>
	<?php else: ?>
		<input type='hidden' name='default' id='default' value='<?php echo $this->_tpl_vars['vardef']['default']; ?>
'><?php echo $this->_tpl_vars['vardef']['default']; ?>

	<?php endif; ?>
	</td>
</tr>
<tr>
	<td class='mbLBL'><?php echo smarty_function_sugar_translate(array('module' => 'DynamicFields','label' => 'COLUMN_TITLE_MAX_SIZE'), $this);?>
:</td>
	<td>
	<?php if ($this->_tpl_vars['hideLevel'] < 5): ?>
		<input type='text' name='len' value='<?php echo ((is_array($_tmp=@$this->_tpl_vars['vardef']['len'])) ? $this->_run_mod_handler('default', true, $_tmp, 18) : smarty_modifier_default($_tmp, 18)); ?>
'></td>
		<script>addToValidate('popup_form', 'len', 'int', false,'<?php echo smarty_function_sugar_translate(array('module' => 'DynamicFields','label' => 'COLUMN_TITLE_MAX_SIZE'), $this);?>
' );</script>
	<?php else: ?>
		<input type='hidden' name='len' value='<?php echo $this->_tpl_vars['vardef']['len']; ?>
'><?php echo $this->_tpl_vars['vardef']['len']; ?>

	<?php endif; ?>
	</td>
</tr>
<?php if ($this->_tpl_vars['range_search_option_enabled']): ?>
<tr>	
    <td class='mbLBL'><?php echo smarty_function_sugar_translate(array('module' => 'DynamicFields','label' => 'COLUMN_TITLE_ENABLE_RANGE_SEARCH'), $this);?>
:</td>
    <td>
        <input type='checkbox' name='enable_range_search' value=1 <?php if (! empty ( $this->_tpl_vars['vardef']['enable_range_search'] )): ?>checked<?php endif; ?> <?php if ($this->_tpl_vars['hideLevel'] > 5): ?>disabled<?php endif; ?> />
        <?php if ($this->_tpl_vars['hideLevel'] > 5): ?><input type='hidden' name='enable_range_search' value='<?php echo $this->_tpl_vars['vardef']['enable_range_search']; ?>
'><?php endif; ?>
    </td>	
</tr>
<?php endif; ?>
<tr>
	<td class='mbLBL'><?php echo smarty_function_sugar_translate(array('module' => 'DynamicFields','label' => 'COLUMN_TITLE_PRECISION'), $this);?>
:</td>
	<td>
	<?php if ($this->_tpl_vars['hideLevel'] < 5): ?>
		<input type='text' id='precision' name='precision' value='<?php echo ((is_array($_tmp=@$this->_tpl_vars['vardef']['precision'])) ? $this->_run_mod_handler('default', true, $_tmp, 0) : smarty_modifier_default($_tmp, 0)); ?>
'>
		<script>addToValidate('popup_form', 'ext1', 'int', false,'<?php echo smarty_function_sugar_translate(array('module' => 'DynamicFields','label' => 'COLUMN_TITLE_PRECISION'), $this);?>
' );</script>
	<?php else: ?>
		<input type='hidden' name='precision' value='<?php echo $this->_tpl_vars['vardef']['precision']; ?>
'><?php echo $this->_tpl_vars['vardef']['precision']; ?>

	<?php endif; ?>
	</td>
</tr>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "modules/DynamicFields/templates/Fields/Forms/coreBottom.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>