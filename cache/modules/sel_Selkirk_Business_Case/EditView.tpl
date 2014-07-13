

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
<div class="action_buttons">{if $bean->aclAccess("save")}<input title="{$APP.LBL_SAVE_BUTTON_TITLE}" accessKey="{$APP.LBL_SAVE_BUTTON_KEY}" class="button primary" onclick="var _form = document.getElementById('EditView'); {if $isDuplicate}_form.return_id.value=''; {/if}_form.action.value='Save'; if(check_form('EditView'))SUGAR.ajaxUI.submitForm(_form);return false;" type="submit" name="button" value="{$APP.LBL_SAVE_BUTTON_LABEL}" id="SAVE_HEADER">{/if}  {if !empty($smarty.request.return_action) && ($smarty.request.return_action == "DetailView" && !empty($smarty.request.return_id))}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=DetailView&module={$smarty.request.return_module}&record={$smarty.request.return_id}'); return false;" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" type="button" id="CANCEL_HEADER"> {elseif !empty($smarty.request.return_action) && ($smarty.request.return_action == "DetailView" && !empty($fields.id.value))}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=DetailView&module={$smarty.request.return_module}&record={$fields.id.value}'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL_HEADER"> {elseif empty($smarty.request.return_action) || empty($smarty.request.return_id) && !empty($fields.id.value)}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=index&module=sel_Selkirk_Business_Case'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL_HEADER"> {else}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=index&module={$smarty.request.return_module}&record={$smarty.request.return_id}'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL_HEADER"> {/if} {if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=sel_Selkirk_Business_Case", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}<div class="clear"></div></div>
</td>
<td align='right'>
{$PAGINATION}
</td>
</tr>
</table>{sugar_include include=$includes}
<span id='tabcounterJS'><script>SUGAR.TabFields=new Array();//this will be used to track tabindexes for references</script></span>
<div id="EditView_tabs"
class="yui-navset"
>

