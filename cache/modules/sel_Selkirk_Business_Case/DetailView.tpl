

<script language="javascript">
{literal}
SUGAR.util.doWhen(function(){
    return $("#contentTable").length == 0;
}, SUGAR.themes.actionMenu);
{/literal}
</script>
<table cellpadding="0" cellspacing="0" border="0" width="100%" id="">
<tr>
<td class="buttons" align="left" NOWRAP width="80%">
<div class="actionsContainer">
<form action="index.php" method="post" name="DetailView" id="formDetailView">
<input type="hidden" name="module" value="{$module}">
<input type="hidden" name="record" value="{$fields.id.value}">
<input type="hidden" name="return_action">
<input type="hidden" name="return_module">
<input type="hidden" name="return_id">
<input type="hidden" name="module_tab">
<input type="hidden" name="isDuplicate" value="false">
<input type="hidden" name="offset" value="{$offset}">
<input type="hidden" name="action" value="EditView">
<input type="hidden" name="sugar_body_only">
</form>
<ul id="detail_header_action_menu" class="clickMenu fancymenu" ><li class="sugar_action_button" >{if $bean->aclAccess("edit")}<input title="{$APP.LBL_EDIT_BUTTON_TITLE}" accessKey="{$APP.LBL_EDIT_BUTTON_KEY}" class="button primary" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='sel_Selkirk_Business_Case'; _form.return_action.value='DetailView'; _form.return_id.value='{$id}'; _form.action.value='EditView';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Edit" id="edit_button" value="{$APP.LBL_EDIT_BUTTON_LABEL}">{/if} <ul id class="subnav" ><li>{if $bean->aclAccess("edit")}<input title="{$APP.LBL_DUPLICATE_BUTTON_TITLE}" accessKey="{$APP.LBL_DUPLICATE_BUTTON_KEY}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='sel_Selkirk_Business_Case'; _form.return_action.value='DetailView'; _form.isDuplicate.value=true; _form.action.value='EditView'; _form.return_id.value='{$id}';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Duplicate" value="{$APP.LBL_DUPLICATE_BUTTON_LABEL}" id="duplicate_button">{/if} </li><li>{if $bean->aclAccess("delete")}<input title="{$APP.LBL_DELETE_BUTTON_TITLE}" accessKey="{$APP.LBL_DELETE_BUTTON_KEY}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='sel_Selkirk_Business_Case'; _form.return_action.value='ListView'; _form.action.value='Delete'; if(confirm('{$APP.NTC_DELETE_CONFIRMATION}')) SUGAR.ajaxUI.submitForm(_form);" type="submit" name="Delete" value="{$APP.LBL_DELETE_BUTTON_LABEL}" id="delete_button">{/if} </li><li>{if $bean->aclAccess("edit") && $bean->aclAccess("delete")}<input title="{$APP.LBL_DUP_MERGE}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='sel_Selkirk_Business_Case'; _form.return_action.value='DetailView'; _form.return_id.value='{$id}'; _form.action.value='Step1'; _form.module.value='MergeRecords';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Merge" value="{$APP.LBL_DUP_MERGE}" id="merge_duplicate_button">{/if} </li><li>{if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=sel_Selkirk_Business_Case", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}</li></ul></li></ul>
</div>
</td>
<td align="right" width="20%">{$ADMIN_EDIT}
{$PAGINATION}
</td>
</tr>
</table>{sugar_include include=$includes}
<div id="sel_Selkirk_Business_Case_detailview_tabs"
class="yui-navset detailview_tabs"
>

<ul class="yui-nav">

<li><a id="tab0" href="javascript:void(0)"><em>{sugar_translate label='DEFAULT' module='sel_Selkirk_Business_Case'}</em></a></li>

<li><a id="tab1" href="javascript:void(0)"><em>{sugar_translate label='LBL_EDITVIEW_PANEL1' module='sel_Selkirk_Business_Case'}</em></a></li>

<li><a id="tab2" href="javascript:void(0)"><em>{sugar_translate label='LBL_EDITVIEW_PANEL2' module='sel_Selkirk_Business_Case'}</em></a></li>

<li><a id="tab3" href="javascript:void(0)"><em>{sugar_translate label='LBL_EDITVIEW_PANEL3' module='sel_Selkirk_Business_Case'}</em></a></li>

