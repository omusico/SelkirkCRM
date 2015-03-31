<?php /* Smarty version 2.6.11, created on 2015-03-27 11:53:15
         compiled from cache/modules/AOW_WorkFlow/sel_Selkirk_ServiceDetailViewstart_date.tpl */ ?>


    <?php if (strlen ( $this->_tpl_vars['fields']['start_date']['value'] ) <= 0): ?>
        <?php $this->assign('value', $this->_tpl_vars['fields']['start_date']['default_value']); ?>
    <?php else: ?>
        <?php $this->assign('value', $this->_tpl_vars['fields']['start_date']['value']); ?>
    <?php endif; ?>



<span class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['start_date']['name']; ?>
"><?php echo $this->_tpl_vars['value']; ?>
</span>