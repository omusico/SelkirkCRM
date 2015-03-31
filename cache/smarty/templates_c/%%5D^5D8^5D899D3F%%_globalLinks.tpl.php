<?php /* Smarty version 2.6.11, created on 2015-03-27 10:42:23
         compiled from themes/Suite7/tpls/_globalLinks.tpl */ ?>

<div id="globalLinks">
        <ul id="drop-nav">
        <li> <a href="index.php?module=Users&action=EditView&record=<?php echo $this->_tpl_vars['CURRENT_USER_ID']; ?>
"><img src="index.php?entryPoint=getImage&imageName=cog.png" class="iconed"> <?php echo $this->_tpl_vars['CURRENT_USER']; ?>
</a>
            <ul>
                <?php $_from = $this->_tpl_vars['GCLS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['gcl'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['gcl']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['gcl_key'] => $this->_tpl_vars['GCL']):
        $this->_foreach['gcl']['iteration']++;
?>
                    <li>
                        <a id="<?php echo $this->_tpl_vars['gcl_key']; ?>
_link" href="<?php echo $this->_tpl_vars['GCL']['URL']; ?>
"<?php if (! empty ( $this->_tpl_vars['GCL']['ONCLICK'] )): ?> onclick="<?php echo $this->_tpl_vars['GCL']['ONCLICK']; ?>
"<?php endif; ?>><?php echo $this->_tpl_vars['GCL']['LABEL']; ?>
</a>
                    </li>
                <?php endforeach; endif; unset($_from); ?>
                <li><a id="logout_link" href='<?php echo $this->_tpl_vars['LOGOUT_LINK']; ?>
' class='utilsLink'><?php echo $this->_tpl_vars['LOGOUT_LABEL']; ?>
</a></li>
            </ul>

        </li>
    </ul>


</div>