<li><a id="tab4" href="javascript:void(0)"><em>{sugar_translate label='LBL_EDITVIEW_PANEL4' module='sel_Selkirk_Business_Case'}</em></a></li>

<li><a id="tab5" href="javascript:void(0)"><em>{sugar_translate label='LBL_EDITVIEW_PANEL5' module='sel_Selkirk_Business_Case'}</em></a></li>

<li><a id="tab6" href="javascript:void(0)"><em>{sugar_translate label='LBL_EDITVIEW_PANEL6' module='sel_Selkirk_Business_Case'}</em></a></li>

<li><a id="tab7" href="javascript:void(0)"><em>{sugar_translate label='LBL_EDITVIEW_PANEL7' module='sel_Selkirk_Business_Case'}</em></a></li>
</ul>
<div class="yui-content">
<div id='tabcontent0'>
<div id='detailpanel_1' class='detail view  detail508 expanded'>
{counter name="panelFieldCount" start=0 print=false assign="panelFieldCount"}
<table id='DEFAULT' class="panelContainer" cellspacing='{$gridline}'>
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.name.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_NAME' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%'  >
{if !$fields.name.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.name.value) <= 0}
{assign var="value" value=$fields.name.default_value }
{else}
{assign var="value" value=$fields.name.value }
{/if} 
<span class="sugar_field" id="{$fields.name.name}">{$fields.name.value}</span>
{/if}
</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.department_name.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_DEPARTMENT_NAME' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%'  >
{if !$fields.department_name.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.department_name.value) <= 0}
{assign var="value" value=$fields.department_name.default_value }
{else}
{assign var="value" value=$fields.department_name.value }
{/if} 
<span class="sugar_field" id="{$fields.department_name.name}">{$fields.department_name.value}</span>
{/if}
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.date_prepared.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_DATE_PREPARED' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%' colspan='3' >
{if !$fields.date_prepared.hidden}
{counter name="panelFieldCount"}


{if strlen($fields.date_prepared.value) <= 0}
{assign var="value" value=$fields.date_prepared.default_value }
{else}
{assign var="value" value=$fields.date_prepared.value }
{/if}
<span class="sugar_field" id="{$fields.date_prepared.name}">{$value}</span>
{/if}
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.assigned_user_name.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_ASSIGNED_TO_NAME' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%' colspan='3' >
{if !$fields.assigned_user_name.hidden}
{counter name="panelFieldCount"}