<ul class="yui-nav">
<li class="selected"><a id="tab0" href="javascript:void(0)"><em>{sugar_translate label='DEFAULT' module='sel_Selkirk_Business_Case'}</em></a></li>
<li class="selected"><a id="tab1" href="javascript:void(1)"><em>{sugar_translate label='LBL_EDITVIEW_PANEL1' module='sel_Selkirk_Business_Case'}</em></a></li>
<li class="selected"><a id="tab2" href="javascript:void(2)"><em>{sugar_translate label='LBL_EDITVIEW_PANEL2' module='sel_Selkirk_Business_Case'}</em></a></li>
<li class="selected"><a id="tab3" href="javascript:void(3)"><em>{sugar_translate label='LBL_EDITVIEW_PANEL3' module='sel_Selkirk_Business_Case'}</em></a></li>
<li class="selected"><a id="tab4" href="javascript:void(4)"><em>{sugar_translate label='LBL_EDITVIEW_PANEL4' module='sel_Selkirk_Business_Case'}</em></a></li>
<li class="selected"><a id="tab5" href="javascript:void(5)"><em>{sugar_translate label='LBL_EDITVIEW_PANEL5' module='sel_Selkirk_Business_Case'}</em></a></li>
<li class="selected"><a id="tab6" href="javascript:void(6)"><em>{sugar_translate label='LBL_EDITVIEW_PANEL6' module='sel_Selkirk_Business_Case'}</em></a></li>
<li class="selected"><a id="tab7" href="javascript:void(7)"><em>{sugar_translate label='LBL_EDITVIEW_PANEL7' module='sel_Selkirk_Business_Case'}</em></a></li>
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
{capture name="label" assign="label"}{sugar_translate label='LBL_NAME' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
<span class="required">*</span>
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' >
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
<td valign="top" id='department_name_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_DEPARTMENT_NAME' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' >
{counter name="panelFieldCount"}

{if strlen($fields.department_name.value) <= 0}
{assign var="value" value=$fields.department_name.default_value }
{else}
{assign var="value" value=$fields.department_name.value }
{/if}  
<input type='text' name='{$fields.department_name.name}' 
id='{$fields.department_name.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</tr>
{/capture}
{if $fieldsUsed > 0 }
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>
<td valign="top" id='date_prepared_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_DATE_PREPARED' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' colspan='3'>
{counter name="panelFieldCount"}

<span class="dateTime">
{assign var=date_value value=$fields.date_prepared.value }
<input class="date_input" autocomplete="off" type="text" name="{$fields.date_prepared.name}" id="{$fields.date_prepared.name}" value="{$date_value}" title=''  tabindex='0'    size="11" maxlength="10" >
{capture assign="other_attributes"}alt="{$APP.LBL_ENTER_DATE}" style="position:relative; top:6px" border="0" id="{$fields.date_prepared.name}_trigger"{/capture}
{sugar_getimage name="jscalendar" ext=".gif" other_attributes="$other_attributes"}
</span>
<script type="text/javascript">
Calendar.setup ({ldelim}
inputField : "{$fields.date_prepared.name}",
form : "EditView",
ifFormat : "{$CALENDAR_FORMAT}",
daFormat : "{$CALENDAR_FORMAT}",
button : "{$fields.date_prepared.name}_trigger",
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
<td valign="top" id='assigned_user_name_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_ASSIGNED_TO_NAME' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' colspan='3'>
{counter name="panelFieldCount"}

<input type="text" name="{$fields.assigned_user_name.name}" class="sqsEnabled" tabindex="0" id="{$fields.assigned_user_name.name}" size="" value="{$fields.assigned_user_name.value}" title='' autocomplete="off"  	 >
<input type="hidden" name="{$fields.assigned_user_name.id_name}" 
id="{$fields.assigned_user_name.id_name}" 
value="{$fields.assigned_user_id.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.assigned_user_name.name}" id="btn_{$fields.assigned_user_name.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_SELECT_USERS_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_ACCESSKEY_SELECT_USERS_LABEL"}"
onclick='open_popup(
"{$fields.assigned_user_name.module}", 
600, 
400, 
"", 
true, 
false, 
{literal}{"call_back_function":"set_return","form_name":"EditView","field_to_name_array":{"id":"assigned_user_id","user_name":"assigned_user_name"}}{/literal}, 
"single", 
true
);' ><img src="{sugar_getimagepath file="id-ff-select.png"}"></button><button type="button" name="btn_clr_{$fields.assigned_user_name.name}" id="btn_clr_{$fields.assigned_user_name.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_CLEAR_USERS_TITLE"}"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '{$fields.assigned_user_name.name}', '{$fields.assigned_user_name.id_name}');"  value="{sugar_translate label="LBL_ACCESSKEY_CLEAR_USERS_LABEL"}" ><img src="{sugar_getimagepath file="id-ff-clear.png"}"></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['{$form_name}_{$fields.assigned_user_name.name}']) != 'undefined'",
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
</div>    <div id='tabcontent1'>
<div id="detailpanel_2" class="{$def.templateMeta.panelClass|default:'edit view edit508'}">
{counter name="panelFieldCount" start=0 print=false assign="panelFieldCount"}
<table width="100%" border="0" cellspacing="1" cellpadding="0"  id='LBL_EDITVIEW_PANEL1'  class="yui3-skin-sam edit view panelContainer">
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>
<td valign="top" id='executive_summary_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_EXECUTIVE_SUMMARY' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' colspan='3'>
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.executive_summary.name}"><h1>Executive Summary</h1>
<p><strong>This section should provide general information on the issues surrounding the business problem and the proposed project or initiative created to address it. Usually, this section is completed last after all other sections of the business case have been written. This is because the executive summary is exactly that, a summary of the detail that is provided in subsequent sections of the document.</strong></p></span>
</tr>
{/capture}
{if $fieldsUsed > 0 }
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>
<td valign="top" id='description_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_DESCRIPTION' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' colspan='3'>
{counter name="panelFieldCount"}

{if empty($fields.description.value)}
{assign var="value" value=$fields.description.default_value }
{else}
{assign var="value" value=$fields.description.value }
{/if}  
<textarea  id='{$fields.description.name}' name='{$fields.description.name}'
rows="6" 
cols="80" 
title='What is the problem that the project will address.' tabindex="0" 
 >{$value}</textarea>
</tr>
{/capture}
{if $fieldsUsed > 0 }
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>
<td valign="top" id='anticipated_outcomes_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_ANTICIPATED_OUTCOMES' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' colspan='3'>
{counter name="panelFieldCount"}

