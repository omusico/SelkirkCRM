

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
<ul id="detail_header_action_menu" class="clickMenu fancymenu" ><li class="sugar_action_button" >{if $bean->aclAccess("edit")}<input title="{$APP.LBL_EDIT_BUTTON_TITLE}" accessKey="{$APP.LBL_EDIT_BUTTON_KEY}" class="button primary" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='sel_Selkirk_Document'; _form.return_action.value='DetailView'; _form.return_id.value='{$id}'; _form.action.value='EditView';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Edit" id="edit_button" value="{$APP.LBL_EDIT_BUTTON_LABEL}">{/if} <ul id class="subnav" ><li>{if $bean->aclAccess("edit")}<input title="{$APP.LBL_DUPLICATE_BUTTON_TITLE}" accessKey="{$APP.LBL_DUPLICATE_BUTTON_KEY}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='sel_Selkirk_Document'; _form.return_action.value='DetailView'; _form.isDuplicate.value=true; _form.action.value='EditView'; _form.return_id.value='{$id}';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Duplicate" value="{$APP.LBL_DUPLICATE_BUTTON_LABEL}" id="duplicate_button">{/if} </li><li>{if $bean->aclAccess("delete")}<input title="{$APP.LBL_DELETE_BUTTON_TITLE}" accessKey="{$APP.LBL_DELETE_BUTTON_KEY}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='sel_Selkirk_Document'; _form.return_action.value='ListView'; _form.action.value='Delete'; if(confirm('{$APP.NTC_DELETE_CONFIRMATION}')) SUGAR.ajaxUI.submitForm(_form);" type="submit" name="Delete" value="{$APP.LBL_DELETE_BUTTON_LABEL}" id="delete_button">{/if} </li></ul></li></ul>
</div>
</td>
<td align="right" width="20%">{$ADMIN_EDIT}
{$PAGINATION}
</td>
</tr>
</table>{sugar_include include=$includes}
<div id="sel_Selkirk_Document_detailview_tabs"
>
<div >
<div id='detailpanel_1' class='detail view  detail508 expanded'>
{counter name="panelFieldCount" start=0 print=false assign="panelFieldCount"}
<table id='DEFAULT' class="panelContainer" cellspacing='{$gridline}'>
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.document_name.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_NAME' module='sel_Selkirk_Document'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%'  >
{if !$fields.document_name.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.document_name.value) <= 0}
{assign var="value" value=$fields.document_name.default_value }
{else}
{assign var="value" value=$fields.document_name.value }
{/if} 
<span class="sugar_field" id="{$fields.document_name.name}">{$fields.document_name.value}</span>
{/if}
</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.uploadfile.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_FILE_UPLOAD' module='sel_Selkirk_Document'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%'  >
{if !$fields.uploadfile.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.uploadfile.name}">
<a href="index.php?entryPoint=download&id={$fields.id.value}&type={$module}" class="tabDetailViewDFLink" target='_blank'>{$fields.uploadfile.value}</a>
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
{if !$fields.active_date.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_DOC_ACTIVE_DATE' module='sel_Selkirk_Document'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%'  >
{if !$fields.active_date.hidden}
{counter name="panelFieldCount"}


{if strlen($fields.active_date.value) <= 0}
{assign var="value" value=$fields.active_date.default_value }
{else}
{assign var="value" value=$fields.active_date.value }
{/if}
<span class="sugar_field" id="{$fields.active_date.name}">{$value}</span>
{/if}
</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.exp_date.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_DOC_EXP_DATE' module='sel_Selkirk_Document'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%'  >
{if !$fields.exp_date.hidden}
{counter name="panelFieldCount"}


{if strlen($fields.exp_date.value) <= 0}
{assign var="value" value=$fields.exp_date.default_value }
{else}
{assign var="value" value=$fields.exp_date.value }
{/if}
<span class="sugar_field" id="{$fields.exp_date.name}">{$value}</span>
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
{if !$fields.status_id.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_DOC_STATUS' module='sel_Selkirk_Document'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%' colspan='3' >
{if !$fields.status_id.hidden}
{counter name="panelFieldCount"}


{if is_string($fields.status_id.options)}
<input type="hidden" class="sugar_field" id="{$fields.status_id.name}" value="{ $fields.status_id.options }">
{ $fields.status_id.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.status_id.name}" value="{ $fields.status_id.value }">
{ $fields.status_id.options[$fields.status_id.value]}
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
{if !$fields.description.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_DESCRIPTION' module='sel_Selkirk_Document'}{/capture}
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
{if !$fields.sel_selkirk_business_case_sel_selkirk_document_name.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_SEL_SELKIRK_BUSINESS_CASE_SEL_SELKIRK_DOCUMENT_FROM_SEL_SELKIRK_BUSINESS_CASE_TITLE' module='sel_Selkirk_Document'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%'  >
{if !$fields.sel_selkirk_business_case_sel_selkirk_document_name.hidden}
{counter name="panelFieldCount"}

{if !empty($fields.sel_selkirae30ss_case_ida.value)}
{capture assign="detail_url"}index.php?module=sel_Selkirk_Business_Case&action=DetailView&record={$fields.sel_selkirae30ss_case_ida.value}{/capture}
<a href="{sugar_ajax_url url=$detail_url}">{/if}
<span id="sel_selkirae30ss_case_ida" class="sugar_field" data-id-value="{$fields.sel_selkirae30ss_case_ida.value}">{$fields.sel_selkirk_business_case_sel_selkirk_document_name.value}</span>
{if !empty($fields.sel_selkirae30ss_case_ida.value)}</a>{/if}
{/if}
</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.sel_selkirk_template_sel_selkirk_document_name.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_SEL_SELKIRK_TEMPLATE_SEL_SELKIRK_DOCUMENT_FROM_SEL_SELKIRK_TEMPLATE_TITLE' module='sel_Selkirk_Document'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td width='37.5%'  >
{if !$fields.sel_selkirk_template_sel_selkirk_document_name.hidden}
{counter name="panelFieldCount"}

{if !empty($fields.sel_selkir95fdemplate_ida.value)}
{capture assign="detail_url"}index.php?module=sel_Selkirk_Template&action=DetailView&record={$fields.sel_selkir95fdemplate_ida.value}{/capture}
<a href="{sugar_ajax_url url=$detail_url}">{/if}
<span id="sel_selkir95fdemplate_ida" class="sugar_field" data-id-value="{$fields.sel_selkir95fdemplate_ida.value}">{$fields.sel_selkirk_template_sel_selkirk_document_name.value}</span>
{if !empty($fields.sel_selkir95fdemplate_ida.value)}</a>{/if}
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
</div>
</div>

</form>
<script>SUGAR.util.doWhen("document.getElementById('form') != null",
function(){ldelim}SUGAR.util.buildAccessKeyLabels();{rdelim});
</script>