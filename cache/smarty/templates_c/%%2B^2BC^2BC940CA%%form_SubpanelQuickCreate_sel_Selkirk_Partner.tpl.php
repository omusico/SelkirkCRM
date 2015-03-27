<?php /* Smarty version 2.6.11, created on 2015-03-26 15:01:25
         compiled from cache/modules/sel_Selkirk_Partner/form_SubpanelQuickCreate_sel_Selkirk_Partner.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'sugar_include', 'cache/modules/sel_Selkirk_Partner/form_SubpanelQuickCreate_sel_Selkirk_Partner.tpl', 44, false),array('function', 'sugar_translate', 'cache/modules/sel_Selkirk_Partner/form_SubpanelQuickCreate_sel_Selkirk_Partner.tpl', 51, false),array('function', 'counter', 'cache/modules/sel_Selkirk_Partner/form_SubpanelQuickCreate_sel_Selkirk_Partner.tpl', 56, false),array('function', 'sugar_getimage', 'cache/modules/sel_Selkirk_Partner/form_SubpanelQuickCreate_sel_Selkirk_Partner.tpl', 101, false),array('function', 'sugar_number_format', 'cache/modules/sel_Selkirk_Partner/form_SubpanelQuickCreate_sel_Selkirk_Partner.tpl', 141, false),array('function', 'sugar_getimagepath', 'cache/modules/sel_Selkirk_Partner/form_SubpanelQuickCreate_sel_Selkirk_Partner.tpl', 203, false),array('function', 'sugar_getscript', 'cache/modules/sel_Selkirk_Partner/form_SubpanelQuickCreate_sel_Selkirk_Partner.tpl', 275, false),array('modifier', 'strip_semicolon', 'cache/modules/sel_Selkirk_Partner/form_SubpanelQuickCreate_sel_Selkirk_Partner.tpl', 63, false),array('modifier', 'default', 'cache/modules/sel_Selkirk_Partner/form_SubpanelQuickCreate_sel_Selkirk_Partner.tpl', 112, false),)), $this); ?>


<script>
<?php echo '
$(document).ready(function(){
$("ul.clickMenu").each(function(index, node){
$(node).sugarActionMenu();
});
});
'; ?>

</script>
<div class="clear"></div>
<form action="index.php" method="POST" name="<?php echo $this->_tpl_vars['form_name']; ?>
" id="<?php echo $this->_tpl_vars['form_id']; ?>
" <?php echo $this->_tpl_vars['enctype']; ?>
>
<table width="100%" cellpadding="0" cellspacing="0" border="0" class="dcQuickEdit">
<tr>
<td class="buttons">
<input type="hidden" name="module" value="<?php echo $this->_tpl_vars['module']; ?>
">
<?php if (isset ( $_REQUEST['isDuplicate'] ) && $_REQUEST['isDuplicate'] == 'true'): ?>
<input type="hidden" name="record" value="">
<input type="hidden" name="duplicateSave" value="true">
<input type="hidden" name="duplicateId" value="<?php echo $this->_tpl_vars['fields']['id']['value']; ?>
">
<?php else: ?>
<input type="hidden" name="record" value="<?php echo $this->_tpl_vars['fields']['id']['value']; ?>
">
<?php endif; ?>
<input type="hidden" name="isDuplicate" value="false">
<input type="hidden" name="action">
<input type="hidden" name="return_module" value="<?php echo $_REQUEST['return_module']; ?>
">
<input type="hidden" name="return_action" value="<?php echo $_REQUEST['return_action']; ?>
">
<input type="hidden" name="return_id" value="<?php echo $_REQUEST['return_id']; ?>
">
<input type="hidden" name="module_tab"> 
<input type="hidden" name="contact_role">
<?php if (( ! empty ( $_REQUEST['return_module'] ) || ! empty ( $_REQUEST['relate_to'] ) ) && ! ( isset ( $_REQUEST['isDuplicate'] ) && $_REQUEST['isDuplicate'] == 'true' )): ?>
<input type="hidden" name="relate_to" value="<?php if ($_REQUEST['return_relationship']):  echo $_REQUEST['return_relationship'];  elseif ($_REQUEST['relate_to'] && empty ( $_REQUEST['from_dcmenu'] )):  echo $_REQUEST['relate_to'];  elseif (empty ( $this->_tpl_vars['isDCForm'] ) && empty ( $_REQUEST['from_dcmenu'] )):  echo $_REQUEST['return_module'];  endif; ?>">
<input type="hidden" name="relate_id" value="<?php echo $_REQUEST['return_id']; ?>
">
<?php endif; ?>
<input type="hidden" name="offset" value="<?php echo $this->_tpl_vars['offset']; ?>
">
<?php $this->assign('place', '_HEADER'); ?> <!-- to be used for id for buttons with custom code in def files-->
<div class="action_buttons"><?php if ($this->_tpl_vars['bean']->aclAccess('save')): ?><input title="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_TITLE']; ?>
"  class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_sel_Selkirk_Partner'); disableOnUnloadEditView(); _form.action.value='Save';if(check_form('form_SubpanelQuickCreate_sel_Selkirk_Partner'))return SUGAR.subpanelUtils.inlineSave(_form.id, 'sel_Selkirk_Partner_subpanel_save_button');return false;" type="submit" name="sel_Selkirk_Partner_subpanel_save_button" id="sel_Selkirk_Partner_subpanel_save_button" value="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_LABEL']; ?>
"><?php endif; ?>  <input title="<?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_TITLE']; ?>
" class="button" onclick="return SUGAR.subpanelUtils.cancelCreate($(this).attr('id'));return false;" type="submit" name="sel_Selkirk_Partner_subpanel_cancel_button" id="sel_Selkirk_Partner_subpanel_cancel_button" value="<?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_LABEL']; ?>
">  <input title="<?php echo $this->_tpl_vars['APP']['LBL_FULL_FORM_BUTTON_TITLE']; ?>
" class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_sel_Selkirk_Partner'); disableOnUnloadEditView(_form); _form.return_action.value='DetailView'; _form.action.value='EditView'; if(typeof(_form.to_pdf)!='undefined') _form.to_pdf.value='0';" type="submit" name="sel_Selkirk_Partner_subpanel_full_form_button" id="sel_Selkirk_Partner_subpanel_full_form_button" value="<?php echo $this->_tpl_vars['APP']['LBL_FULL_FORM_BUTTON_LABEL']; ?>
"> <input type="hidden" name="full_form" value="full_form"> <?php if ($this->_tpl_vars['bean']->aclAccess('detail')):  if (! empty ( $this->_tpl_vars['fields']['id']['value'] ) && $this->_tpl_vars['isAuditEnabled']): ?><input id="btn_view_change_log" title="<?php echo $this->_tpl_vars['APP']['LNK_VIEW_CHANGE_LOG']; ?>
" class="button" onclick='open_popup("Audit", "600", "400", "&record=<?php echo $this->_tpl_vars['fields']['id']['value']; ?>
&module_name=sel_Selkirk_Partner", true, false,  { "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] } ); return false;' type="button" value="<?php echo $this->_tpl_vars['APP']['LNK_VIEW_CHANGE_LOG']; ?>
"><?php endif;  endif; ?><div class="clear"></div></div>
</td>
<td align='right'>
<?php echo $this->_tpl_vars['PAGINATION']; ?>

</td>
</tr>
</table><?php echo smarty_function_sugar_include(array('include' => $this->_tpl_vars['includes']), $this);?>

<span id='tabcounterJS'><script>SUGAR.TabFields=new Array();//this will be used to track tabindexes for references</script></span>
<div id="form_SubpanelQuickCreate_sel_Selkirk_Partner_tabs"
class="yui-navset"
>

<ul class="yui-nav">
<li class="selected"><a id="tab0" href="javascript:void(0)"><em><?php echo smarty_function_sugar_translate(array('label' => 'DEFAULT','module' => 'sel_Selkirk_Partner'), $this);?>
</em></a></li>
</ul>
<div class="yui-content">
<div id='tabcontent0'>
<div id="detailpanel_1" >
<?php echo smarty_function_counter(array('name' => 'panelFieldCount','start' => 0,'print' => false,'assign' => 'panelFieldCount'), $this);?>

<table width="100%" border="0" cellspacing="1" cellpadding="0"  id='Default_<?php echo $this->_tpl_vars['module']; ?>
_Subpanel'  class="yui3-skin-sam edit view panelContainer">
<?php echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php ob_start(); ?>
<tr>
<td valign="top" id='name_label' width='12.5%' scope="col">
<?php ob_start();  echo smarty_function_sugar_translate(array('label' => 'LBL_NAME','module' => 'sel_Selkirk_Partner'), $this); $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean();  echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<span class="required">*</span>
</td>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>


<td valign="top" width='37.5%' colspan='3'>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<?php if (strlen ( $this->_tpl_vars['fields']['name']['value'] ) <= 0):  $this->assign('value', $this->_tpl_vars['fields']['name']['default_value']);  else:  $this->assign('value', $this->_tpl_vars['fields']['name']['value']);  endif; ?>  
<input type='text' name='<?php echo $this->_tpl_vars['fields']['name']['name']; ?>
' 
id='<?php echo $this->_tpl_vars['fields']['name']['name']; ?>
' size='30' 
maxlength='255' 
value='<?php echo $this->_tpl_vars['value']; ?>
' title=''      accesskey='7'  >
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean();  if ($this->_tpl_vars['fieldsUsed'] > 0):  echo $this->_tpl_vars['tableRow']; ?>

<?php endif;  echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php ob_start(); ?>
<tr>
<td valign="top" id='contribution_date_label' width='12.5%' scope="col">
<?php ob_start();  echo smarty_function_sugar_translate(array('label' => 'LBL_CONTRIBUTION_DATE','module' => 'sel_Selkirk_Partner'), $this); $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean();  echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
</td>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>


<td valign="top" width='37.5%' colspan='3'>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<span class="dateTime">
<?php $this->assign('date_value', $this->_tpl_vars['fields']['contribution_date']['value']); ?>
<input class="date_input" autocomplete="off" type="text" name="<?php echo $this->_tpl_vars['fields']['contribution_date']['name']; ?>
" id="<?php echo $this->_tpl_vars['fields']['contribution_date']['name']; ?>
" value="<?php echo $this->_tpl_vars['date_value']; ?>
" title=''  tabindex='0'    size="11" maxlength="10" >
<?php ob_start(); ?>alt="<?php echo $this->_tpl_vars['APP']['LBL_ENTER_DATE']; ?>
" style="position:relative; top:6px" border="0" id="<?php echo $this->_tpl_vars['fields']['contribution_date']['name']; ?>
_trigger"<?php $this->_smarty_vars['capture']['default'] = ob_get_contents();  $this->assign('other_attributes', ob_get_contents());ob_end_clean();  echo smarty_function_sugar_getimage(array('name' => 'jscalendar','ext' => ".gif",'other_attributes' => ($this->_tpl_vars['other_attributes'])), $this);?>

</span>
<script type="text/javascript">
Calendar.setup ({
inputField : "<?php echo $this->_tpl_vars['fields']['contribution_date']['name']; ?>
",
form : "form_SubpanelQuickCreate_sel_Selkirk_Partner",
ifFormat : "<?php echo $this->_tpl_vars['CALENDAR_FORMAT']; ?>
",
daFormat : "<?php echo $this->_tpl_vars['CALENDAR_FORMAT']; ?>
",
button : "<?php echo $this->_tpl_vars['fields']['contribution_date']['name']; ?>
_trigger",
singleClick : true,
dateStr : "<?php echo $this->_tpl_vars['date_value']; ?>
",
startWeekday: <?php echo ((is_array($_tmp=@$this->_tpl_vars['CALENDAR_FDOW'])) ? $this->_run_mod_handler('default', true, $_tmp, '0') : smarty_modifier_default($_tmp, '0')); ?>
,
step : 1,
weekNumbers:false
}
);
</script>
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean();  if ($this->_tpl_vars['fieldsUsed'] > 0):  echo $this->_tpl_vars['tableRow']; ?>

<?php endif;  echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php ob_start(); ?>
<tr>
<td valign="top" id='contribution_label' width='12.5%' scope="col">
<?php ob_start();  echo smarty_function_sugar_translate(array('label' => 'LBL_CONTRIBUTION','module' => 'sel_Selkirk_Partner'), $this); $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean();  echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
</td>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>


<td valign="top" width='37.5%' colspan='3'>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<?php if (strlen ( $this->_tpl_vars['fields']['contribution']['value'] ) <= 0):  $this->assign('value', $this->_tpl_vars['fields']['contribution']['default_value']);  else:  $this->assign('value', $this->_tpl_vars['fields']['contribution']['value']);  endif; ?>  
<input type='text' name='<?php echo $this->_tpl_vars['fields']['contribution']['name']; ?>
' 
id='<?php echo $this->_tpl_vars['fields']['contribution']['name']; ?>
' size='30' maxlength='26' value='<?php echo smarty_function_sugar_number_format(array('var' => $this->_tpl_vars['value']), $this);?>
' title='' tabindex='0'
>
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean();  if ($this->_tpl_vars['fieldsUsed'] > 0):  echo $this->_tpl_vars['tableRow']; ?>

<?php endif;  echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php ob_start(); ?>
<tr>
<td valign="top" id='in_kind_contribution_label' width='12.5%' scope="col">
<?php ob_start();  echo smarty_function_sugar_translate(array('label' => 'LBL_IN_KIND_CONTRIBUTION','module' => 'sel_Selkirk_Partner'), $this); $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean();  echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
</td>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>


<td valign="top" width='37.5%' colspan='3'>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<?php if (empty ( $this->_tpl_vars['fields']['in_kind_contribution']['value'] )):  $this->assign('value', $this->_tpl_vars['fields']['in_kind_contribution']['default_value']);  else:  $this->assign('value', $this->_tpl_vars['fields']['in_kind_contribution']['value']);  endif; ?>  
<textarea  id='<?php echo $this->_tpl_vars['fields']['in_kind_contribution']['name']; ?>
' name='<?php echo $this->_tpl_vars['fields']['in_kind_contribution']['name']; ?>
'
rows="6" 
cols="80" 
title='' tabindex="0" 
 ><?php echo $this->_tpl_vars['value']; ?>
</textarea>
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean();  if ($this->_tpl_vars['fieldsUsed'] > 0):  echo $this->_tpl_vars['tableRow']; ?>

<?php endif;  echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php ob_start(); ?>
<tr>
<td valign="top" id='partner_label' width='12.5%' scope="col">
<?php ob_start();  echo smarty_function_sugar_translate(array('label' => 'LBL_PARTNER','module' => 'sel_Selkirk_Partner'), $this); $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean();  echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
</td>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>


<td valign="top" width='37.5%' >
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<input type="text" name="<?php echo $this->_tpl_vars['fields']['partner']['name']; ?>
" class="sqsEnabled" tabindex="0" id="<?php echo $this->_tpl_vars['fields']['partner']['name']; ?>
" size="" value="<?php echo $this->_tpl_vars['fields']['partner']['value']; ?>
" title='' autocomplete="off"  	 >
<input type="hidden" name="<?php echo $this->_tpl_vars['fields']['partner']['id_name']; ?>
" 
id="<?php echo $this->_tpl_vars['fields']['partner']['id_name']; ?>
" 
value="<?php echo $this->_tpl_vars['fields']['sel_selkirk_client_id_c']['value']; ?>
">
<span class="id-ff multiple">
<button type="button" name="btn_<?php echo $this->_tpl_vars['fields']['partner']['name']; ?>
" id="btn_<?php echo $this->_tpl_vars['fields']['partner']['name']; ?>
" tabindex="0" title="<?php echo smarty_function_sugar_translate(array('label' => 'LBL_SELECT_BUTTON_TITLE'), $this);?>
" class="button firstChild" value="<?php echo smarty_function_sugar_translate(array('label' => 'LBL_SELECT_BUTTON_LABEL'), $this);?>
"
onclick='open_popup(
"<?php echo $this->_tpl_vars['fields']['partner']['module']; ?>
", 
600, 
400, 
"", 
true, 
false, 
<?php echo '{"call_back_function":"set_return","form_name":"form_SubpanelQuickCreate_sel_Selkirk_Partner","field_to_name_array":{"id":"sel_selkirk_client_id_c","name":"partner"}}'; ?>
, 
"single", 
true
);' ><img src="<?php echo smarty_function_sugar_getimagepath(array('file' => "id-ff-select.png"), $this);?>
"></button><button type="button" name="btn_clr_<?php echo $this->_tpl_vars['fields']['partner']['name']; ?>
" id="btn_clr_<?php echo $this->_tpl_vars['fields']['partner']['name']; ?>
" tabindex="0" title="<?php echo smarty_function_sugar_translate(array('label' => 'LBL_ACCESSKEY_CLEAR_RELATE_TITLE'), $this);?>
"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '<?php echo $this->_tpl_vars['fields']['partner']['name']; ?>
', '<?php echo $this->_tpl_vars['fields']['partner']['id_name']; ?>
');"  value="<?php echo smarty_function_sugar_translate(array('label' => 'LBL_ACCESSKEY_CLEAR_RELATE_LABEL'), $this);?>
" ><img src="<?php echo smarty_function_sugar_getimagepath(array('file' => "id-ff-clear.png"), $this);?>
"></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['<?php echo $this->_tpl_vars['form_name']; ?>
_<?php echo $this->_tpl_vars['fields']['partner']['name']; ?>
']) != 'undefined'",
		enableQS
);
</script>
<td valign="top" id='sel_selkirk_project_sel_selkirk_partner_name_label' width='12.5%' scope="col">
<?php ob_start();  echo smarty_function_sugar_translate(array('label' => 'LBL_SEL_SELKIRK_PROJECT_SEL_SELKIRK_PARTNER_FROM_SEL_SELKIRK_PROJECT_TITLE','module' => 'sel_Selkirk_Partner'), $this); $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean();  echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
</td>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>


<td valign="top" width='37.5%' >
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<input type="text" name="<?php echo $this->_tpl_vars['fields']['sel_selkirk_project_sel_selkirk_partner_name']['name']; ?>
" class="sqsEnabled" tabindex="0" id="<?php echo $this->_tpl_vars['fields']['sel_selkirk_project_sel_selkirk_partner_name']['name']; ?>
" size="" value="<?php echo $this->_tpl_vars['fields']['sel_selkirk_project_sel_selkirk_partner_name']['value']; ?>
" title='' autocomplete="off"  	 >
<input type="hidden" name="<?php echo $this->_tpl_vars['fields']['sel_selkirk_project_sel_selkirk_partner_name']['id_name']; ?>
" 
id="<?php echo $this->_tpl_vars['fields']['sel_selkirk_project_sel_selkirk_partner_name']['id_name']; ?>
" 
value="<?php echo $this->_tpl_vars['fields']['sel_selkirk_project_sel_selkirk_partnersel_selkirk_project_ida']['value']; ?>
">
<span class="id-ff multiple">
<button type="button" name="btn_<?php echo $this->_tpl_vars['fields']['sel_selkirk_project_sel_selkirk_partner_name']['name']; ?>
" id="btn_<?php echo $this->_tpl_vars['fields']['sel_selkirk_project_sel_selkirk_partner_name']['name']; ?>
" tabindex="0" title="<?php echo smarty_function_sugar_translate(array('label' => 'LBL_SELECT_BUTTON_TITLE'), $this);?>
" class="button firstChild" value="<?php echo smarty_function_sugar_translate(array('label' => 'LBL_SELECT_BUTTON_LABEL'), $this);?>
"
onclick='open_popup(
"<?php echo $this->_tpl_vars['fields']['sel_selkirk_project_sel_selkirk_partner_name']['module']; ?>
", 
600, 
400, 
"", 
true, 
false, 
<?php echo '{"call_back_function":"set_return","form_name":"form_SubpanelQuickCreate_sel_Selkirk_Partner","field_to_name_array":{"id":"sel_selkirk_project_sel_selkirk_partnersel_selkirk_project_ida","name":"sel_selkirk_project_sel_selkirk_partner_name"}}'; ?>
, 
"single", 
true
);' ><img src="<?php echo smarty_function_sugar_getimagepath(array('file' => "id-ff-select.png"), $this);?>
"></button><button type="button" name="btn_clr_<?php echo $this->_tpl_vars['fields']['sel_selkirk_project_sel_selkirk_partner_name']['name']; ?>
" id="btn_clr_<?php echo $this->_tpl_vars['fields']['sel_selkirk_project_sel_selkirk_partner_name']['name']; ?>
" tabindex="0" title="<?php echo smarty_function_sugar_translate(array('label' => 'LBL_ACCESSKEY_CLEAR_RELATE_TITLE'), $this);?>
"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '<?php echo $this->_tpl_vars['fields']['sel_selkirk_project_sel_selkirk_partner_name']['name']; ?>
', '<?php echo $this->_tpl_vars['fields']['sel_selkirk_project_sel_selkirk_partner_name']['id_name']; ?>
');"  value="<?php echo smarty_function_sugar_translate(array('label' => 'LBL_ACCESSKEY_CLEAR_RELATE_LABEL'), $this);?>
" ><img src="<?php echo smarty_function_sugar_getimagepath(array('file' => "id-ff-clear.png"), $this);?>
"></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['<?php echo $this->_tpl_vars['form_name']; ?>
_<?php echo $this->_tpl_vars['fields']['sel_selkirk_project_sel_selkirk_partner_name']['name']; ?>
']) != 'undefined'",
		enableQS
);
</script>
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean();  if ($this->_tpl_vars['fieldsUsed'] > 0):  echo $this->_tpl_vars['tableRow']; ?>

<?php endif; ?>
</table>
</div>
<?php if ($this->_tpl_vars['panelFieldCount'] == 0): ?>
<script>document.getElementById("DEFAULT").style.display='none';</script>
<?php endif; ?>
</div></div>

<script language="javascript">
    var _form_id = '<?php echo $this->_tpl_vars['form_id']; ?>
';
    <?php echo '
    SUGAR.util.doWhen(function(){
        _form_id = (_form_id == \'\') ? \'EditView\' : _form_id;
        return document.getElementById(_form_id) != null;
    }, SUGAR.themes.actionMenu);
    '; ?>

</script>
<?php $this->assign('place', '_FOOTER'); ?> <!-- to be used for id for buttons with custom code in def files-->
<div class="buttons">
<div class="action_buttons"><?php if ($this->_tpl_vars['bean']->aclAccess('save')): ?><input title="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_TITLE']; ?>
"  class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_sel_Selkirk_Partner'); disableOnUnloadEditView(); _form.action.value='Save';if(check_form('form_SubpanelQuickCreate_sel_Selkirk_Partner'))return SUGAR.subpanelUtils.inlineSave(_form.id, 'sel_Selkirk_Partner_subpanel_save_button');return false;" type="submit" name="sel_Selkirk_Partner_subpanel_save_button" id="sel_Selkirk_Partner_subpanel_save_button" value="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_LABEL']; ?>
"><?php endif; ?>  <input title="<?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_TITLE']; ?>
" class="button" onclick="return SUGAR.subpanelUtils.cancelCreate($(this).attr('id'));return false;" type="submit" name="sel_Selkirk_Partner_subpanel_cancel_button" id="sel_Selkirk_Partner_subpanel_cancel_button" value="<?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_LABEL']; ?>
">  <input title="<?php echo $this->_tpl_vars['APP']['LBL_FULL_FORM_BUTTON_TITLE']; ?>
" class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_sel_Selkirk_Partner'); disableOnUnloadEditView(_form); _form.return_action.value='DetailView'; _form.action.value='EditView'; if(typeof(_form.to_pdf)!='undefined') _form.to_pdf.value='0';" type="submit" name="sel_Selkirk_Partner_subpanel_full_form_button" id="sel_Selkirk_Partner_subpanel_full_form_button" value="<?php echo $this->_tpl_vars['APP']['LBL_FULL_FORM_BUTTON_LABEL']; ?>
"> <input type="hidden" name="full_form" value="full_form"> <?php if ($this->_tpl_vars['bean']->aclAccess('detail')):  if (! empty ( $this->_tpl_vars['fields']['id']['value'] ) && $this->_tpl_vars['isAuditEnabled']): ?><input id="btn_view_change_log" title="<?php echo $this->_tpl_vars['APP']['LNK_VIEW_CHANGE_LOG']; ?>
" class="button" onclick='open_popup("Audit", "600", "400", "&record=<?php echo $this->_tpl_vars['fields']['id']['value']; ?>
&module_name=sel_Selkirk_Partner", true, false,  { "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] } ); return false;' type="button" value="<?php echo $this->_tpl_vars['APP']['LNK_VIEW_CHANGE_LOG']; ?>
"><?php endif;  endif; ?><div class="clear"></div></div>
</div>
</form>
<?php echo $this->_tpl_vars['set_focus_block']; ?>

<script>SUGAR.util.doWhen("document.getElementById('EditView') != null",
function(){SUGAR.util.buildAccessKeyLabels();});
</script><?php echo smarty_function_sugar_getscript(array('file' => "cache/include/javascript/sugar_grp_yui_widgets.js"), $this);?>

<script type="text/javascript">
var form_SubpanelQuickCreate_sel_Selkirk_Partner_tabs = new YAHOO.widget.TabView("form_SubpanelQuickCreate_sel_Selkirk_Partner_tabs");
form_SubpanelQuickCreate_sel_Selkirk_Partner_tabs.selectTab(0);
</script>
<script type="text/javascript">
YAHOO.util.Event.onContentReady("form_SubpanelQuickCreate_sel_Selkirk_Partner",
    function () { initEditView(document.forms.form_SubpanelQuickCreate_sel_Selkirk_Partner) });
//window.setTimeout(, 100);
window.onbeforeunload = function () { return onUnloadEditView(); };
// bug 55468 -- IE is too aggressive with onUnload event
if ($.browser.msie) {
$(document).ready(function() {
    $(".collapseLink,.expandLink").click(function (e) { e.preventDefault(); });
  });
}
</script><?php echo '
<script type="text/javascript">
addForm(\'form_SubpanelQuickCreate_sel_Selkirk_Partner\');addToValidate(\'form_SubpanelQuickCreate_sel_Selkirk_Partner\', \'name\', \'name\', true,\'';  echo smarty_function_sugar_translate(array('label' => 'LBL_NAME','module' => 'sel_Selkirk_Partner','for_js' => true), $this); echo '\' );
addToValidate(\'form_SubpanelQuickCreate_sel_Selkirk_Partner\', \'date_entered_date\', \'date\', false,\'Date Created\' );
addToValidate(\'form_SubpanelQuickCreate_sel_Selkirk_Partner\', \'date_modified_date\', \'date\', false,\'Date Modified\' );
addToValidate(\'form_SubpanelQuickCreate_sel_Selkirk_Partner\', \'modified_user_id\', \'assigned_user_name\', false,\'';  echo smarty_function_sugar_translate(array('label' => 'LBL_MODIFIED','module' => 'sel_Selkirk_Partner','for_js' => true), $this); echo '\' );
addToValidate(\'form_SubpanelQuickCreate_sel_Selkirk_Partner\', \'modified_by_name\', \'relate\', false,\'';  echo smarty_function_sugar_translate(array('label' => 'LBL_MODIFIED_NAME','module' => 'sel_Selkirk_Partner','for_js' => true), $this); echo '\' );
addToValidate(\'form_SubpanelQuickCreate_sel_Selkirk_Partner\', \'created_by\', \'assigned_user_name\', false,\'';  echo smarty_function_sugar_translate(array('label' => 'LBL_CREATED','module' => 'sel_Selkirk_Partner','for_js' => true), $this); echo '\' );
addToValidate(\'form_SubpanelQuickCreate_sel_Selkirk_Partner\', \'created_by_name\', \'relate\', false,\'';  echo smarty_function_sugar_translate(array('label' => 'LBL_CREATED','module' => 'sel_Selkirk_Partner','for_js' => true), $this); echo '\' );
addToValidate(\'form_SubpanelQuickCreate_sel_Selkirk_Partner\', \'description\', \'text\', false,\'';  echo smarty_function_sugar_translate(array('label' => 'LBL_DESCRIPTION','module' => 'sel_Selkirk_Partner','for_js' => true), $this); echo '\' );
addToValidate(\'form_SubpanelQuickCreate_sel_Selkirk_Partner\', \'deleted\', \'bool\', false,\'';  echo smarty_function_sugar_translate(array('label' => 'LBL_DELETED','module' => 'sel_Selkirk_Partner','for_js' => true), $this); echo '\' );
addToValidate(\'form_SubpanelQuickCreate_sel_Selkirk_Partner\', \'assigned_user_id\', \'relate\', false,\'';  echo smarty_function_sugar_translate(array('label' => 'LBL_ASSIGNED_TO_ID','module' => 'sel_Selkirk_Partner','for_js' => true), $this); echo '\' );
addToValidate(\'form_SubpanelQuickCreate_sel_Selkirk_Partner\', \'assigned_user_name\', \'relate\', false,\'';  echo smarty_function_sugar_translate(array('label' => 'LBL_ASSIGNED_TO_NAME','module' => 'sel_Selkirk_Partner','for_js' => true), $this); echo '\' );
addToValidate(\'form_SubpanelQuickCreate_sel_Selkirk_Partner\', \'contribution\', \'currency\', false,\'';  echo smarty_function_sugar_translate(array('label' => 'LBL_CONTRIBUTION','module' => 'sel_Selkirk_Partner','for_js' => true), $this); echo '\' );
addToValidate(\'form_SubpanelQuickCreate_sel_Selkirk_Partner\', \'currency_id\', \'currency_id\', false,\'';  echo smarty_function_sugar_translate(array('label' => 'LBL_CURRENCY','module' => 'sel_Selkirk_Partner','for_js' => true), $this); echo '\' );
addToValidate(\'form_SubpanelQuickCreate_sel_Selkirk_Partner\', \'contribution_date\', \'date\', false,\'';  echo smarty_function_sugar_translate(array('label' => 'LBL_CONTRIBUTION_DATE','module' => 'sel_Selkirk_Partner','for_js' => true), $this); echo '\' );
addToValidate(\'form_SubpanelQuickCreate_sel_Selkirk_Partner\', \'in_kind_contribution\', \'text\', false,\'';  echo smarty_function_sugar_translate(array('label' => 'LBL_IN_KIND_CONTRIBUTION','module' => 'sel_Selkirk_Partner','for_js' => true), $this); echo '\' );
addToValidate(\'form_SubpanelQuickCreate_sel_Selkirk_Partner\', \'sel_selkirk_client_id_c\', \'id\', false,\'';  echo smarty_function_sugar_translate(array('label' => 'LBL_PARTNER_SEL_SELKIRK_CLIENT_ID','module' => 'sel_Selkirk_Partner','for_js' => true), $this); echo '\' );
addToValidate(\'form_SubpanelQuickCreate_sel_Selkirk_Partner\', \'partner\', \'relate\', false,\'';  echo smarty_function_sugar_translate(array('label' => 'LBL_PARTNER','module' => 'sel_Selkirk_Partner','for_js' => true), $this); echo '\' );
addToValidate(\'form_SubpanelQuickCreate_sel_Selkirk_Partner\', \'sel_selkirk_project_sel_selkirk_partner_name\', \'relate\', false,\'';  echo smarty_function_sugar_translate(array('label' => 'LBL_SEL_SELKIRK_PROJECT_SEL_SELKIRK_PARTNER_FROM_SEL_SELKIRK_PROJECT_TITLE','module' => 'sel_Selkirk_Partner','for_js' => true), $this); echo '\' );
addToValidateBinaryDependency(\'form_SubpanelQuickCreate_sel_Selkirk_Partner\', \'assigned_user_name\', \'alpha\', false,\'';  echo smarty_function_sugar_translate(array('label' => 'ERR_SQS_NO_MATCH_FIELD','module' => 'sel_Selkirk_Partner','for_js' => true), $this); echo ': ';  echo smarty_function_sugar_translate(array('label' => 'LBL_ASSIGNED_TO','module' => 'sel_Selkirk_Partner','for_js' => true), $this); echo '\', \'assigned_user_id\' );
addToValidateBinaryDependency(\'form_SubpanelQuickCreate_sel_Selkirk_Partner\', \'partner\', \'alpha\', false,\'';  echo smarty_function_sugar_translate(array('label' => 'ERR_SQS_NO_MATCH_FIELD','module' => 'sel_Selkirk_Partner','for_js' => true), $this); echo ': ';  echo smarty_function_sugar_translate(array('label' => 'LBL_PARTNER','module' => 'sel_Selkirk_Partner','for_js' => true), $this); echo '\', \'sel_selkirk_client_id_c\' );
addToValidateBinaryDependency(\'form_SubpanelQuickCreate_sel_Selkirk_Partner\', \'sel_selkirk_project_sel_selkirk_partner_name\', \'alpha\', false,\'';  echo smarty_function_sugar_translate(array('label' => 'ERR_SQS_NO_MATCH_FIELD','module' => 'sel_Selkirk_Partner','for_js' => true), $this); echo ': ';  echo smarty_function_sugar_translate(array('label' => 'LBL_SEL_SELKIRK_PROJECT_SEL_SELKIRK_PARTNER_FROM_SEL_SELKIRK_PROJECT_TITLE','module' => 'sel_Selkirk_Partner','for_js' => true), $this); echo '\', \'sel_selkirk_project_sel_selkirk_partnersel_selkirk_project_ida\' );
</script><script language="javascript">if(typeof sqs_objects == \'undefined\'){var sqs_objects = new Array;}sqs_objects[\'form_SubpanelQuickCreate_sel_Selkirk_Partner_partner\']={"form":"form_SubpanelQuickCreate_sel_Selkirk_Partner","method":"query","modules":["sel_Selkirk_Client"],"group":"or","field_list":["name","id"],"populate_list":["partner","sel_selkirk_client_id_c"],"required_list":["parent_id"],"conditions":[{"name":"name","op":"like_custom","end":"%","value":""}],"order":"name","limit":"30","no_match_text":"No Match"};sqs_objects[\'form_SubpanelQuickCreate_sel_Selkirk_Partner_sel_selkirk_project_sel_selkirk_partner_name\']={"form":"form_SubpanelQuickCreate_sel_Selkirk_Partner","method":"query","modules":["sel_Selkirk_Project"],"group":"or","field_list":["name","id"],"populate_list":["sel_selkirk_project_sel_selkirk_partner_name","sel_selkirk_project_sel_selkirk_partnersel_selkirk_project_ida"],"required_list":["parent_id"],"conditions":[{"name":"name","op":"like_custom","end":"%","value":""}],"order":"name","limit":"30","no_match_text":"No Match"};</script>'; ?>
