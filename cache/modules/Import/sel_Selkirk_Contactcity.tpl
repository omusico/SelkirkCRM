
{if strlen($fields.city.value) <= 0}
{assign var="value" value=$fields.city.default_value }
{else}
{assign var="value" value=$fields.city.value }
{/if}  
<input type='text' name='{$fields.city.name}' 
    id='{$fields.city.name}' size='30' 
    maxlength='255' 
    value='{$value}' title=''  tabindex='1'      >