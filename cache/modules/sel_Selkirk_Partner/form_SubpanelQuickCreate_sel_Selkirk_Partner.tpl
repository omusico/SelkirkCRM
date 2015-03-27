

<script>
{literal}
$(document).ready(function(){
$("ul.clickMenu").each(function(index, node){
$(node).sugarActionMenu();
});
});
{/literal}
</script>
<div class="clear"></div>
<form action="index.php" method="POST" name="{$form_name}" id="{$form_id}" {$enctype}>
<table width="100%" cellpadding="0" cellspacing="0" border="0" class="dcQuickEdit">
<tr>
<td class="buttons">
<input type="hidden" name="module" value="{$module}">
{if isset($smarty.request.isDuplicate) && $smarty.request.isDuplicate eq "true"}
<input type="hidden" name="record" value="">
<input type="hidden" name="duplicateSave" value="true">
<input type="hidden" name="duplicateId" value="{$fields.id.value}">
{else}
<input type="hidden" name="record" value="{$fields.id.value}">
{/if}
<input type="hidden" name="isDuplicate" value="false">
<input type="hidden" name="action">
<input type="hidden" name="return_module" value="{$smarty.request.return_module}">
<input type="hidden" name="return_action" value="{$smarty.request.return_action}">
<input type="hidden" name="return_id" value="{$smarty.request.return_id}">
<input type="hidden" name="module_tab"> 
<input type="hidden" name="contact_role">
{if (!empty($smarty.request.return_module) || !empty($smarty.request.relate_to)) && !(isset($smarty.request.isDuplicate) && $smarty.request.isDuplicate eq "true")}
<input type="hidden" name="relate_to" value="{if $smarty.request.return_relationship}{$smarty.request.return_relationship}{elseif $smarty.request.relate_to && empty($smarty.request.from_dcmenu)}{$smarty.request.relate_to}{elseif empty($isDCForm) && empty($smarty.request.from_dcmenu)}{$smarty.request.return_module}{/if}">
<input type="hidden" name="relate_id" value="{$smarty.request.return_id}">
{/if}
<input type="hidden" name="offset" value="{$offset}">
{assign var='place' value="_HEADER"} <!-- to be used for id for buttons with custom code in def files-->
<div class="action_buttons">{if $bean->aclAccess("save")}<input title="{$APP.LBL_SAVE_BUTTON_TITLE}"  class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_sel_Selkirk_Partner'); disableOnUnloadEditView(); _form.action.value='Save';if(check_form('form_SubpanelQuickCreate_sel_Selkirk_Partner'))return SUGAR.subpanelUtils.inlineSave(_form.id, 'sel_Selkirk_Partner_subpanel_save_button');return false;" type="submit" name="sel_Selkirk_Partner_subpanel_save_button" id="sel_Selkirk_Partner_subpanel_save_button" value="{$APP.LBL_SAVE_BUTTON_LABEL}">{/if}  <input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" class="button" onclick="return SUGAR.subpanelUtils.cancelCreate($(this).attr('id'));return false;" type="submit" name="sel_Selkirk_Partner_subpanel_cancel_button" id="sel_Selkirk_Partner_subpanel_cancel_button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}">  <input title="{$APP.LBL_FULL_FORM_BUTTON_TITLE}" class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_sel_Selkirk_Partner'); disableOnUnloadEditView(_form); _form.return_action.value='DetailView'; _form.action.value='EditView'; if(typeof(_form.to_pdf)!='undefined') _form.to_pdf.value='0';" type="submit" name="sel_Selkirk_Partner_subpanel_full_form_button" id="sel_Selkirk_Partner_subpanel_full_form_button" value="{$APP.LBL_FULL_FORM_BUTTON_LABEL}"> <input type="hidden" name="full_form" value="full_form"> {if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=sel_Selkirk_Partner", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}<div class="clear"></div></div>
</td>
<td align='right'>
{$PAGINATION}
</td>
</tr>
</table>{sugar_include include=$includes}
<span id='tabcounterJS'><script>SUGAR.TabFields=new Array();//this will be used to track tabindexes for references</script></span>
<div id="form_SubpanelQuickCreate_sel_Selkirk_Partner_tabs"
class="yui-navset"
>

