
{if strlen($fields.fax.value) <= 0}
{assign var="value" value=$fields.fax.default_value }
{else}
{assign var="value" value=$fields.fax.value }
{/if}  
<input type='text' name='{$fields.fax.name}' 
    id='{$fields.fax.name}' size='30' 
    maxlength='20' 
    value='{$value}' title=''  tabindex='1'      >