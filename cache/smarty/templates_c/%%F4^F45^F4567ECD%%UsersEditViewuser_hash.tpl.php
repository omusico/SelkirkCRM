<?php /* Smarty version 2.6.11, created on 2015-03-26 11:37:20
         compiled from cache/modules/AOW_WorkFlow/UsersEditViewuser_hash.tpl */ ?>

<?php if (strlen ( $this->_tpl_vars['fields']['user_hash']['value'] ) <= 0):  $this->assign('value', $this->_tpl_vars['fields']['user_hash']['default_value']);  else:  $this->assign('value', $this->_tpl_vars['fields']['user_hash']['value']);  endif; ?>  
<input type='text' name='<?php echo $this->_tpl_vars['fields']['user_hash']['name']; ?>
' 
    id='<?php echo $this->_tpl_vars['fields']['user_hash']['name']; ?>
' size='30' 
    maxlength='255' 
    value='<?php echo $this->_tpl_vars['value']; ?>
' title=''  tabindex='1'      >