{if empty($fields.anticipated_outcomes.value)}
{assign var="value" value=$fields.anticipated_outcomes.default_value }
{else}
{assign var="value" value=$fields.anticipated_outcomes.value }
{/if}  
<textarea  id='{$fields.anticipated_outcomes.name}' name='{$fields.anticipated_outcomes.name}'
rows="6" 
cols="80" 
title='How will project benefit organization; summary of financial impact; summary of timeline' tabindex="0" 
 >{$value}</textarea>
</tr>
{/capture}
{if $fieldsUsed > 0 }
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>
<td valign="top" id='justification_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_JUSTIFICATION' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' colspan='3'>
{counter name="panelFieldCount"}

{if empty($fields.justification.value)}
{assign var="value" value=$fields.justification.default_value }
{else}
{assign var="value" value=$fields.justification.value }
{/if}  
<textarea  id='{$fields.justification.name}' name='{$fields.justification.name}'
rows="6" 
cols="80" 
title='Why this alternative was selected over others and impact if project is not implemented' tabindex="0" 
 >{$value}</textarea>
</tr>
{/capture}
{if $fieldsUsed > 0 }
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>
<td valign="top" id='recomendation_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_RECOMENDATION' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' colspan='3'>
{counter name="panelFieldCount"}

{if empty($fields.recomendation.value)}
{assign var="value" value=$fields.recomendation.default_value }
{else}
{assign var="value" value=$fields.recomendation.value }
{/if}  
<textarea  id='{$fields.recomendation.name}' name='{$fields.recomendation.name}'
rows="6" 
cols="80" 
title='How will approach address problem; how will results be achieved' tabindex="0" 
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
<script>document.getElementById("LBL_EDITVIEW_PANEL1").style.display='none';</script>
{/if}
</div>    <div id='tabcontent2'>
<div id="detailpanel_3" class="{$def.templateMeta.panelClass|default:'edit view edit508'}">
{counter name="panelFieldCount" start=0 print=false assign="panelFieldCount"}
<table width="100%" border="0" cellspacing="1" cellpadding="0"  id='LBL_EDITVIEW_PANEL2'  class="yui3-skin-sam edit view panelContainer">
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>
<td valign="top" id='project_overview_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_PROJECT_OVERVIEW' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' colspan='3'>
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.project_overview.name}"><h1>Project Overview</h1>
<p><strong>This section describes high-level information about the project to include a description, goals and objectives, performance criteria, assumptions, constraints, and milestones. &nbsp;This section consolidates all project-specific information into one chapter and allows for an easy understanding of the project since the baseline business problem, impacts, and recommendations have already been established.</strong></p></span>
</tr>
{/capture}
{if $fieldsUsed > 0 }
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>
<td valign="top" id='current_situation_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_CURRENT_SITUATION' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' colspan='3'>
{counter name="panelFieldCount"}

{if empty($fields.current_situation.value)}
{assign var="value" value=$fields.current_situation.default_value }
{else}
{assign var="value" value=$fields.current_situation.value }
{/if}  
<textarea  id='{$fields.current_situation.name}' name='{$fields.current_situation.name}'
rows="6" 
cols="80" 
title='The problem may be process, technology, or product/service oriented' tabindex="0" 
 >{$value}</textarea>
</tr>
{/capture}
{if $fieldsUsed > 0 }
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>
<td valign="top" id='project_description_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_PROJECT_DESCRIPTION ' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' colspan='3'>
{counter name="panelFieldCount"}

{if empty($fields.project_description.value)}
{assign var="value" value=$fields.project_description.default_value }
{else}
{assign var="value" value=$fields.project_description.value }
{/if}  
<textarea  id='{$fields.project_description.name}' name='{$fields.project_description.name}'
rows="6" 
cols="80" 
title='The approach the project will use to address problem' tabindex="0" 
 >{$value}</textarea>
</tr>
{/capture}
{if $fieldsUsed > 0 }
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>
<td valign="top" id='project_assumptions_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_PROJECT_ASSUMPTIONS ' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' colspan='3'>
{counter name="panelFieldCount"}

{if empty($fields.project_assumptions.value)}
{assign var="value" value=$fields.project_assumptions.default_value }
{else}
{assign var="value" value=$fields.project_assumptions.value }
{/if}  
<textarea  id='{$fields.project_assumptions.name}' name='{$fields.project_assumptions.name}'
rows="6" 
cols="80" 
title='List initial assumptions' tabindex="0" 
 >{$value}</textarea>
