<?php /* Smarty version 2.6.11, created on 2014-06-25 08:56:49
         compiled from cache/modules/Import/sel_Selkirk_Contactfax.tpl */ ?>

<?php if (strlen ( $this->_tpl_vars['fields']['fax']['value'] ) <= 0):  $this->assign('value', $this->_tpl_vars['fields']['fax']['default_value']);  else:  $this->assign('value', $this->_tpl_vars['fields']['fax']['value']);  endif; ?>  
<input type='text' name='<?php echo $this->_tpl_vars['fields']['fax']['name']; ?>
' 
    id='<?php echo $this->_tpl_vars['fields']['fax']['name']; ?>
' size='30' 
    maxlength='20' 
    value='<?php echo $this->_tpl_vars['value']; ?>
' title=''  tabindex='1'      >