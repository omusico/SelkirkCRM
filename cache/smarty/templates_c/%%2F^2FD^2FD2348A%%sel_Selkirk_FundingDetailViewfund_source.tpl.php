<?php /* Smarty version 2.6.11, created on 2014-12-07 06:07:01
         compiled from cache/modules/AOW_WorkFlow/sel_Selkirk_FundingDetailViewfund_source.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'sugar_ajax_url', 'cache/modules/AOW_WorkFlow/sel_Selkirk_FundingDetailViewfund_source.tpl', 5, false),)), $this); ?>

 
<?php if (! empty ( $this->_tpl_vars['fields']['sel_selkirk_client_id_c']['value'] )):  ob_start(); ?>index.php?module=sel_Selkirk_Client&action=DetailView&record=<?php echo $this->_tpl_vars['fields']['sel_selkirk_client_id_c']['value'];  $this->_smarty_vars['capture']['default'] = ob_get_contents();  $this->assign('detail_url', ob_get_contents());ob_end_clean(); ?>
<a href="<?php echo smarty_function_sugar_ajax_url(array('url' => $this->_tpl_vars['detail_url']), $this);?>
"><?php endif; ?>
<span id="sel_selkirk_client_id_c" class="sugar_field" data-id-value="<?php echo $this->_tpl_vars['fields']['sel_selkirk_client_id_c']['value']; ?>
"><?php echo $this->_tpl_vars['fields']['fund_source']['value']; ?>
</span>
<?php if (! empty ( $this->_tpl_vars['fields']['sel_selkirk_client_id_c']['value'] )): ?></a><?php endif; ?>