<ul class="yui-nav">
<li class="selected"><a id="tab0" href="javascript:void(0)"><em>{sugar_translate label='DEFAULT' module='sel_Selkirk_Partner'}</em></a></li>
</ul>
<div class="yui-content">
<div id='tabcontent0'>
<div id="detailpanel_1" >
{counter name="panelFieldCount" start=0 print=false assign="panelFieldCount"}
<table width="100%" border="0" cellspacing="1" cellpadding="0"  id='Default_{$module}_Subpanel'  class="yui3-skin-sam edit view panelContainer">
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>
<td valign="top" id='name_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_NAME' module='sel_Selkirk_Partner'}{/capture}
{$label|strip_semicolon}:
<span class="required">*</span>
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' colspan='3'>
{counter name="panelFieldCount"}

{if strlen($fields.name.value) <= 0}
{assign var="value" value=$fields.name.default_value }
{else}
{assign var="value" value=$fields.name.value }
{/if}  
<input type='text' name='{$fields.name.name}' 
id='{$fields.name.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      accesskey='7'  >
</tr>
{/capture}
{if $fieldsUsed > 0 }
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>
<td valign="top" id='contribution_date_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_CONTRIBUTION_DATE' module='sel_Selkirk_Partner'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' colspan='3'>
{counter name="panelFieldCount"}

<span class="dateTime">
{assign var=date_value value=$fields.contribution_date.value }
<input class="date_input" autocomplete="off" type="text" name="{$fields.contribution_date.name}" id="{$fields.contribution_date.name}" value="{$date_value}" title=''  tabindex='0'    size="11" maxlength="10" >
{capture assign="other_attributes"}alt="{$APP.LBL_ENTER_DATE}" style="position:relative; top:6px" border="0" id="{$fields.contribution_date.name}_trigger"{/capture}
{sugar_getimage name="jscalendar" ext=".gif" other_attributes="$other_attributes"}
</span>
<script type="text/javascript">
Calendar.setup ({ldelim}
inputField : "{$fields.contribution_date.name}",
form : "form_SubpanelQuickCreate_sel_Selkirk_Partner",
ifFormat : "{$CALENDAR_FORMAT}",
daFormat : "{$CALENDAR_FORMAT}",
button : "{$fields.contribution_date.name}_trigger",
singleClick : true,
dateStr : "{$date_value}",
startWeekday: {$CALENDAR_FDOW|default:'0'},
step : 1,
weekNumbers:false
{rdelim}
);
</script>
</tr>
{/capture}
{if $fieldsUsed > 0 }
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>
<td valign="top" id='contribution_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_CONTRIBUTION' module='sel_Selkirk_Partner'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' colspan='3'>
{counter name="panelFieldCount"}

{if strlen($fields.contribution.value) <= 0}
{assign var="value" value=$fields.contribution.default_value }
{else}
{assign var="value" value=$fields.contribution.value }
{/if}  
<input type='text' name='{$fields.contribution.name}' 
id='{$fields.contribution.name}' size='30' maxlength='26' value='{sugar_number_format var=$value}' title='' tabindex='0'
>
</tr>
{/capture}
{if $fieldsUsed > 0 }
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>
<td valign="top" id='in_kind_contribution_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_IN_KIND_CONTRIBUTION' module='sel_Selkirk_Partner'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' colspan='3'>
{counter name="panelFieldCount"}

{if empty($fields.in_kind_contribution.value)}
{assign var="value" value=$fields.in_kind_contribution.default_value }
{else}
{assign var="value" value=$fields.in_kind_contribution.value }
{/if}  
<textarea  id='{$fields.in_kind_contribution.name}' name='{$fields.in_kind_contribution.name}'
rows="6" 
cols="80" 
title='' tabindex="0" 
 >{$value}</textarea>
</tr>
{/capture}
{if $fieldsUsed > 0 }
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>
<td valign="top" id='partner_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_PARTNER' module='sel_Selkirk_Partner'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' >
{counter name="panelFieldCount"}

