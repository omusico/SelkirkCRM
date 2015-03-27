
<input type="text" name="{$fields.sel_selkirk_client_sel_selkirk_service_name.name}" class="sqsEnabled" tabindex="1" id="{$fields.sel_selkirk_client_sel_selkirk_service_name.name}" size="" value="{$fields.sel_selkirk_client_sel_selkirk_service_name.value}" title='' autocomplete="off"  	 >
<input type="hidden" name="{$fields.sel_selkirk_client_sel_selkirk_service_name.id_name}" 
	id="{$fields.sel_selkirk_client_sel_selkirk_service_name.id_name}" 
	value="{$fields.sel_selkirk_client_sel_selkirk_servicesel_selkirk_client_ida.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.sel_selkirk_client_sel_selkirk_service_name.name}" id="btn_{$fields.sel_selkirk_client_sel_selkirk_service_name.name}" tabindex="1" title="{sugar_translate label="LBL_SELECT_BUTTON_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_SELECT_BUTTON_LABEL"}"
onclick='open_popup(
    "{$fields.sel_selkirk_client_sel_selkirk_service_name.module}", 
	600, 
	400, 
	"", 
	true, 
	false, 
	{literal}{"call_back_function":"set_return","form_name":"EditView","field_to_name_array":{"id":{/literal}"{$fields.sel_selkirk_client_sel_selkirk_service_name.id_name}"{literal},"name":{/literal}"{$fields.sel_selkirk_client_sel_selkirk_service_name.name}"{literal}}}{/literal}, 
	"single", 
	true
);' ><img src="{sugar_getimagepath file="id-ff-select.png"}"></button><button type="button" name="btn_clr_{$fields.sel_selkirk_client_sel_selkirk_service_name.name}" id="btn_clr_{$fields.sel_selkirk_client_sel_selkirk_service_name.name}" tabindex="1" title="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_TITLE"}"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '{$fields.sel_selkirk_client_sel_selkirk_service_name.name}', '{$fields.sel_selkirk_client_sel_selkirk_service_name.id_name}');"  value="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_LABEL"}" ><img src="{sugar_getimagepath file="id-ff-clear.png"}"></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['{$form_name}_{$fields.sel_selkirk_client_sel_selkirk_service_name.name}']) != 'undefined'",
		enableQS
);
</script>