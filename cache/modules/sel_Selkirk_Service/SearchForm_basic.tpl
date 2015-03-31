
<input type='hidden' id="orderByInput" name='orderBy' value=''/>
<input type='hidden' id="sortOrder" name='sortOrder' value=''/>
{if !isset($templateMeta.maxColumnsBasic)}
	{assign var="basicMaxColumns" value=$templateMeta.maxColumns}
{else}
    {assign var="basicMaxColumns" value=$templateMeta.maxColumnsBasic}
{/if}
<script>
{literal}
	$(function() {
	var $dialog = $('<div></div>')
		.html(SUGAR.language.get('app_strings', 'LBL_SEARCH_HELP_TEXT'))
		.dialog({
			autoOpen: false,
			title: SUGAR.language.get('app_strings', 'LBL_HELP'),
			width: 700
		});
		
		$('#filterHelp').click(function() {
		$dialog.dialog('open');
		// prevent the default action, e.g., following a link
	});
	
	});
{/literal}
</script>

<table width="100%" cellspacing="0" cellpadding="0" border="0">
<tr>
      
      
	{counter assign=index}
	{math equation="left % right"
   		  left=$index
          right=$basicMaxColumns
          assign=modVal
    }
	{if ($index % $basicMaxColumns == 1 && $index != 1)}
		</tr><tr>
	{/if}
	
	<td scope="row" nowrap="nowrap" width='1%' >
		
		<label for='current_user_only_basic' >{sugar_translate label='LBL_CURRENT_USER_FILTER' module='sel_Selkirk_Service'}</label>
    	</td>

	
	<td  nowrap="nowrap" width='1%'>
			
{if strval($fields.current_user_only_basic.value) == "1" || strval($fields.current_user_only_basic.value) == "yes" || strval($fields.current_user_only_basic.value) == "on"} 
{assign var="checked" value="CHECKED"}
{else}
{assign var="checked" value=""}
{/if}
<input type="hidden" name="{$fields.current_user_only_basic.name}" value="0"> 
<input type="checkbox" id="{$fields.current_user_only_basic.name}" 
name="{$fields.current_user_only_basic.name}" 
value="1" title='' tabindex=""  accesskey='9' {$checked} >
   	   	</td>
    
      
	{counter assign=index}
	{math equation="left % right"
   		  left=$index
          right=$basicMaxColumns
          assign=modVal
    }
	{if ($index % $basicMaxColumns == 1 && $index != 1)}
		</tr><tr>
	{/if}
	
	<td scope="row" nowrap="nowrap" width='1%' >
		
		<label for='assigned_user_name_basic' >{sugar_translate label='LBL_ASSIGNED_TO_NAME' module='sel_Selkirk_Service'}</label>
    	</td>

	
	<td  nowrap="nowrap" width='1%'>
			
<input type="text" name="{$fields.assigned_user_name_basic.name}"  class="sqsEnabled"   id="{$fields.assigned_user_name_basic.name}" size="" value="{$fields.assigned_user_name_basic.value}" title='' autocomplete="off"  >
<input type="hidden" name="{$fields.assigned_user_id_basic.name}" id="{$fields.assigned_user_id_basic.name}" value="{$fields.assigned_user_id_basic.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.assigned_user_name_basic.name}"   title="{$APP.LBL_SELECT_BUTTON_TITLE}" class="button firstChild" value="{$APP.LBL_SELECT_BUTTON_LABEL}" onclick='open_popup("{$fields.assigned_user_name_basic.module}", 600, 400, "", true, false, {literal}{"call_back_function":"set_return","form_name":"search_form","field_to_name_array":{"id":"assigned_user_id_basic","user_name":"assigned_user_name_basic"}}{/literal}, "single", true);'>{sugar_getimage alt=$app_strings.LBL_ID_FF_SELECT name="id-ff-select" ext=".png" other_attributes=''}</button><button type="button" name="btn_clr_{$fields.assigned_user_name_basic.name}"   title="{$APP.LBL_CLEAR_BUTTON_TITLE}" class="button lastChild" onclick="this.form.{$fields.assigned_user_name_basic.name}.value = ''; this.form.{$fields.assigned_user_id_basic.name}.value = '';" value="{$APP.LBL_CLEAR_BUTTON_LABEL}">{sugar_getimage name="id-ff-clear" alt=$app_strings.LBL_ID_FF_CLEAR ext=".png" other_attributes=''}</button>
</span>

   	   	</td>
    
      
	{counter assign=index}
	{math equation="left % right"
   		  left=$index
          right=$basicMaxColumns
          assign=modVal
    }
	{if ($index % $basicMaxColumns == 1 && $index != 1)}
		</tr><tr>
	{/if}
	
	<td scope="row" nowrap="nowrap" width='1%' >
		
		<label for='sel_selkirk_project_sel_selkirk_service_name_basic' >{sugar_translate label='LBL_SEL_SELKIRK_PROJECT_SEL_SELKIRK_SERVICE_FROM_SEL_SELKIRK_PROJECT_TITLE' module='sel_Selkirk_Service'}</label>
    	</td>

	
	<td  nowrap="nowrap" width='1%'>
			
