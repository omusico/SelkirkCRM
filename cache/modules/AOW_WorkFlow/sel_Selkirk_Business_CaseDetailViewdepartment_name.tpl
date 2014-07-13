
{if strlen($fields.department_name.value) <= 0}
{assign var="value" value=$fields.department_name.default_value }
{else}
{assign var="value" value=$fields.department_name.value }
{/if} 
<span class="sugar_field" id="{$fields.department_name.name}">{$fields.department_name.value}</span>
