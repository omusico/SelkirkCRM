

{if is_string($fields.selkirk_service_type.options)}
<input type="hidden" class="sugar_field" id="{$fields.selkirk_service_type.name}" value="{ $fields.selkirk_service_type.options }">
{ $fields.selkirk_service_type.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.selkirk_service_type.name}" value="{ $fields.selkirk_service_type.value }">
{ $fields.selkirk_service_type.options[$fields.selkirk_service_type.value]}
{/if}
