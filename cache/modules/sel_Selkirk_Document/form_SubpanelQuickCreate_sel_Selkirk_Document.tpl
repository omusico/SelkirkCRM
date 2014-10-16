

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
<div class="action_buttons">{if $bean->aclAccess("save")}<input title="{$APP.LBL_SAVE_BUTTON_TITLE}"  class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_sel_Selkirk_Document'); disableOnUnloadEditView(); _form.action.value='Save';if(check_form('form_SubpanelQuickCreate_sel_Selkirk_Document'))return SUGAR.subpanelUtils.inlineSave(_form.id, 'sel_Selkirk_Document_subpanel_save_button');return false;" type="submit" name="sel_Selkirk_Document_subpanel_save_button" id="sel_Selkirk_Document_subpanel_save_button" value="{$APP.LBL_SAVE_BUTTON_LABEL}">{/if}  <input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" class="button" onclick="return SUGAR.subpanelUtils.cancelCreate($(this).attr('id'));return false;" type="submit" name="sel_Selkirk_Document_subpanel_cancel_button" id="sel_Selkirk_Document_subpanel_cancel_button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}">  <input title="{$APP.LBL_FULL_FORM_BUTTON_TITLE}" class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_sel_Selkirk_Document'); disableOnUnloadEditView(_form); _form.return_action.value='DetailView'; _form.action.value='EditView'; if(typeof(_form.to_pdf)!='undefined') _form.to_pdf.value='0';" type="submit" name="sel_Selkirk_Document_subpanel_full_form_button" id="sel_Selkirk_Document_subpanel_full_form_button" value="{$APP.LBL_FULL_FORM_BUTTON_LABEL}"> <input type="hidden" name="full_form" value="full_form"> {if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=sel_Selkirk_Document", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}<div class="clear"></div></div>
</td>
<td align='right'>
{$PAGINATION}
</td>
</tr>
</table>{sugar_include include=$includes}
<span id='tabcounterJS'><script>SUGAR.TabFields=new Array();//this will be used to track tabindexes for references</script></span>
<div id="form_SubpanelQuickCreate_sel_Selkirk_Document_tabs"
>
<div >
<div id="detailpanel_1" >
{counter name="panelFieldCount" start=0 print=false assign="panelFieldCount"}
<table width="100%" border="0" cellspacing="1" cellpadding="0"  id='Default_{$module}_Subpanel'  class="yui3-skin-sam edit view panelContainer">
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>
<td valign="top" id='document_name_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_NAME' module='sel_Selkirk_Document'}{/capture}
{$label|strip_semicolon}:
<span class="required">*</span>
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' >
{counter name="panelFieldCount"}

{if strlen($fields.document_name.value) <= 0}
{assign var="value" value=$fields.document_name.default_value }
{else}
{assign var="value" value=$fields.document_name.value }
{/if}  
<input type='text' name='{$fields.document_name.name}' 
id='{$fields.document_name.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      accesskey='7'  >
<td valign="top" id='uploadfile_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_FILE_UPLOAD' module='sel_Selkirk_Document'}{/capture}
{$label|strip_semicolon}:
<span class="required">*</span>
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' >
{counter name="panelFieldCount"}
{if $fields.id.value!=""}
{assign var="type" value="hidden"}
{else}
{assign var="type" value="file"}
{/if}
<input accesskey=""  tabindex="0"  name="uploadfile" type = {$type} size="30" maxlength="" onchange="setvalue(this);" value="{$fields.filename.value}">{$fields.filename.value}
</tr>
{/capture}
{if $fieldsUsed > 0 }
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>
<td valign="top" id='active_date_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_DOC_ACTIVE_DATE' module='sel_Selkirk_Document'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' >
{counter name="panelFieldCount"}

