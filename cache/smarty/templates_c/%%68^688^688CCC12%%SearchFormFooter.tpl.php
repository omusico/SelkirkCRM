<?php /* Smarty version 2.6.11, created on 2014-07-17 15:49:52
         compiled from cache/modules/sel_Selkirk_Client/SearchFormFooter.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'sugar_getimagepath', 'cache/modules/sel_Selkirk_Client/SearchFormFooter.tpl', 11, false),array('function', 'sugar_translate', 'cache/modules/sel_Selkirk_Client/SearchFormFooter.tpl', 12, false),)), $this); ?>

</form>
<?php echo '
<script>
function toggleInlineSearch()
{
    if (document.getElementById(\'inlineSavedSearch\').style.display == \'none\'){
        document.getElementById(\'showSSDIV\').value = \'yes\'		
        document.getElementById(\'inlineSavedSearch\').style.display = \'\';
'; ?>

        document.getElementById('up_down_img').src='<?php echo smarty_function_sugar_getimagepath(array('file' => "basic_search.gif"), $this);?>
';
        document.getElementById('up_down_img').setAttribute('alt',"<?php echo smarty_function_sugar_translate(array('label' => 'LBL_ALT_HIDE_OPTIONS'), $this);?>
");
<?php echo '
    }else{
'; ?>

        document.getElementById('up_down_img').src='<?php echo smarty_function_sugar_getimagepath(array('file' => "advanced_search.gif"), $this);?>
';
        document.getElementById('up_down_img').setAttribute('alt',"<?php echo smarty_function_sugar_translate(array('label' => 'LBL_ALT_SHOW_OPTIONS'), $this);?>
");
<?php echo '			
        document.getElementById(\'showSSDIV\').value = \'no\';		
        document.getElementById(\'inlineSavedSearch\').style.display = \'none\';		
    }
}
</script>
'; ?>