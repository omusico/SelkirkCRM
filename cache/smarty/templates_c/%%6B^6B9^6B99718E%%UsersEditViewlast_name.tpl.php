<?php /* Smarty version 2.6.11, created on 2015-03-26 13:05:15
         compiled from cache/modules/AOW_WorkFlow/UsersEditViewlast_name.tpl */ ?>

<?php if (strlen ( $this->_tpl_vars['fields']['last_name']['value'] ) <= 0):  $this->assign('value', $this->_tpl_vars['fields']['last_name']['default_value']);  else:  $this->assign('value', $this->_tpl_vars['fields']['last_name']['value']);  endif; ?>  
<input type='text' name='<?php echo $this->_tpl_vars['fields']['last_name']['name']; ?>
' 
    id='<?php echo $this->_tpl_vars['fields']['last_name']['name']; ?>
' size='30' 
    maxlength='30' 
    value='<?php echo $this->_tpl_vars['value']; ?>
' title=''  tabindex='1'      >