
{if strlen($fields.postal_code.value) <= 0}
{assign var="value" value=$fields.postal_code.default_value }
{else}
{assign var="value" value=$fields.postal_code.value }
{/if}  
<input type='text' name='{$fields.postal_code.name}' 
    id='{$fields.postal_code.name}' size='30' 
    maxlength='255' 
    value='{$value}' title=''  tabindex='1'      >