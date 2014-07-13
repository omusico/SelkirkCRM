
{if strlen($fields.extension.value) <= 0}
{assign var="value" value=$fields.extension.default_value }
{else}
{assign var="value" value=$fields.extension.value }
{/if}  
<input type='text' name='{$fields.extension.name}' 
    id='{$fields.extension.name}' size='30' 
    maxlength='10' 
    value='{$value}' title=''  tabindex='1'      >