<?php /* Smarty version 2.6.11, created on 2014-06-25 08:56:49
         compiled from cache/modules/Import/sel_Selkirk_Contactdescription.tpl */ ?>

<?php if (empty ( $this->_tpl_vars['fields']['description']['value'] )):  $this->assign('value', $this->_tpl_vars['fields']['description']['default_value']);  else:  $this->assign('value', $this->_tpl_vars['fields']['description']['value']);  endif; ?>  




<textarea  id='<?php echo $this->_tpl_vars['fields']['description']['name']; ?>
' name='<?php echo $this->_tpl_vars['fields']['description']['name']; ?>
'
rows="6" 
cols="80" 
title='' tabindex="1" 
 ><?php echo $this->_tpl_vars['value']; ?>
</textarea>