<input type="text" name="{$fields.partner.name}" class="sqsEnabled" tabindex="0" id="{$fields.partner.name}" size="" value="{$fields.partner.value}" title='' autocomplete="off"  	 >
<input type="hidden" name="{$fields.partner.id_name}" 
id="{$fields.partner.id_name}" 
value="{$fields.sel_selkirk_client_id_c.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.partner.name}" id="btn_{$fields.partner.name}" tabindex="0" title="{sugar_translate label="LBL_SELECT_BUTTON_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_SELECT_BUTTON_LABEL"}"
onclick='open_popup(
"{$fields.partner.module}", 
600, 
400, 
"", 
true, 
false, 
{literal}{"call_back_function":"set_return","form_name":"form_SubpanelQuickCreate_sel_Selkirk_Partner","field_to_name_array":{"id":"sel_selkirk_client_id_c","name":"partner"}}{/literal}, 
"single", 
true
);' ><img src="{sugar_getimagepath file="id-ff-select.png"}"></button><button type="button" name="btn_clr_{$fields.partner.name}" id="btn_clr_{$fields.partner.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_TITLE"}"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '{$fields.partner.name}', '{$fields.partner.id_name}');"  value="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_LABEL"}" ><img src="{sugar_getimagepath file="id-ff-clear.png"}"></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['{$form_name}_{$fields.partner.name}']) != 'undefined'",
		enableQS
);
</script>
<td valign="top" id='sel_selkirk_project_sel_selkirk_partner_name_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_SEL_SELKIRK_PROJECT_SEL_SELKIRK_PARTNER_FROM_SEL_SELKIRK_PROJECT_TITLE' module='sel_Selkirk_Partner'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' >
{counter name="panelFieldCount"}

<input type="text" name="{$fields.sel_selkirk_project_sel_selkirk_partner_name.name}" class="sqsEnabled" tabindex="0" id="{$fields.sel_selkirk_project_sel_selkirk_partner_name.name}" size="" value="{$fields.sel_selkirk_project_sel_selkirk_partner_name.value}" title='' autocomplete="off"  	 >
<input type="hidden" name="{$fields.sel_selkirk_project_sel_selkirk_partner_name.id_name}" 
id="{$fields.sel_selkirk_project_sel_selkirk_partner_name.id_name}" 
value="{$fields.sel_selkirk_project_sel_selkirk_partnersel_selkirk_project_ida.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.sel_selkirk_project_sel_selkirk_partner_name.name}" id="btn_{$fields.sel_selkirk_project_sel_selkirk_partner_name.name}" tabindex="0" title="{sugar_translate label="LBL_SELECT_BUTTON_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_SELECT_BUTTON_LABEL"}"
onclick='open_popup(
"{$fields.sel_selkirk_project_sel_selkirk_partner_name.module}", 
600, 
400, 
"", 
true, 
false, 
{literal}{"call_back_function":"set_return","form_name":"form_SubpanelQuickCreate_sel_Selkirk_Partner","field_to_name_array":{"id":"sel_selkirk_project_sel_selkirk_partnersel_selkirk_project_ida","name":"sel_selkirk_project_sel_selkirk_partner_name"}}{/literal}, 
"single", 
true
);' ><img src="{sugar_getimagepath file="id-ff-select.png"}"></button><button type="button" name="btn_clr_{$fields.sel_selkirk_project_sel_selkirk_partner_name.name}" id="btn_clr_{$fields.sel_selkirk_project_sel_selkirk_partner_name.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_TITLE"}"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '{$fields.sel_selkirk_project_sel_selkirk_partner_name.name}', '{$fields.sel_selkirk_project_sel_selkirk_partner_name.id_name}');"  value="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_LABEL"}" ><img src="{sugar_getimagepath file="id-ff-clear.png"}"></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['{$form_name}_{$fields.sel_selkirk_project_sel_selkirk_partner_name.name}']) != 'undefined'",
		enableQS
);
</script>
</tr>
{/capture}
{if $fieldsUsed > 0 }
{$tableRow}
{/if}
</table>
</div>
{if $panelFieldCount == 0}
<script>document.getElementById("DEFAULT").style.display='none';</script>
{/if}
</div></div>

<script language="javascript">
    var _form_id = '{$form_id}';
    {literal}
    SUGAR.util.doWhen(function(){
        _form_id = (_form_id == '') ? 'EditView' : _form_id;
        return document.getElementById(_form_id) != null;
    }, SUGAR.themes.actionMenu);
    {/literal}