</tr>
{/capture}
{if $fieldsUsed > 0 }
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>
<td valign="top" id='project_constraints_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_PROJECT_CONSTRAINTS ' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' colspan='3'>
{counter name="panelFieldCount"}

{if empty($fields.project_constraints.value)}
{assign var="value" value=$fields.project_constraints.default_value }
{else}
{assign var="value" value=$fields.project_constraints.value }
{/if}  
<textarea  id='{$fields.project_constraints.name}' name='{$fields.project_constraints.name}'
rows="6" 
cols="80" 
title='Preliminary constraints on project (i.e. resources, time, etc.)' tabindex="0" 
 >{$value}</textarea>
</tr>
{/capture}
{if $fieldsUsed > 0 }
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>
<td valign="top" id='major_project_milestones_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_MAJOR_PROJECT_MILESTONES' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' colspan='3'>
{counter name="panelFieldCount"}

{if empty($fields.major_project_milestones.value)}
{assign var="value" value=$fields.major_project_milestones.default_value }
{else}
{assign var="value" value=$fields.major_project_milestones.value }
{/if}  
<textarea  id='{$fields.major_project_milestones.name}' name='{$fields.major_project_milestones.name}'
rows="6" 
cols="80" 
title='1.8	General milestones and target completion dates' tabindex="0" 
 >{$value}</textarea>
</tr>
{/capture}
{if $fieldsUsed > 0 }
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>
<td valign="top" id='project_roll_over_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_PROJECT_ROLL_OVER' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' colspan='3'>
{counter name="panelFieldCount"}

{if empty($fields.project_roll_over.value)}
{assign var="value" value=$fields.project_roll_over.default_value }
{else}
{assign var="value" value=$fields.project_roll_over.value }
{/if}
{capture name=idname assign=idname}{$fields.project_roll_over.name}{/capture}
{if isset($fields.project_roll_over.value) && $fields.project_roll_over.value != ''}
{html_radios id="$idname"    name="$idname" title="" options=$fields.project_roll_over.options selected=$fields.project_roll_over.value separator="<br>"}
{else}
{html_radios id="$idname"   name="$idname" title="" options=$fields.project_roll_over.options selected=$fields.project_roll_over.default separator="<br>"}
{/if}
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
<script>document.getElementById("LBL_EDITVIEW_PANEL2").style.display='none';</script>
{/if}
</div>    <div id='tabcontent3'>
<div id="detailpanel_4" class="{$def.templateMeta.panelClass|default:'edit view edit508'}">
{counter name="panelFieldCount" start=0 print=false assign="panelFieldCount"}
<table width="100%" border="0" cellspacing="1" cellpadding="0"  id='LBL_EDITVIEW_PANEL3'  class="yui3-skin-sam edit view panelContainer">
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>
<td valign="top" id='strategic_alignment_hdr_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_STRATEGIC_ALIGNMENT_HDR' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' colspan='3'>
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.strategic_alignment_hdr.name}"><h1>Strategic Alignment</h1>
<p><strong>All projects should support the organization&rsquo;s strategy and strategic plans in order to add value and maintain executive and organizational support. &nbsp;This section provides an overview of the organizational strategic plans that are related to the project. &nbsp;This includes the strategic plan, what the plan calls for, and how the project supports the strategic plan.</strong></p></span>
</tr>
{/capture}
{if $fieldsUsed > 0 }
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>
<td valign="top" id='strategic_alignment_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_STRATEGIC_ALIGNMENT' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' colspan='3'>
{counter name="panelFieldCount"}