<span class="dateTime">
{assign var=date_value value=$fields.active_date.value }
<input class="date_input" autocomplete="off" type="text" name="{$fields.active_date.name}" id="{$fields.active_date.name}" value="{$date_value}" title=''  tabindex='0'    size="11" maxlength="10" >
{capture assign="other_attributes"}alt="{$APP.LBL_ENTER_DATE}" style="position:relative; top:6px" border="0" id="{$fields.active_date.name}_trigger"{/capture}
{sugar_getimage name="jscalendar" ext=".gif" other_attributes="$other_attributes"}
</span>
<script type="text/javascript">
Calendar.setup ({ldelim}
inputField : "{$fields.active_date.name}",
form : "form_SubpanelQuickCreate_sel_Selkirk_Document",
ifFormat : "{$CALENDAR_FORMAT}",
daFormat : "{$CALENDAR_FORMAT}",
button : "{$fields.active_date.name}_trigger",
singleClick : true,
dateStr : "{$date_value}",
startWeekday: {$CALENDAR_FDOW|default:'0'},
step : 1,
weekNumbers:false
{rdelim}
);
</script>
<td valign="top" id='exp_date_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_DOC_EXP_DATE' module='sel_Selkirk_Document'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' >
{counter name="panelFieldCount"}

<span class="dateTime">
{assign var=date_value value=$fields.exp_date.value }
<input class="date_input" autocomplete="off" type="text" name="{$fields.exp_date.name}" id="{$fields.exp_date.name}" value="{$date_value}" title=''  tabindex='0'    size="11" maxlength="10" >
{capture assign="other_attributes"}alt="{$APP.LBL_ENTER_DATE}" style="position:relative; top:6px" border="0" id="{$fields.exp_date.name}_trigger"{/capture}
{sugar_getimage name="jscalendar" ext=".gif" other_attributes="$other_attributes"}
</span>
<script type="text/javascript">
Calendar.setup ({ldelim}
inputField : "{$fields.exp_date.name}",
form : "form_SubpanelQuickCreate_sel_Selkirk_Document",
ifFormat : "{$CALENDAR_FORMAT}",
daFormat : "{$CALENDAR_FORMAT}",
button : "{$fields.exp_date.name}_trigger",
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
<td valign="top" id='status_id_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_DOC_STATUS' module='sel_Selkirk_Document'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' colspan='3'>
{counter name="panelFieldCount"}

{if !isset($config.enable_autocomplete) || $config.enable_autocomplete==false}
<select name="{$fields.status_id.name}" 
id="{$fields.status_id.name}" 
title=''       
>
{if isset($fields.status_id.value) && $fields.status_id.value != ''}
{html_options options=$fields.status_id.options selected=$fields.status_id.value}
{else}
{html_options options=$fields.status_id.options selected=$fields.status_id.default}
{/if}
</select>
{else}
{assign var="field_options" value=$fields.status_id.options }
{capture name="field_val"}{$fields.status_id.value}{/capture}
{assign var="field_val" value=$smarty.capture.field_val}
{capture name="ac_key"}{$fields.status_id.name}{/capture}
{assign var="ac_key" value=$smarty.capture.ac_key}
<select style='display:none' name="{$fields.status_id.name}" 
id="{$fields.status_id.name}" 
title=''          
>
{if isset($fields.status_id.value) && $fields.status_id.value != ''}
{html_options options=$fields.status_id.options selected=$fields.status_id.value}
{else}
{html_options options=$fields.status_id.options selected=$fields.status_id.default}
{/if}
</select>
<input
id="{$fields.status_id.name}-input"
name="{$fields.status_id.name}-input"
size="30"
value="{$field_val|lookup:$field_options}"
type="text" style="vertical-align: top;">
<span class="id-ff multiple">
<button type="button"><img src="{sugar_getimagepath file="id-ff-down.png"}" id="{$fields.status_id.name}-image"></button><button type="button"
id="btn-clear-{$fields.status_id.name}-input"
title="Clear"
onclick="SUGAR.clearRelateField(this.form, '{$fields.status_id.name}-input', '{$fields.status_id.name}');sync_{$fields.status_id.name}()"><img src="{sugar_getimagepath file="id-ff-clear.png"}"></button>
</span>
{literal}
<script>
SUGAR.AutoComplete.{/literal}{$ac_key}{literal} = [];
{/literal}
{literal}
(function (){
var selectElem = document.getElementById("{/literal}{$fields.status_id.name}{literal}");
if (typeof select_defaults =="undefined")
select_defaults = [];
select_defaults[selectElem.id] = {key:selectElem.value,text:''};
//get default
for (i=0;i<selectElem.options.length;i++){
if (selectElem.options[i].value==selectElem.value)
select_defaults[selectElem.id].text = selectElem.options[i].innerHTML;
}
//SUGAR.AutoComplete.{$ac_key}.ds = 
//get options array from vardefs
var options = SUGAR.AutoComplete.getOptionsArray("");
YUI().use('datasource', 'datasource-jsonschema',function (Y) {
SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.ds = new Y.DataSource.Function({
source: function (request) {
var ret = [];
for (i=0;i<selectElem.options.length;i++)
if (!(selectElem.options[i].value=='' && selectElem.options[i].innerHTML==''))
ret.push({'key':selectElem.options[i].value,'text':selectElem.options[i].innerHTML});
return ret;
}
});
});
})();
{/literal}
{literal}
YUI().use("autocomplete", "autocomplete-filters", "autocomplete-highlighters", "node","node-event-simulate", function (Y) {
{/literal}
SUGAR.AutoComplete.{$ac_key}.inputNode = Y.one('#{$fields.status_id.name}-input');
SUGAR.AutoComplete.{$ac_key}.inputImage = Y.one('#{$fields.status_id.name}-image');
SUGAR.AutoComplete.{$ac_key}.inputHidden = Y.one('#{$fields.status_id.name}');
{literal}
function SyncToHidden(selectme){
var selectElem = document.getElementById("{/literal}{$fields.status_id.name}{literal}");
var doSimulateChange = false;
if (selectElem.value!=selectme)
doSimulateChange=true;
selectElem.value=selectme;
for (i=0;i<selectElem.options.length;i++){
selectElem.options[i].selected=false;
if (selectElem.options[i].value==selectme)
selectElem.options[i].selected=true;
}
if (doSimulateChange)
SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('change');
}
//global variable 
sync_{/literal}{$fields.status_id.name}{literal} = function(){
SyncToHidden();
}
function syncFromHiddenToWidget(){
var selectElem = document.getElementById("{/literal}{$fields.status_id.name}{literal}");
//if select no longer on page, kill timer
if (selectElem==null || selectElem.options == null)
return;
var currentvalue = SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.get('value');
SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.simulate('keyup');
for (i=0;i<selectElem.options.length;i++){
if (selectElem.options[i].value==selectElem.value && document.activeElement != document.getElementById('{/literal}{$fields.status_id.name}-input{literal}'))
SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.set('value',selectElem.options[i].innerHTML);
}
}
YAHOO.util.Event.onAvailable("{/literal}{$fields.status_id.name}{literal}", syncFromHiddenToWidget);
{/literal}
SUGAR.AutoComplete.{$ac_key}.minQLen = 0;
SUGAR.AutoComplete.{$ac_key}.queryDelay = 0;
SUGAR.AutoComplete.{$ac_key}.numOptions = {$field_options|@count};
if(SUGAR.AutoComplete.{$ac_key}.numOptions >= 300) {literal}{
{/literal}
SUGAR.AutoComplete.{$ac_key}.minQLen = 1;
SUGAR.AutoComplete.{$ac_key}.queryDelay = 200;
{literal}
}
{/literal}
if(SUGAR.AutoComplete.{$ac_key}.numOptions >= 3000) {literal}{
{/literal}
SUGAR.AutoComplete.{$ac_key}.minQLen = 1;
SUGAR.AutoComplete.{$ac_key}.queryDelay = 500;
{literal}
}
{/literal}
SUGAR.AutoComplete.{$ac_key}.optionsVisible = false;
{literal}
SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.plug(Y.Plugin.AutoComplete, {
activateFirstItem: true,
{/literal}
minQueryLength: SUGAR.AutoComplete.{$ac_key}.minQLen,
queryDelay: SUGAR.AutoComplete.{$ac_key}.queryDelay,
zIndex: 99999,
{literal}
source: SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.ds,
resultTextLocator: 'text',
resultHighlighter: 'phraseMatch',
resultFilters: 'phraseMatch',
});
SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.expandHover = function(ex){
var hover = YAHOO.util.Dom.getElementsByClassName('dccontent');
if(hover[0] != null){
if (ex) {
var h = '1000px';
hover[0].style.height = h;
}
else{
hover[0].style.height = '';
}
}
}
if({/literal}SUGAR.AutoComplete.{$ac_key}.minQLen{literal} == 0){
// expand the dropdown options upon focus
SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('focus', function () {
SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.sendRequest('');
SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.optionsVisible = true;
});
}
SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('click', function(e) {
SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('click');
});
SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('dblclick', function(e) {
SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('dblclick');
});
SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('focus', function(e) {
SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('focus');
});
SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('mouseup', function(e) {
SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('mouseup');
});
SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('mousedown', function(e) {
SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('mousedown');
});
SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('blur', function(e) {
SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('blur');
SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.optionsVisible = false;
var selectElem = document.getElementById("{/literal}{$fields.status_id.name}{literal}");
//if typed value is a valid option, do nothing
for (i=0;i<selectElem.options.length;i++)
if (selectElem.options[i].innerHTML==SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.get('value'))
return;
//typed value is invalid, so set the text and the hidden to blank
SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.set('value', select_defaults[selectElem.id].text);
SyncToHidden(select_defaults[selectElem.id].key);
});
// when they click on the arrow image, toggle the visibility of the options
SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputImage.ancestor().on('click', function () {
if (SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.optionsVisible) {
SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.blur();
} else {
SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.focus();
}
});
SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.on('query', function () {
SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.set('value', '');
});
SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.on('visibleChange', function (e) {
SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.expandHover(e.newVal); // expand
});
// when they select an option, set the hidden input with the KEY, to be saved
SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.on('select', function(e) {
SyncToHidden(e.result.raw.key);
});
});
</script> 
{/literal}
{/if}
</tr>
{/capture}
{if $fieldsUsed > 0 }
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>
<td valign="top" id='description_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_DESCRIPTION' module='sel_Selkirk_Document'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' >
{counter name="panelFieldCount"}

{if empty($fields.description.value)}
{assign var="value" value=$fields.description.default_value }
{else}
{assign var="value" value=$fields.description.value }
{/if}  
<textarea  id='{$fields.description.name}' name='{$fields.description.name}'
rows="10" 
cols="120" 
title='' tabindex="0" 
 >{$value}</textarea>
<td valign="top" id='_label' width='12.5%' scope="col">
&nbsp;
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' >
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
<div class="action_buttons">{if $bean->aclAccess("save")}<input title="{$APP.LBL_SAVE_BUTTON_TITLE}"  class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_sel_Selkirk_Document'); disableOnUnloadEditView(); _form.action.value='Save';if(check_form('form_SubpanelQuickCreate_sel_Selkirk_Document'))return SUGAR.subpanelUtils.inlineSave(_form.id, 'sel_Selkirk_Document_subpanel_save_button');return false;" type="submit" name="sel_Selkirk_Document_subpanel_save_button" id="sel_Selkirk_Document_subpanel_save_button" value="{$APP.LBL_SAVE_BUTTON_LABEL}">{/if}  <input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" class="button" onclick="return SUGAR.subpanelUtils.cancelCreate($(this).attr('id'));return false;" type="submit" name="sel_Selkirk_Document_subpanel_cancel_button" id="sel_Selkirk_Document_subpanel_cancel_button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}">  <input title="{$APP.LBL_FULL_FORM_BUTTON_TITLE}" class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_sel_Selkirk_Document'); disableOnUnloadEditView(_form); _form.return_action.value='DetailView'; _form.action.value='EditView'; if(typeof(_form.to_pdf)!='undefined') _form.to_pdf.value='0';" type="submit" name="sel_Selkirk_Document_subpanel_full_form_button" id="sel_Selkirk_Document_subpanel_full_form_button" value="{$APP.LBL_FULL_FORM_BUTTON_LABEL}"> <input type="hidden" name="full_form" value="full_form"> {if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=sel_Selkirk_Document", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}<div class="clear"></div></div>
</div>
</form>
{$set_focus_block}
<!-- Begin Meta-Data Javascript -->
{sugar_getscript file="include/javascript/popup_parent_helper.js"}
{sugar_getscript file="cache/include/javascript/sugar_grp_jsolait.js"}
{sugar_getscript file="modules/Documents/documents.js"}
<!-- End Meta-Data Javascript -->
<script>SUGAR.util.doWhen("document.getElementById('EditView') != null",
function(){ldelim}SUGAR.util.buildAccessKeyLabels();{rdelim});
</script><script type="text/javascript">
YAHOO.util.Event.onContentReady("form_SubpanelQuickCreate_sel_Selkirk_Document",
    function () {ldelim} initEditView(document.forms.form_SubpanelQuickCreate_sel_Selkirk_Document) {rdelim});
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
addForm('form_SubpanelQuickCreate_sel_Selkirk_Document');addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Document', 'date_entered_date', 'date', false,'Date Created' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Document', 'date_modified_date', 'date', false,'Date Modified' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Document', 'modified_user_id', 'assigned_user_name', false,'{/literal}{sugar_translate label='LBL_MODIFIED' module='sel_Selkirk_Document' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Document', 'modified_by_name', 'relate', false,'{/literal}{sugar_translate label='LBL_MODIFIED_NAME' module='sel_Selkirk_Document' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Document', 'created_by', 'assigned_user_name', false,'{/literal}{sugar_translate label='LBL_CREATED' module='sel_Selkirk_Document' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Document', 'created_by_name', 'relate', false,'{/literal}{sugar_translate label='LBL_CREATED' module='sel_Selkirk_Document' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Document', 'description', 'text', false,'{/literal}{sugar_translate label='LBL_DESCRIPTION' module='sel_Selkirk_Document' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Document', 'deleted', 'bool', false,'{/literal}{sugar_translate label='LBL_DELETED' module='sel_Selkirk_Document' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Document', 'assigned_user_id', 'relate', false,'{/literal}{sugar_translate label='LBL_ASSIGNED_TO_ID' module='sel_Selkirk_Document' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Document', 'assigned_user_name', 'relate', false,'{/literal}{sugar_translate label='LBL_ASSIGNED_TO_NAME' module='sel_Selkirk_Document' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Document', 'document_name', 'name', true,'{/literal}{sugar_translate label='LBL_NAME' module='sel_Selkirk_Document' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Document', 'filename', 'varchar', true,'{/literal}{sugar_translate label='LBL_FILENAME' module='sel_Selkirk_Document' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Document', 'file_ext', 'varchar', false,'{/literal}{sugar_translate label='LBL_FILE_EXTENSION' module='sel_Selkirk_Document' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Document', 'file_mime_type', 'varchar', false,'{/literal}{sugar_translate label='LBL_MIME' module='sel_Selkirk_Document' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Document', 'uploadfile', 'file', true,'{/literal}{sugar_translate label='LBL_FILE_UPLOAD' module='sel_Selkirk_Document' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Document', 'active_date', 'date', false,'{/literal}{sugar_translate label='LBL_DOC_ACTIVE_DATE' module='sel_Selkirk_Document' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Document', 'exp_date', 'date', false,'{/literal}{sugar_translate label='LBL_DOC_EXP_DATE' module='sel_Selkirk_Document' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Document', 'category_id', 'enum', false,'{/literal}{sugar_translate label='LBL_SF_CATEGORY' module='sel_Selkirk_Document' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Document', 'subcategory_id', 'enum', false,'{/literal}{sugar_translate label='LBL_SF_SUBCATEGORY' module='sel_Selkirk_Document' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Document', 'status_id', 'enum', false,'{/literal}{sugar_translate label='LBL_DOC_STATUS' module='sel_Selkirk_Document' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Document', 'status', 'varchar', false,'{/literal}{sugar_translate label='LBL_DOC_STATUS' module='sel_Selkirk_Document' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Document', 'sel_selkirk_template_sel_selkirk_document_name', 'relate', false,'{/literal}{sugar_translate label='LBL_SEL_SELKIRK_TEMPLATE_SEL_SELKIRK_DOCUMENT_FROM_SEL_SELKIRK_TEMPLATE_TITLE' module='sel_Selkirk_Document' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_sel_Selkirk_Document', 'sel_selkirk_business_case_sel_selkirk_document_name', 'relate', false,'{/literal}{sugar_translate label='LBL_SEL_SELKIRK_BUSINESS_CASE_SEL_SELKIRK_DOCUMENT_FROM_SEL_SELKIRK_BUSINESS_CASE_TITLE' module='sel_Selkirk_Document' for_js=true}{literal}' );
addToValidateBinaryDependency('form_SubpanelQuickCreate_sel_Selkirk_Document', 'assigned_user_name', 'alpha', false,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='sel_Selkirk_Document' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_ASSIGNED_TO' module='sel_Selkirk_Document' for_js=true}{literal}', 'assigned_user_id' );
</script>{/literal}
