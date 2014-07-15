

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
<ul id="detail_header_action_menu" class="clickMenu fancymenu" ><li class="sugar_action_button" >{if $bean->aclAccess("edit")}<input title="{$APP.LBL_EDIT_BUTTON_TITLE}" accessKey="{$APP.LBL_EDIT_BUTTON_KEY}" class="button primary" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='sel_Selkirk_Client'; _form.return_action.value='DetailView'; _form.return_id.value='{$id}'; _form.action.value='EditView';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Edit" id="edit_button" value="{$APP.LBL_EDIT_BUTTON_LABEL}">{/if} <ul id class="subnav" ><li>{if $bean->aclAccess("edit")}<input title="{$APP.LBL_DUPLICATE_BUTTON_TITLE}" accessKey="{$APP.LBL_DUPLICATE_BUTTON_KEY}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='sel_Selkirk_Client'; _form.return_action.value='DetailView'; _form.isDuplicate.value=true; _form.action.value='EditView'; _form.return_id.value='{$id}';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Duplicate" value="{$APP.LBL_DUPLICATE_BUTTON_LABEL}" id="duplicate_button">{/if} </li><li>{if $bean->aclAccess("delete")}<input title="{$APP.LBL_DELETE_BUTTON_TITLE}" accessKey="{$APP.LBL_DELETE_BUTTON_KEY}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='sel_Selkirk_Client'; _form.return_action.value='ListView'; _form.action.value='Delete'; if(confirm('{$APP.NTC_DELETE_CONFIRMATION}')) SUGAR.ajaxUI.submitForm(_form);" type="submit" name="Delete" value="{$APP.LBL_DELETE_BUTTON_LABEL}" id="delete_button">{/if} </li><li>{if $bean->aclAccess("edit") && $bean->aclAccess("delete")}<input title="{$APP.LBL_DUP_MERGE}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='sel_Selkirk_Client'; _form.return_action.value='DetailView'; _form.return_id.value='{$id}'; _form.action.value='Step1'; _form.module.value='MergeRecords';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Merge" value="{$APP.LBL_DUP_MERGE}" id="merge_duplicate_button">{/if} </li><li>{if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=sel_Selkirk_Client", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}</li></ul></li></ul>
</div>
</td>
<td align="right" width="20%">{$ADMIN_EDIT}
{$PAGINATION}
</td>
</tr>
</table>{sugar_include include=$includes}
<div id="sel_Selkirk_Client_detailview_tabs"
class="yui-navset detailview_tabs"
>

<ul class="yui-nav">

<li><a id="tab0" href="javascript:void(0)"><em>{sugar_translate label='DEFAULT' module='sel_Selkirk_Client'}</em></a></li>

<li><a id="tab1" href="javascript:void(0)"><em>{sugar_translate label='LBL_EDITVIEW_PANEL1' module='sel_Selkirk_Client'}</em></a></li>

<li><a id="tab2" href="javascript:void(0)"><em>{sugar_translate label='LBL_EDITVIEW_PANEL2' module='sel_Selkirk_Client'}</em></a></li>