<input type="text" name="{$fields.sel_selkirk_project_sel_selkirk_service_name_basic.name}"  class="sqsEnabled"   id="{$fields.sel_selkirk_project_sel_selkirk_service_name_basic.name}" size="" value="{$fields.sel_selkirk_project_sel_selkirk_service_name_basic.value}" title='' autocomplete="off"  >
<input type="hidden"  id="{$fields.sel_selkirk_project_sel_selkirk_servicesel_selkirk_project_ida_basic.name}" value="{$fields.sel_selkirk_project_sel_selkirk_servicesel_selkirk_project_ida_basic.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.sel_selkirk_project_sel_selkirk_service_name_basic.name}"   title="{$APP.LBL_SELECT_BUTTON_TITLE}" class="button firstChild" value="{$APP.LBL_SELECT_BUTTON_LABEL}" onclick='open_popup("{$fields.sel_selkirk_project_sel_selkirk_service_name_basic.module}", 600, 400, "", true, false, {literal}{"call_back_function":"set_return","form_name":"search_form","field_to_name_array":{"id":"sel_selkirk_project_sel_selkirk_servicesel_selkirk_project_ida_basic","name":"sel_selkirk_project_sel_selkirk_service_name_basic"}}{/literal}, "single", true);'>{sugar_getimage alt=$app_strings.LBL_ID_FF_SELECT name="id-ff-select" ext=".png" other_attributes=''}</button><button type="button" name="btn_clr_{$fields.sel_selkirk_project_sel_selkirk_service_name_basic.name}"   title="{$APP.LBL_CLEAR_BUTTON_TITLE}" class="button lastChild" onclick="this.form.{$fields.sel_selkirk_project_sel_selkirk_service_name_basic.name}.value = ''; this.form.{$fields.sel_selkirk_project_sel_selkirk_servicesel_selkirk_project_ida_basic.name}.value = '';" value="{$APP.LBL_CLEAR_BUTTON_LABEL}">{sugar_getimage name="id-ff-clear" alt=$app_strings.LBL_ID_FF_CLEAR ext=".png" other_attributes=''}</button>
</span>

   	   	</td>
    
      
	{counter assign=index}
	{math equation="left % right"
   		  left=$index
          right=$basicMaxColumns
          assign=modVal
    }
	{if ($index % $basicMaxColumns == 1 && $index != 1)}
		</tr><tr>
	{/if}
	
	<td scope="row" nowrap="nowrap" width='1%' >
		
		<label for='sel_selkirk_client_sel_selkirk_service_name_basic' >{sugar_translate label='LBL_SEL_SELKIRK_CLIENT_SEL_SELKIRK_SERVICE_FROM_SEL_SELKIRK_CLIENT_TITLE' module='sel_Selkirk_Service'}</label>
    	</td>

	
	<td  nowrap="nowrap" width='1%'>
			