</script>
{assign var='place' value="_FOOTER"} <!-- to be used for id for buttons with custom code in def files-->
<div class="buttons">
<div class="action_buttons">{if $bean->aclAccess("save")}<input title="{$APP.LBL_SAVE_BUTTON_TITLE}"  class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_sel_Selkirk_Partner'); disableOnUnloadEditView(); _form.action.value='Save';if(check_form('form_SubpanelQuickCreate_sel_Selkirk_Partner'))return SUGAR.subpanelUtils.inlineSave(_form.id, 'sel_Selkirk_Partner_subpanel_save_button');return false;" type="submit" name="sel_Selkirk_Partner_subpanel_save_button" id="sel_Selkirk_Partner_subpanel_save_button" value="{$APP.LBL_SAVE_BUTTON_LABEL}">{/if}  <input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" class="button" onclick="return SUGAR.subpanelUtils.cancelCreate($(this).attr('id'));return false;" type="submit" name="sel_Selkirk_Partner_subpanel_cancel_button" id="sel_Selkirk_Partner_subpanel_cancel_button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}">  <input title="{$APP.LBL_FULL_FORM_BUTTON_TITLE}" class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_sel_Selkirk_Partner'); disableOnUnloadEditView(_form); _form.return_action.value='DetailView'; _form.action.value='EditView'; if(typeof(_form.to_pdf)!='undefined') _form.to_pdf.value='0';" type="submit" name="sel_Selkirk_Partner_subpanel_full_form_button" id="sel_Selkirk_Partner_subpanel_full_form_button" value="{$APP.LBL_FULL_FORM_BUTTON_LABEL}"> <input type="hidden" name="full_form" value="full_form"> {if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=sel_Selkirk_Partner", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}<div class="clear"></div></div>
</div>
</form>
{$set_focus_block}
<script>SUGAR.util.doWhen("document.getElementById('EditView') != null",
function(){ldelim}SUGAR.util.buildAccessKeyLabels();{rdelim});
</script>{sugar_getscript file="cache/include/javascript/sugar_grp_yui_widgets.js"}
<script type="text/javascript">
var form_SubpanelQuickCreate_sel_Selkirk_Partner_tabs = new YAHOO.widget.TabView("form_SubpanelQuickCreate_sel_Selkirk_Partner_tabs");
form_SubpanelQuickCreate_sel_Selkirk_Partner_tabs.selectTab(0);
</script>
<script type="text/javascript">
YAHOO.util.Event.onContentReady("form_SubpanelQuickCreate_sel_Selkirk_Partner",
    function () {ldelim} initEditView(document.forms.form_SubpanelQuickCreate_sel_Selkirk_Partner) {rdelim});