{if empty($fields.strategic_alignment.value)}
{assign var="value" value=$fields.strategic_alignment.default_value }
{else}
{assign var="value" value=$fields.strategic_alignment.value }
{/if}  
<textarea  id='{$fields.strategic_alignment.name}' name='{$fields.strategic_alignment.name}'
rows="6" 
cols="80" 
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
<script>document.getElementById("LBL_EDITVIEW_PANEL3").style.display='none';</script>
{/if}
</div>    <div id='tabcontent4'>
<div id="detailpanel_5" class="{$def.templateMeta.panelClass|default:'edit view edit508'}">
{counter name="panelFieldCount" start=0 print=false assign="panelFieldCount"}
<table width="100%" border="0" cellspacing="1" cellpadding="0"  id='LBL_EDITVIEW_PANEL4'  class="yui3-skin-sam edit view panelContainer">
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>
<td valign="top" id='cost_benefit_analysis_hdr_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_COST_BENEFIT_ANALYSIS_HDR' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' colspan='3'>
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.cost_benefit_analysis_hdr.name}"><h1>Cost/Benefit Analysis</h1>
<p><strong>Information that quantifies the financial benefits of the project as much as possible in the business case. Illustrate the costs of the project and compare them with the benefits and savings to determine if the project is worth pursuing.</strong></p></span>
</tr>
{/capture}
{if $fieldsUsed > 0 }
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>
<td valign="top" id='tangible_intangible_benefits_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_TANGIBLE_INTANGIBLE_BENEFITS' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' colspan='3'>
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.tangible_intangible_benefits.name}"><h2>Tangible &nbsp;&amp; Intangible Benefits</h2></span>
</tr>
{/capture}
{if $fieldsUsed > 0 }
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>
<td valign="top" id='new_revenues_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_NEW_REVENUES' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' colspan='3'>
{counter name="panelFieldCount"}

{if empty($fields.new_revenues.value)}
{assign var="value" value=$fields.new_revenues.default_value }
{else}
{assign var="value" value=$fields.new_revenues.value }
{/if}  
<textarea  id='{$fields.new_revenues.name}' name='{$fields.new_revenues.name}'
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
<td valign="top" id='community_profile_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_COMMUNITY_PROFILE' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' colspan='3'>
{counter name="panelFieldCount"}

{if empty($fields.community_profile.value)}
{assign var="value" value=$fields.community_profile.default_value }
{else}
{assign var="value" value=$fields.community_profile.value }
{/if}  
<textarea  id='{$fields.community_profile.name}' name='{$fields.community_profile.name}'
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
<td valign="top" id='tangible_intangible_cost_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_TANGIBLE_INTANGIBLE_COST' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' colspan='3'>
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.tangible_intangible_cost.name}"><h2>Tangible &amp; Intangible Costs</h2></span>
</tr>
{/capture}
{if $fieldsUsed > 0 }
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>
<td valign="top" id='labour_material_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_LABOUR_MATERIAL' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' colspan='3'>
{counter name="panelFieldCount"}

{if empty($fields.labour_material.value)}
{assign var="value" value=$fields.labour_material.default_value }
{else}
{assign var="value" value=$fields.labour_material.value }
{/if}  
<textarea  id='{$fields.labour_material.name}' name='{$fields.labour_material.name}'
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
<td valign="top" id='job_impact_productivity_loss_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_JOB_IMPACT_PRODUCTIVITY_LOSS' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' colspan='3'>
{counter name="panelFieldCount"}

{if empty($fields.job_impact_productivity_loss.value)}
{assign var="value" value=$fields.job_impact_productivity_loss.default_value }
{else}
{assign var="value" value=$fields.job_impact_productivity_loss.value }
{/if}  
<textarea  id='{$fields.job_impact_productivity_loss.name}' name='{$fields.job_impact_productivity_loss.name}'
rows="6" 
cols="80" 
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
<script>document.getElementById("LBL_EDITVIEW_PANEL4").style.display='none';</script>
{/if}
</div>    <div id='tabcontent5'>
<div id="detailpanel_6" class="{$def.templateMeta.panelClass|default:'edit view edit508'}">
{counter name="panelFieldCount" start=0 print=false assign="panelFieldCount"}
<table width="100%" border="0" cellspacing="1" cellpadding="0"  id='LBL_EDITVIEW_PANEL5'  class="yui3-skin-sam edit view panelContainer">
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>
<td valign="top" id='overall_revenue_cost_project_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_OVERALL_REVENUE_COST_PROJECT' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' colspan='3'>
{counter name="panelFieldCount"}

{if empty($fields.overall_revenue_cost_project.value)}
{assign var="value" value=$fields.overall_revenue_cost_project.default_value }
{else}
{assign var="value" value=$fields.overall_revenue_cost_project.value }
{/if}  
<textarea  id='{$fields.overall_revenue_cost_project.name}' name='{$fields.overall_revenue_cost_project.name}'
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
<td valign="top" id='cashflow_projects_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_CASHFLOW_PROJECTS' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' colspan='3'>
{counter name="panelFieldCount"}