<span id="assigned_user_id" class="sugar_field" data-id-value="{$fields.assigned_user_id.value}">{$fields.assigned_user_name.value}</span>
{/if}
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
</table>
</div>
{if $panelFieldCount == 0}
<script>document.getElementById("DEFAULT").style.display='none';</script>
{/if}
</div>    <div id='tabcontent1'>
<div id='detailpanel_2' class='detail view  detail508 expanded'>
{counter name="panelFieldCount" start=0 print=false assign="panelFieldCount"}
<table id='LBL_EDITVIEW_PANEL1' class="panelContainer" cellspacing='{$gridline}'>
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.executive_summary.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_EXECUTIVE_SUMMARY' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%' colspan='3' >
{if !$fields.executive_summary.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.executive_summary.name}"><h1>Executive Summary</h1>
<p><strong>This section should provide general information on the issues surrounding the business problem and the proposed project or initiative created to address it. Usually, this section is completed last after all other sections of the business case have been written. This is because the executive summary is exactly that, a summary of the detail that is provided in subsequent sections of the document.</strong></p></span>
{/if}
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.description.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_DESCRIPTION' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%' colspan='3' >
{if !$fields.description.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.description.name|escape:'html'|url2html|nl2br}">{$fields.description.value|escape:'htmlentitydecode'|escape:'html'|url2html|nl2br}</span>
{/if}
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.anticipated_outcomes.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_ANTICIPATED_OUTCOMES' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%' colspan='3' >
{if !$fields.anticipated_outcomes.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.anticipated_outcomes.name|escape:'html'|url2html|nl2br}">{$fields.anticipated_outcomes.value|escape:'htmlentitydecode'|escape:'html'|url2html|nl2br}</span>
{/if}
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.justification.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_JUSTIFICATION' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%' colspan='3' >
{if !$fields.justification.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.justification.name|escape:'html'|url2html|nl2br}">{$fields.justification.value|escape:'htmlentitydecode'|escape:'html'|url2html|nl2br}</span>
{/if}
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.recomendation.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_RECOMENDATION' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%' colspan='3' >
{if !$fields.recomendation.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.recomendation.name|escape:'html'|url2html|nl2br}">{$fields.recomendation.value|escape:'htmlentitydecode'|escape:'html'|url2html|nl2br}</span>
{/if}
</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
&nbsp;
</td>
<td width='37.5%'  >
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
</table>
</div>
{if $panelFieldCount == 0}
<script>document.getElementById("LBL_EDITVIEW_PANEL1").style.display='none';</script>
{/if}
</div>    <div id='tabcontent2'>
<div id='detailpanel_3' class='detail view  detail508 expanded'>
{counter name="panelFieldCount" start=0 print=false assign="panelFieldCount"}
<table id='LBL_EDITVIEW_PANEL2' class="panelContainer" cellspacing='{$gridline}'>
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.project_overview.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_PROJECT_OVERVIEW' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%' colspan='3' >
{if !$fields.project_overview.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.project_overview.name}"><h1>Project Overview</h1>
<p><strong>This section describes high-level information about the project to include a description, goals and objectives, performance criteria, assumptions, constraints, and milestones. &nbsp;This section consolidates all project-specific information into one chapter and allows for an easy understanding of the project since the baseline business problem, impacts, and recommendations have already been established.</strong></p></span>
{/if}
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.current_situation.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_CURRENT_SITUATION' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%' colspan='3' >
{if !$fields.current_situation.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.current_situation.name|escape:'html'|url2html|nl2br}">{$fields.current_situation.value|escape:'htmlentitydecode'|escape:'html'|url2html|nl2br}</span>
{/if}
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.project_description.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_PROJECT_DESCRIPTION ' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%' colspan='3' >
{if !$fields.project_description.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.project_description.name|escape:'html'|url2html|nl2br}">{$fields.project_description.value|escape:'htmlentitydecode'|escape:'html'|url2html|nl2br}</span>
{/if}
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.project_assumptions.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_PROJECT_ASSUMPTIONS ' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%' colspan='3' >
{if !$fields.project_assumptions.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.project_assumptions.name|escape:'html'|url2html|nl2br}">{$fields.project_assumptions.value|escape:'htmlentitydecode'|escape:'html'|url2html|nl2br}</span>
{/if}
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.project_constraints.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_PROJECT_CONSTRAINTS ' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%' colspan='3' >
{if !$fields.project_constraints.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.project_constraints.name|escape:'html'|url2html|nl2br}">{$fields.project_constraints.value|escape:'htmlentitydecode'|escape:'html'|url2html|nl2br}</span>
{/if}
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.major_project_milestones.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_MAJOR_PROJECT_MILESTONES' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%' colspan='3' >
{if !$fields.major_project_milestones.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.major_project_milestones.name|escape:'html'|url2html|nl2br}">{$fields.major_project_milestones.value|escape:'htmlentitydecode'|escape:'html'|url2html|nl2br}</span>
{/if}
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.project_roll_over.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_PROJECT_ROLL_OVER' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%' colspan='3' >
{if !$fields.project_roll_over.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.project_roll_over.name}">
{ $fields.project_roll_over.options[$fields.project_roll_over.value]}
</span>
{/if}
</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
&nbsp;
</td>
<td width='37.5%'  >
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
</table>
</div>
{if $panelFieldCount == 0}
<script>document.getElementById("LBL_EDITVIEW_PANEL2").style.display='none';</script>
{/if}
</div>    <div id='tabcontent3'>
<div id='detailpanel_4' class='detail view  detail508 expanded'>
{counter name="panelFieldCount" start=0 print=false assign="panelFieldCount"}
<table id='LBL_EDITVIEW_PANEL3' class="panelContainer" cellspacing='{$gridline}'>
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.strategic_alignment_hdr.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_STRATEGIC_ALIGNMENT_HDR' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%' colspan='3' >
{if !$fields.strategic_alignment_hdr.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.strategic_alignment_hdr.name}"><h1>Strategic Alignment</h1>
<p><strong>All projects should support the organization&rsquo;s strategy and strategic plans in order to add value and maintain executive and organizational support. &nbsp;This section provides an overview of the organizational strategic plans that are related to the project. &nbsp;This includes the strategic plan, what the plan calls for, and how the project supports the strategic plan.</strong></p></span>
{/if}
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.strategic_alignment.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_STRATEGIC_ALIGNMENT' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%' colspan='3' >
{if !$fields.strategic_alignment.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.strategic_alignment.name|escape:'html'|url2html|nl2br}">{$fields.strategic_alignment.value|escape:'htmlentitydecode'|escape:'html'|url2html|nl2br}</span>
{/if}
</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
&nbsp;
</td>
<td width='37.5%'  >
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
</table>
</div>
{if $panelFieldCount == 0}
<script>document.getElementById("LBL_EDITVIEW_PANEL3").style.display='none';</script>
{/if}
</div>    <div id='tabcontent4'>
<div id='detailpanel_5' class='detail view  detail508 expanded'>
{counter name="panelFieldCount" start=0 print=false assign="panelFieldCount"}
<table id='LBL_EDITVIEW_PANEL4' class="panelContainer" cellspacing='{$gridline}'>
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.cost_benefit_analysis_hdr.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_COST_BENEFIT_ANALYSIS_HDR' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%' colspan='3' >
{if !$fields.cost_benefit_analysis_hdr.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.cost_benefit_analysis_hdr.name}"><h1>Cost/Benefit Analysis</h1>
<p><strong>Information that quantifies the financial benefits of the project as much as possible in the business case. Illustrate the costs of the project and compare them with the benefits and savings to determine if the project is worth pursuing.</strong></p></span>
{/if}
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.tangible_intangible_benefits.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_TANGIBLE_INTANGIBLE_BENEFITS' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%' colspan='3' >
{if !$fields.tangible_intangible_benefits.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.tangible_intangible_benefits.name}"><h2>Tangible &nbsp;&amp; Intangible Benefits</h2></span>
{/if}
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.new_revenues.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_NEW_REVENUES' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%' colspan='3' >
{if !$fields.new_revenues.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.new_revenues.name|escape:'html'|url2html|nl2br}">{$fields.new_revenues.value|escape:'htmlentitydecode'|escape:'html'|url2html|nl2br}</span>
{/if}
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.community_profile.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_COMMUNITY_PROFILE' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%' colspan='3' >
{if !$fields.community_profile.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.community_profile.name|escape:'html'|url2html|nl2br}">{$fields.community_profile.value|escape:'htmlentitydecode'|escape:'html'|url2html|nl2br}</span>
{/if}
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.tangible_intangible_cost.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_TANGIBLE_INTANGIBLE_COST' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%' colspan='3' >
{if !$fields.tangible_intangible_cost.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.tangible_intangible_cost.name}"><h2>Tangible &amp; Intangible Costs</h2></span>
{/if}
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.labour_material.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_LABOUR_MATERIAL' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%' colspan='3' >
{if !$fields.labour_material.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.labour_material.name|escape:'html'|url2html|nl2br}">{$fields.labour_material.value|escape:'htmlentitydecode'|escape:'html'|url2html|nl2br}</span>
{/if}
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.job_impact_productivity_loss.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_JOB_IMPACT_PRODUCTIVITY_LOSS' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%' colspan='3' >
{if !$fields.job_impact_productivity_loss.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.job_impact_productivity_loss.name|escape:'html'|url2html|nl2br}">{$fields.job_impact_productivity_loss.value|escape:'htmlentitydecode'|escape:'html'|url2html|nl2br}</span>
{/if}
</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
&nbsp;
</td>
<td width='37.5%'  >
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
</table>
</div>
{if $panelFieldCount == 0}
<script>document.getElementById("LBL_EDITVIEW_PANEL4").style.display='none';</script>
{/if}
</div>    <div id='tabcontent5'>
<div id='detailpanel_6' class='detail view  detail508 expanded'>
{counter name="panelFieldCount" start=0 print=false assign="panelFieldCount"}
<table id='LBL_EDITVIEW_PANEL5' class="panelContainer" cellspacing='{$gridline}'>
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.overall_revenue_cost_project.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_OVERALL_REVENUE_COST_PROJECT' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%' colspan='3' >
{if !$fields.overall_revenue_cost_project.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.overall_revenue_cost_project.name|escape:'html'|url2html|nl2br}">{$fields.overall_revenue_cost_project.value|escape:'htmlentitydecode'|escape:'html'|url2html|nl2br}</span>
{/if}
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.cashflow_projects.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_CASHFLOW_PROJECTS' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%' colspan='3' >
{if !$fields.cashflow_projects.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.cashflow_projects.name|escape:'html'|url2html|nl2br}">{$fields.cashflow_projects.value|escape:'htmlentitydecode'|escape:'html'|url2html|nl2br}</span>
{/if}
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.pay_back_return_on_investment.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_PAY_BACK_RETURN_ON_INVESTMENT' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%' colspan='3' >
{if !$fields.pay_back_return_on_investment.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.pay_back_return_on_investment.name|escape:'html'|url2html|nl2br}">{$fields.pay_back_return_on_investment.value|escape:'htmlentitydecode'|escape:'html'|url2html|nl2br}</span>
{/if}
</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
&nbsp;
</td>
<td width='37.5%'  >
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
</table>
</div>
{if $panelFieldCount == 0}
<script>document.getElementById("LBL_EDITVIEW_PANEL5").style.display='none';</script>
{/if}
</div>    <div id='tabcontent6'>
<div id='detailpanel_7' class='detail view  detail508 expanded'>
{counter name="panelFieldCount" start=0 print=false assign="panelFieldCount"}
<table id='LBL_EDITVIEW_PANEL6' class="panelContainer" cellspacing='{$gridline}'>
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.alternative_analysis_hrd.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_ALTERNATIVE_ANALYSIS_HRD' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%' colspan='3' >
{if !$fields.alternative_analysis_hrd.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.alternative_analysis_hrd.name}"><h1>Alternative Analysis</h1>
<p><strong>All business problems may be addressed by any number of alternative projects. &nbsp;Include a brief summary of considered alternatives including status quo or doing nothing. &nbsp;Also include reasons for not selecting alternatives.</strong></p></span>
{/if}
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.alternative_analysis.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_ALTERNATIVE_ANALYSIS' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%' colspan='3' >
{if !$fields.alternative_analysis.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.alternative_analysis.name|escape:'html'|url2html|nl2br}">{$fields.alternative_analysis.value|escape:'htmlentitydecode'|escape:'html'|url2html|nl2br}</span>
{/if}
</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
&nbsp;
</td>
<td width='37.5%'  >
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
</table>
</div>
{if $panelFieldCount == 0}
<script>document.getElementById("LBL_EDITVIEW_PANEL6").style.display='none';</script>
{/if}
</div>    <div id='tabcontent7'>
<div id='detailpanel_8' class='detail view  detail508 expanded'>
{counter name="panelFieldCount" start=0 print=false assign="panelFieldCount"}
<table id='LBL_EDITVIEW_PANEL7' class="panelContainer" cellspacing='{$gridline}'>
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.risks.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_RISKS' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%' colspan='3' >
{if !$fields.risks.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.risks.name|escape:'html'|url2html|nl2br}">{$fields.risks.value|escape:'htmlentitydecode'|escape:'html'|url2html|nl2br}</span>
{/if}
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.future_development.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_FUTURE_DEVELOPMENT' module='sel_Selkirk_Business_Case'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%' colspan='3' >
{if !$fields.future_development.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.future_development.name|escape:'html'|url2html|nl2br}">{$fields.future_development.value|escape:'htmlentitydecode'|escape:'html'|url2html|nl2br}</span>
{/if}
</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
&nbsp;
</td>
<td width='37.5%'  >
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
</table>
</div>
{if $panelFieldCount == 0}
<script>document.getElementById("LBL_EDITVIEW_PANEL7").style.display='none';</script>
{/if}
</div>
</div>
</div>

</form>
<script>SUGAR.util.doWhen("document.getElementById('form') != null",
function(){ldelim}SUGAR.util.buildAccessKeyLabels();{rdelim});
</script><script type='text/javascript' src='{sugar_getjspath file='include/javascript/popup_helper.js'}'></script>
<script type="text/javascript" src="{sugar_getjspath file='cache/include/javascript/sugar_grp_yui_widgets.js'}"></script>
<script type="text/javascript">
var sel_Selkirk_Business_Case_detailview_tabs = new YAHOO.widget.TabView("sel_Selkirk_Business_Case_detailview_tabs");
sel_Selkirk_Business_Case_detailview_tabs.selectTab(0);
</script>