<li><a id="tab3" href="javascript:void(0)"><em>{sugar_translate label='LBL_EDITVIEW_PANEL3' module='sel_Selkirk_Client'}</em></a></li>
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
{capture name="label" assign="label"}{sugar_translate label='LBL_NAME' module='sel_Selkirk_Client'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%' colspan='3' >
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
{if !$fields.address_line_1.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_ADDRESS_LINE_1' module='sel_Selkirk_Client'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%' colspan='3' >
{if !$fields.address_line_1.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.address_line_1.value) <= 0}
{assign var="value" value=$fields.address_line_1.default_value }
{else}
{assign var="value" value=$fields.address_line_1.value }
{/if} 
<span class="sugar_field" id="{$fields.address_line_1.name}">{$fields.address_line_1.value}</span>
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
{if !$fields.address_line_2.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_ADDRESS_LINE_2' module='sel_Selkirk_Client'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%' colspan='3' >
{if !$fields.address_line_2.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.address_line_2.value) <= 0}
{assign var="value" value=$fields.address_line_2.default_value }
{else}
{assign var="value" value=$fields.address_line_2.value }
{/if} 
<span class="sugar_field" id="{$fields.address_line_2.name}">{$fields.address_line_2.value}</span>
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
{if !$fields.city.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_CITY' module='sel_Selkirk_Client'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%'  >
{if !$fields.city.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.city.value) <= 0}
{assign var="value" value=$fields.city.default_value }
{else}
{assign var="value" value=$fields.city.value }
{/if} 
<span class="sugar_field" id="{$fields.city.name}">{$fields.city.value}</span>
{/if}
</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.province.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_PROVINCE' module='sel_Selkirk_Client'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%'  >
{if !$fields.province.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.province.value) <= 0}
{assign var="value" value=$fields.province.default_value }
{else}
{assign var="value" value=$fields.province.value }
{/if} 
<span class="sugar_field" id="{$fields.province.name}">{$fields.province.value}</span>
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
{if !$fields.postal_code.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_POSTAL_CODE' module='sel_Selkirk_Client'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%'  >
{if !$fields.postal_code.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.postal_code.value) <= 0}
{assign var="value" value=$fields.postal_code.default_value }
{else}
{assign var="value" value=$fields.postal_code.value }
{/if} 
<span class="sugar_field" id="{$fields.postal_code.name}">{$fields.postal_code.value}</span>
{/if}
</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.country.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_COUNTRY' module='sel_Selkirk_Client'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%'  >
{if !$fields.country.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.country.value) <= 0}
{assign var="value" value=$fields.country.default_value }
{else}
{assign var="value" value=$fields.country.value }
{/if} 
<span class="sugar_field" id="{$fields.country.name}">{$fields.country.value}</span>
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
{if !$fields.phone.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_PHONE' module='sel_Selkirk_Client'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%'  >
{if !$fields.phone.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.phone.value) <= 0}
{assign var="value" value=$fields.phone.default_value }
{else}
{assign var="value" value=$fields.phone.value }
{/if} 
<span class="sugar_field" id="{$fields.phone.name}">{$fields.phone.value}</span>
{/if}
</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.extension.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_EXTENSION' module='sel_Selkirk_Client'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%'  >
{if !$fields.extension.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.extension.value) <= 0}
{assign var="value" value=$fields.extension.default_value }
{else}
{assign var="value" value=$fields.extension.value }
{/if} 
<span class="sugar_field" id="{$fields.extension.name}">{$fields.extension.value}</span>
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
{if !$fields.email.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_EMAIL' module='sel_Selkirk_Client'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%'  >
{if !$fields.email.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.email.value) <= 0}
{assign var="value" value=$fields.email.default_value }
{else}
{assign var="value" value=$fields.email.value }
{/if} 
<span class="sugar_field" id="{$fields.email.name}">{$fields.email.value}</span>
{/if}
</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.fax.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_FAX' module='sel_Selkirk_Client'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%'  >
{if !$fields.fax.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.fax.value) <= 0}
{assign var="value" value=$fields.fax.default_value }
{else}
{assign var="value" value=$fields.fax.value }
{/if} 
<span class="sugar_field" id="{$fields.fax.name}">{$fields.fax.value}</span>
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
{if !$fields.primary_contact.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_PRIMARY_CONTACT' module='sel_Selkirk_Client'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%'  >
{if !$fields.primary_contact.hidden}
{counter name="panelFieldCount"}

{if !empty($fields.sel_selkirk_contact_id_c.value)}
{capture assign="detail_url"}index.php?module=sel_Selkirk_Contact&action=DetailView&record={$fields.sel_selkirk_contact_id_c.value}{/capture}
<a href="{sugar_ajax_url url=$detail_url}">{/if}
<span id="sel_selkirk_contact_id_c" class="sugar_field" data-id-value="{$fields.sel_selkirk_contact_id_c.value}">{$fields.primary_contact.value}</span>
{if !empty($fields.sel_selkirk_contact_id_c.value)}</a>{/if}
{/if}
</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.sekirk_client_type_01.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_SEKIRK_CLIENT_TYPE_01' module='sel_Selkirk_Client'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%'  >
{if !$fields.sekirk_client_type_01.hidden}
{counter name="panelFieldCount"}


{if is_string($fields.sekirk_client_type_01.options)}
<input type="hidden" class="sugar_field" id="{$fields.sekirk_client_type_01.name}" value="{ $fields.sekirk_client_type_01.options }">
{ $fields.sekirk_client_type_01.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.sekirk_client_type_01.name}" value="{ $fields.sekirk_client_type_01.value }">
{ $fields.sekirk_client_type_01.options[$fields.sekirk_client_type_01.value]}
{/if}
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
{if !$fields.website.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_WEBSITE' module='sel_Selkirk_Client'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%' colspan='3' >
{if !$fields.website.hidden}
{counter name="panelFieldCount"}

{capture name=getLink assign=link}{$fields.website.value}{/capture}
{if !empty($link)}
{capture name=getStart assign=linkStart}{$link|substr:0:7}{/capture}
<span class="sugar_field" id="{$fields.website.name}">
<a href='{$link|to_url}' target='_self' >{$link}</a>
</span>
{/if}
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
{if !$fields.selkirk_naics_code.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_SELKIRK_NAICS_CODE' module='sel_Selkirk_Client'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%'  >
{if !$fields.selkirk_naics_code.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.selkirk_naics_code.value) <= 0}
{assign var="value" value=$fields.selkirk_naics_code.default_value }
{else}
{assign var="value" value=$fields.selkirk_naics_code.value }
{/if} 
<span class="sugar_field" id="{$fields.selkirk_naics_code.name}">{$fields.selkirk_naics_code.value}</span>
{/if}
</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.assigned_user_name.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_ASSIGNED_TO_NAME' module='sel_Selkirk_Client'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%'  >
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
{if !$fields.legal_form_of_business.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_LEGAL_FORM_OF_BUSINESS' module='sel_Selkirk_Client'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%'  >
{if !$fields.legal_form_of_business.hidden}
{counter name="panelFieldCount"}


{if is_string($fields.legal_form_of_business.options)}
<input type="hidden" class="sugar_field" id="{$fields.legal_form_of_business.name}" value="{ $fields.legal_form_of_business.options }">
{ $fields.legal_form_of_business.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.legal_form_of_business.name}" value="{ $fields.legal_form_of_business.value }">
{ $fields.legal_form_of_business.options[$fields.legal_form_of_business.value]}
{/if}
{/if}
</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.number_of_employees.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_NUMBER_OF_EMPLOYEES' module='sel_Selkirk_Client'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%'  >
{if !$fields.number_of_employees.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.number_of_employees.name}">
{sugar_number_format precision=0 var=$fields.number_of_employees.value}
</span>
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
{if !$fields.selkirk_industry_sector.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_SELKIRK_INDUSTRY_SECTOR' module='sel_Selkirk_Client'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%'  >
{if !$fields.selkirk_industry_sector.hidden}
{counter name="panelFieldCount"}


{if is_string($fields.selkirk_industry_sector.options)}
<input type="hidden" class="sugar_field" id="{$fields.selkirk_industry_sector.name}" value="{ $fields.selkirk_industry_sector.options }">
{ $fields.selkirk_industry_sector.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.selkirk_industry_sector.name}" value="{ $fields.selkirk_industry_sector.value }">
{ $fields.selkirk_industry_sector.options[$fields.selkirk_industry_sector.value]}
{/if}
{/if}
</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.years_in_business.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_YEARS_IN_BUSINESS' module='sel_Selkirk_Client'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%'  >
{if !$fields.years_in_business.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.years_in_business.name}">
{sugar_number_format precision=0 var=$fields.years_in_business.value}
</span>
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
{if !$fields.selkirk_organization_type.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_SELKIRK_ORGANIZATION_TYPE' module='sel_Selkirk_Client'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%' colspan='3' >
{if !$fields.selkirk_organization_type.hidden}
{counter name="panelFieldCount"}


{if is_string($fields.selkirk_organization_type.options)}
<input type="hidden" class="sugar_field" id="{$fields.selkirk_organization_type.name}" value="{ $fields.selkirk_organization_type.options }">
{ $fields.selkirk_organization_type.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.selkirk_organization_type.name}" value="{ $fields.selkirk_organization_type.value }">
{ $fields.selkirk_organization_type.options[$fields.selkirk_organization_type.value]}
{/if}
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
{if !$fields.selkirk_goverment_type.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_SELKIRK_GOVERMENT_TYPE' module='sel_Selkirk_Client'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%' colspan='3' >
{if !$fields.selkirk_goverment_type.hidden}
{counter name="panelFieldCount"}


{if is_string($fields.selkirk_goverment_type.options)}
<input type="hidden" class="sugar_field" id="{$fields.selkirk_goverment_type.name}" value="{ $fields.selkirk_goverment_type.options }">
{ $fields.selkirk_goverment_type.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.selkirk_goverment_type.name}" value="{ $fields.selkirk_goverment_type.value }">
{ $fields.selkirk_goverment_type.options[$fields.selkirk_goverment_type.value]}
{/if}
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
<script>document.getElementById("LBL_EDITVIEW_PANEL3").style.display='none';</script>
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
var sel_Selkirk_Client_detailview_tabs = new YAHOO.widget.TabView("sel_Selkirk_Client_detailview_tabs");
sel_Selkirk_Client_detailview_tabs.selectTab(0);
</script>