{if empty($fields.cashflow_projects.value)}
{assign var="value" value=$fields.cashflow_projects.default_value }
{else}
{assign var="value" value=$fields.cashflow_projects.value }
{/if}  
<textarea  id='{$fields.cashflow_projects.name}' name='{$fields.cashflow_projects.name}'
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
<td valign="top" id='pay_back_return_on_investment_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_PAY_BACK_RETURN_ON_INVESTMENT' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' colspan='3'>
{counter name="panelFieldCount"}

{if empty($fields.pay_back_return_on_investment.value)}
{assign var="value" value=$fields.pay_back_return_on_investment.default_value }
{else}
{assign var="value" value=$fields.pay_back_return_on_investment.value }
{/if}  
<textarea  id='{$fields.pay_back_return_on_investment.name}' name='{$fields.pay_back_return_on_investment.name}'
rows="6" 
cols="80" 
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
<script>document.getElementById("LBL_EDITVIEW_PANEL5").style.display='none';</script>
{/if}
</div>    <div id='tabcontent6'>
<div id="detailpanel_7" class="{$def.templateMeta.panelClass|default:'edit view edit508'}">
{counter name="panelFieldCount" start=0 print=false assign="panelFieldCount"}
<table width="100%" border="0" cellspacing="1" cellpadding="0"  id='LBL_EDITVIEW_PANEL6'  class="yui3-skin-sam edit view panelContainer">
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>
<td valign="top" id='alternative_analysis_hrd_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_ALTERNATIVE_ANALYSIS_HRD' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' colspan='3'>
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.alternative_analysis_hrd.name}"><h1>Alternative Analysis</h1>
<p><strong>All business problems may be addressed by any number of alternative projects. &nbsp;Include a brief summary of considered alternatives including status quo or doing nothing. &nbsp;Also include reasons for not selecting alternatives.</strong></p></span>
</tr>
{/capture}
{if $fieldsUsed > 0 }
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>
<td valign="top" id='alternative_analysis_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_ALTERNATIVE_ANALYSIS' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' colspan='3'>
{counter name="panelFieldCount"}

{if empty($fields.alternative_analysis.value)}
{assign var="value" value=$fields.alternative_analysis.default_value }
{else}
{assign var="value" value=$fields.alternative_analysis.value }
{/if}  
<textarea  id='{$fields.alternative_analysis.name}' name='{$fields.alternative_analysis.name}'
rows="6" 
cols="80" 
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
<script>document.getElementById("LBL_EDITVIEW_PANEL6").style.display='none';</script>
{/if}
</div>    <div id='tabcontent7'>
<div id="detailpanel_8" class="{$def.templateMeta.panelClass|default:'edit view edit508'}">
{counter name="panelFieldCount" start=0 print=false assign="panelFieldCount"}
<table width="100%" border="0" cellspacing="1" cellpadding="0"  id='LBL_EDITVIEW_PANEL7'  class="yui3-skin-sam edit view panelContainer">
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{capture name="tr" assign="tableRow"}
<tr>
<td valign="top" id='risks_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_RISKS' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' colspan='3'>
{counter name="panelFieldCount"}