//window.setTimeout(, 100);
window.onbeforeunload = function () {ldelim} return onUnloadEditView(); {rdelim};
// bug 55468 -- IE is too aggressive with onUnload event
if ($.browser.msie) {ldelim}
$(document).ready(function() {ldelim}
    $(".collapseLink,.expandLink").click(function (e) {ldelim} e.preventDefault(); {rdelim});
  {rdelim});
{rdelim}
</script>{literal}
<script type="text/javascript">
addForm('form_SubpanelQuickCreate_sel_Selkirk_Partner');addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Partner', 'name', 'name', true,'{/literal}{sugar_translate label='LBL_NAME' module='sel_Selkirk_Partner' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Partner', 'date_entered_date', 'date', false,'Date Created' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Partner', 'date_modified_date', 'date', false,'Date Modified' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Partner', 'modified_user_id', 'assigned_user_name', false,'{/literal}{sugar_translate label='LBL_MODIFIED' module='sel_Selkirk_Partner' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Partner', 'modified_by_name', 'relate', false,'{/literal}{sugar_translate label='LBL_MODIFIED_NAME' module='sel_Selkirk_Partner' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Partner', 'created_by', 'assigned_user_name', false,'{/literal}{sugar_translate label='LBL_CREATED' module='sel_Selkirk_Partner' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Partner', 'created_by_name', 'relate', false,'{/literal}{sugar_translate label='LBL_CREATED' module='sel_Selkirk_Partner' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Partner', 'description', 'text', false,'{/literal}{sugar_translate label='LBL_DESCRIPTION' module='sel_Selkirk_Partner' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Partner', 'deleted', 'bool', false,'{/literal}{sugar_translate label='LBL_DELETED' module='sel_Selkirk_Partner' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Partner', 'assigned_user_id', 'relate', false,'{/literal}{sugar_translate label='LBL_ASSIGNED_TO_ID' module='sel_Selkirk_Partner' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Partner', 'assigned_user_name', 'relate', false,'{/literal}{sugar_translate label='LBL_ASSIGNED_TO_NAME' module='sel_Selkirk_Partner' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Partner', 'contribution', 'currency', false,'{/literal}{sugar_translate label='LBL_CONTRIBUTION' module='sel_Selkirk_Partner' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Partner', 'currency_id', 'currency_id', false,'{/literal}{sugar_translate label='LBL_CURRENCY' module='sel_Selkirk_Partner' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Partner', 'contribution_date', 'date', false,'{/literal}{sugar_translate label='LBL_CONTRIBUTION_DATE' module='sel_Selkirk_Partner' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Partner', 'in_kind_contribution', 'text', false,'{/literal}{sugar_translate label='LBL_IN_KIND_CONTRIBUTION' module='sel_Selkirk_Partner' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Partner', 'sel_selkirk_client_id_c', 'id', false,'{/literal}{sugar_translate label='LBL_PARTNER_SEL_SELKIRK_CLIENT_ID' module='sel_Selkirk_Partner' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Partner', 'partner', 'relate', false,'{/literal}{sugar_translate label='LBL_PARTNER' module='sel_Selkirk_Partner' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Partner', 'sel_selkirk_project_sel_selkirk_partner_name', 'relate', false,'{/literal}{sugar_translate label='LBL_SEL_SELKIRK_PROJECT_SEL_SELKIRK_PARTNER_FROM_SEL_SELKIRK_PROJECT_TITLE' module='sel_Selkirk_Partner' for_js=true}{literal}' );
addToValidateBinaryDependency('form_SubpanelQuickCreate_sel_Selkirk_Partner', 'assigned_user_name', 'alpha', false,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='sel_Selkirk_Partner' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_ASSIGNED_TO' module='sel_Selkirk_Partner' for_js=true}{literal}', 'assigned_user_id' );
addToValidateBinaryDependency('form_SubpanelQuickCreate_sel_Selkirk_Partner', 'partner', 'alpha', false,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='sel_Selkirk_Partner' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_PARTNER' module='sel_Selkirk_Partner' for_js=true}{literal}', 'sel_selkirk_client_id_c' );
addToValidateBinaryDependency('form_SubpanelQuickCreate_sel_Selkirk_Partner', 'sel_selkirk_project_sel_selkirk_partner_name', 'alpha', false,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='sel_Selkirk_Partner' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_SEL_SELKIRK_PROJECT_SEL_SELKIRK_PARTNER_FROM_SEL_SELKIRK_PROJECT_TITLE' module='sel_Selkirk_Partner' for_js=true}{literal}', 'sel_selkirk_project_sel_selkirk_partnersel_selkirk_project_ida' );
</script><script language="javascript">if(typeof sqs_objects == 'undefined'){var sqs_objects = new Array;}sqs_objects['form_SubpanelQuickCreate_sel_Selkirk_Partner_partner']={"form":"form_SubpanelQuickCreate_sel_Selkirk_Partner","method":"query","modules":["sel_Selkirk_Client"],"group":"or","field_list":["name","id"],"populate_list":["partner","sel_selkirk_client_id_c"],"required_list":["parent_id"],"conditions":[{"name":"name","op":"like_custom","end":"%","value":""}],"order":"name","limit":"30","no_match_text":"No Match"};sqs_objects['form_SubpanelQuickCreate_sel_Selkirk_Partner_sel_selkirk_project_sel_selkirk_partner_name']={"form":"form_SubpanelQuickCreate_sel_Selkirk_Partner","method":"query","modules":["sel_Selkirk_Project"],"group":"or","field_list":["name","id"],"populate_list":["sel_selkirk_project_sel_selkirk_partner_name","sel_selkirk_project_sel_selkirk_partnersel_selkirk_project_ida"],"required_list":["parent_id"],"conditions":[{"name":"name","op":"like_custom","end":"%","value":""}],"order":"name","limit":"30","no_match_text":"No Match"};</script>{/literal}