<input type="text" name="{$fields.sel_selkirk_client_sel_selkirk_service_name_basic.name}"  class="sqsEnabled"   id="{$fields.sel_selkirk_client_sel_selkirk_service_name_basic.name}" size="" value="{$fields.sel_selkirk_client_sel_selkirk_service_name_basic.value}" title='' autocomplete="off"  >
<input type="hidden"  id="{$fields.sel_selkirk_client_sel_selkirk_servicesel_selkirk_client_ida_basic.name}" value="{$fields.sel_selkirk_client_sel_selkirk_servicesel_selkirk_client_ida_basic.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.sel_selkirk_client_sel_selkirk_service_name_basic.name}"   title="{$APP.LBL_SELECT_BUTTON_TITLE}" class="button firstChild" value="{$APP.LBL_SELECT_BUTTON_LABEL}" onclick='open_popup("{$fields.sel_selkirk_client_sel_selkirk_service_name_basic.module}", 600, 400, "", true, false, {literal}{"call_back_function":"set_return","form_name":"search_form","field_to_name_array":{"id":"sel_selkirk_client_sel_selkirk_servicesel_selkirk_client_ida_basic","name":"sel_selkirk_client_sel_selkirk_service_name_basic"}}{/literal}, "single", true);'>{sugar_getimage alt=$app_strings.LBL_ID_FF_SELECT name="id-ff-select" ext=".png" other_attributes=''}</button><button type="button" name="btn_clr_{$fields.sel_selkirk_client_sel_selkirk_service_name_basic.name}"   title="{$APP.LBL_CLEAR_BUTTON_TITLE}" class="button lastChild" onclick="this.form.{$fields.sel_selkirk_client_sel_selkirk_service_name_basic.name}.value = ''; this.form.{$fields.sel_selkirk_client_sel_selkirk_servicesel_selkirk_client_ida_basic.name}.value = '';" value="{$APP.LBL_CLEAR_BUTTON_LABEL}">{sugar_getimage name="id-ff-clear" alt=$app_strings.LBL_ID_FF_CLEAR ext=".png" other_attributes=''}</button>
</span>

   	   	</td>
    {if $formData|@count >= $basicMaxColumns+1}
    </tr>
    <tr>
	<td colspan="{$searchTableColumnCount}">
    {else}
	<td class="sumbitButtons">
    {/if}
        <input tabindex="2" title="{$APP.LBL_SEARCH_BUTTON_TITLE}" onclick="SUGAR.savedViews.setChooser();" class="button" type="submit" name="button" value="{$APP.LBL_SEARCH_BUTTON_LABEL}" id="search_form_submit"/>&nbsp;
	    <input tabindex='2' title='{$APP.LBL_CLEAR_BUTTON_TITLE}' onclick='SUGAR.searchForm.clear_form(this.form); return false;' class='button' type='button' name='clear' id='search_form_clear' value='{$APP.LBL_CLEAR_BUTTON_LABEL}'/>
        {if $HAS_ADVANCED_SEARCH}
	    &nbsp;&nbsp;<a id="advanced_search_link" onclick="SUGAR.searchForm.searchFormSelect('{$module}|advanced_search','{$module}|basic_search')" href="javascript:void(0);" accesskey="{$APP.LBL_ADV_SEARCH_LNK_KEY}" >{$APP.LNK_ADVANCED_SEARCH}</a>
	    {/if}
    </td>
	<td class="helpIcon" width="*"><img alt="Help" border='0' id="filterHelp" src='{sugar_getimagepath file="help-dashlet.gif"}'></td>
	</tr>
</table>{literal}<script language="javascript">if(typeof sqs_objects == 'undefined'){var sqs_objects = new Array;}sqs_objects['search_form_modified_by_name_basic']={"form":"search_form","method":"get_user_array","field_list":["user_name","id"],"populate_list":["modified_by_name_basic","modified_user_id_basic"],"required_list":["modified_user_id"],"conditions":[{"name":"user_name","op":"like_custom","end":"%","value":""}],"limit":"30","no_match_text":"No Match"};sqs_objects['search_form_created_by_name_basic']={"form":"search_form","method":"get_user_array","field_list":["user_name","id"],"populate_list":["created_by_name_basic","created_by_basic"],"required_list":["created_by"],"conditions":[{"name":"user_name","op":"like_custom","end":"%","value":""}],"limit":"30","no_match_text":"No Match"};sqs_objects['search_form_assigned_user_name_basic']={"form":"search_form","method":"get_user_array","field_list":["user_name","id"],"populate_list":["assigned_user_name_basic","assigned_user_id_basic"],"required_list":["assigned_user_id"],"conditions":[{"name":"user_name","op":"like_custom","end":"%","value":""}],"limit":"30","no_match_text":"No Match"};sqs_objects['search_form_sel_selkirk_client_sel_selkirk_service_name_basic']={"form":"search_form","method":"query","modules":["sel_Selkirk_Client"],"group":"or","field_list":["name","id"],"populate_list":["sel_selkirk_client_sel_selkirk_service_name_basic","sel_selkirk_client_sel_selkirk_servicesel_selkirk_client_ida_basic"],"required_list":["parent_id"],"conditions":[{"name":"name","op":"like_custom","end":"%","value":""}],"order":"name","limit":"30","no_match_text":"No Match"};sqs_objects['search_form_sel_selkirk_project_sel_selkirk_service_name_basic']={"form":"search_form","method":"query","modules":["sel_Selkirk_Project"],"group":"or","field_list":["name","id"],"populate_list":["sel_selkirk_project_sel_selkirk_service_name_basic","sel_selkirk_project_sel_selkirk_servicesel_selkirk_project_ida_basic"],"required_list":["parent_id"],"conditions":[{"name":"name","op":"like_custom","end":"%","value":""}],"order":"name","limit":"30","no_match_text":"No Match"};</script>{/literal}