{if empty($fields.risks.value)}
{assign var="value" value=$fields.risks.default_value }
{else}
{assign var="value" value=$fields.risks.value }
{/if}  
<textarea  id='{$fields.risks.name}' name='{$fields.risks.name}'
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
<td valign="top" id='future_development_label' width='12.5%' scope="col">
{capture name="label" assign="label"}{sugar_translate label='LBL_FUTURE_DEVELOPMENT' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
</td>
{counter name="fieldsUsed"}

<td valign="top" width='37.5%' colspan='3'>
{counter name="panelFieldCount"}

{if empty($fields.future_development.value)}
{assign var="value" value=$fields.future_development.default_value }
{else}
{assign var="value" value=$fields.future_development.value }
{/if}  
<textarea  id='{$fields.future_development.name}' name='{$fields.future_development.name}'
rows="6" 
cols="80" 
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
<script>document.getElementById("LBL_EDITVIEW_PANEL7").style.display='none';</script>
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
<div class="action_buttons">{if $bean->aclAccess("save")}<input title="{$APP.LBL_SAVE_BUTTON_TITLE}" accessKey="{$APP.LBL_SAVE_BUTTON_KEY}" class="button primary" onclick="var _form = document.getElementById('EditView'); {if $isDuplicate}_form.return_id.value=''; {/if}_form.action.value='Save'; if(check_form('EditView'))SUGAR.ajaxUI.submitForm(_form);return false;" type="submit" name="button" value="{$APP.LBL_SAVE_BUTTON_LABEL}" id="SAVE_FOOTER">{/if}  {if !empty($smarty.request.return_action) && ($smarty.request.return_action == "DetailView" && !empty($smarty.request.return_id))}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=DetailView&module={$smarty.request.return_module}&record={$smarty.request.return_id}'); return false;" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" type="button" id="CANCEL_FOOTER"> {elseif !empty($smarty.request.return_action) && ($smarty.request.return_action == "DetailView" && !empty($fields.id.value))}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=DetailView&module={$smarty.request.return_module}&record={$fields.id.value}'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL_FOOTER"> {elseif empty($smarty.request.return_action) || empty($smarty.request.return_id) && !empty($fields.id.value)}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=index&module=sel_Selkirk_Business_Case'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL_FOOTER"> {else}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=index&module={$smarty.request.return_module}&record={$smarty.request.return_id}'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL_FOOTER"> {/if} {if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=sel_Selkirk_Business_Case", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}<div class="clear"></div></div>
</div>
</form>
{$set_focus_block}
<script>SUGAR.util.doWhen("document.getElementById('EditView') != null",
function(){ldelim}SUGAR.util.buildAccessKeyLabels();{rdelim});
</script>{sugar_getscript file="cache/include/javascript/sugar_grp_yui_widgets.js"}
<script type="text/javascript">
var EditView_tabs = new YAHOO.widget.TabView("EditView_tabs");
EditView_tabs.selectTab(0);
</script>
<script type="text/javascript">
YAHOO.util.Event.onContentReady("EditView",
    function () {ldelim} initEditView(document.forms.EditView) {rdelim});
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
addForm('EditView');addToValidate('EditView', 'name', 'name', true,'{/literal}{sugar_translate label='LBL_NAME' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidate('EditView', 'date_entered_date', 'date', false,'Date Created' );
addToValidate('EditView', 'date_modified_date', 'date', false,'Date Modified' );
addToValidate('EditView', 'modified_user_id', 'assigned_user_name', false,'{/literal}{sugar_translate label='LBL_MODIFIED' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidate('EditView', 'modified_by_name', 'relate', false,'{/literal}{sugar_translate label='LBL_MODIFIED_NAME' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidate('EditView', 'created_by', 'assigned_user_name', false,'{/literal}{sugar_translate label='LBL_CREATED' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidate('EditView', 'created_by_name', 'relate', false,'{/literal}{sugar_translate label='LBL_CREATED' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidate('EditView', 'description', 'text', false,'{/literal}{sugar_translate label='LBL_DESCRIPTION' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidate('EditView', 'deleted', 'bool', false,'{/literal}{sugar_translate label='LBL_DELETED' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidate('EditView', 'assigned_user_id', 'relate', false,'{/literal}{sugar_translate label='LBL_ASSIGNED_TO_ID' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidate('EditView', 'assigned_user_name', 'relate', false,'{/literal}{sugar_translate label='LBL_ASSIGNED_TO_NAME' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidate('EditView', 'date_prepared', 'date', false,'{/literal}{sugar_translate label='LBL_DATE_PREPARED' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidate('EditView', 'department_name', 'varchar', false,'{/literal}{sugar_translate label='LBL_DEPARTMENT_NAME' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidate('EditView', 'executive_summary', 'html', false,'{/literal}{sugar_translate label='LBL_EXECUTIVE_SUMMARY' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidate('EditView', 'anticipated_outcomes', 'text', false,'{/literal}{sugar_translate label='LBL_ANTICIPATED_OUTCOMES' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidate('EditView', 'recomendation', 'text', false,'{/literal}{sugar_translate label='LBL_RECOMENDATION' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidate('EditView', 'justification', 'text', false,'{/literal}{sugar_translate label='LBL_JUSTIFICATION' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidate('EditView', 'project_overview', 'html', false,'{/literal}{sugar_translate label='LBL_PROJECT_OVERVIEW' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidate('EditView', 'current_situation', 'text', false,'{/literal}{sugar_translate label='LBL_CURRENT_SITUATION' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidate('EditView', 'project_description', 'text', false,'{/literal}{sugar_translate label='LBL_PROJECT_DESCRIPTION ' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidate('EditView', 'project_assumptions', 'text', false,'{/literal}{sugar_translate label='LBL_PROJECT_ASSUMPTIONS ' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidate('EditView', 'project_constraints', 'text', false,'{/literal}{sugar_translate label='LBL_PROJECT_CONSTRAINTS ' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidate('EditView', 'major_project_milestones', 'text', false,'{/literal}{sugar_translate label='LBL_MAJOR_PROJECT_MILESTONES' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidate('EditView', 'project_roll_over', 'radioenum', false,'{/literal}{sugar_translate label='LBL_PROJECT_ROLL_OVER' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidate('EditView', 'strategic_alignment_hdr', 'html', false,'{/literal}{sugar_translate label='LBL_STRATEGIC_ALIGNMENT_HDR' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidate('EditView', 'strategic_alignment', 'text', false,'{/literal}{sugar_translate label='LBL_STRATEGIC_ALIGNMENT' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidate('EditView', 'cost_benefit_analysis_hdr', 'html', false,'{/literal}{sugar_translate label='LBL_COST_BENEFIT_ANALYSIS_HDR' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidate('EditView', 'tangible_intangible_benefits', 'html', false,'{/literal}{sugar_translate label='LBL_TANGIBLE_INTANGIBLE_BENEFITS' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidate('EditView', 'community_profile', 'text', false,'{/literal}{sugar_translate label='LBL_COMMUNITY_PROFILE' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidate('EditView', 'tangible_intangible_cost', 'html', false,'{/literal}{sugar_translate label='LBL_TANGIBLE_INTANGIBLE_COST' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidate('EditView', 'new_revenues', 'text', false,'{/literal}{sugar_translate label='LBL_NEW_REVENUES' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidate('EditView', 'labour_material', 'text', false,'{/literal}{sugar_translate label='LBL_LABOUR_MATERIAL' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidate('EditView', 'job_impact_productivity_loss', 'text', false,'{/literal}{sugar_translate label='LBL_JOB_IMPACT_PRODUCTIVITY_LOSS' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidate('EditView', 'overall_revenue_cost_project', 'text', false,'{/literal}{sugar_translate label='LBL_OVERALL_REVENUE_COST_PROJECT' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidate('EditView', 'cashflow_projects', 'text', false,'{/literal}{sugar_translate label='LBL_CASHFLOW_PROJECTS' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidate('EditView', 'pay_back_return_on_investment', 'text', false,'{/literal}{sugar_translate label='LBL_PAY_BACK_RETURN_ON_INVESTMENT' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidate('EditView', 'alternative_analysis_hrd', 'html', false,'{/literal}{sugar_translate label='LBL_ALTERNATIVE_ANALYSIS_HRD' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidate('EditView', 'alternative_analysis', 'text', false,'{/literal}{sugar_translate label='LBL_ALTERNATIVE_ANALYSIS' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidate('EditView', 'risks', 'text', false,'{/literal}{sugar_translate label='LBL_RISKS' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidate('EditView', 'future_development', 'text', false,'{/literal}{sugar_translate label='LBL_FUTURE_DEVELOPMENT' module='sel_Selkirk_Business_Case' for_js=true}{literal}' );
addToValidateBinaryDependency('EditView', 'assigned_user_name', 'alpha', false,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='sel_Selkirk_Business_Case' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_ASSIGNED_TO' module='sel_Selkirk_Business_Case' for_js=true}{literal}', 'assigned_user_id' );
</script><script language="javascript">if(typeof sqs_objects == 'undefined'){var sqs_objects = new Array;}sqs_objects['EditView_assigned_user_name']={"form":"EditView","method":"get_user_array","field_list":["user_name","id"],"populate_list":["assigned_user_name","assigned_user_id"],"required_list":["assigned_user_id"],"conditions":[{"name":"user_name","op":"like_custom","end":"%","value":""}],"limit":"30","no_match_text":"No Match"};</script>{/literal}
