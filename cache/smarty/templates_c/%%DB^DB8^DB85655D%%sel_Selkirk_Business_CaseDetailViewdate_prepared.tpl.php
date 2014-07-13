<?php /* Smarty version 2.6.11, created on 2014-07-07 16:03:39
         compiled from cache/modules/AOW_WorkFlow/sel_Selkirk_Business_CaseDetailViewdate_prepared.tpl */ ?>


    <?php if (strlen ( $this->_tpl_vars['fields']['date_prepared']['value'] ) <= 0): ?>
        <?php $this->assign('value', $this->_tpl_vars['fields']['date_prepared']['default_value']); ?>
    <?php else: ?>
        <?php $this->assign('value', $this->_tpl_vars['fields']['date_prepared']['value']); ?>
    <?php endif; ?>



<span class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['date_prepared']['name']; ?>
"><?php echo $this->_tpl_vars['value']; ?>
</span>