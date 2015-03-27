
{if strlen($fields.user_hash.value) <= 0}
{assign var="value" value=$fields.user_hash.default_value }
{else}
{assign var="value" value=$fields.user_hash.value }
{/if}  
<input type='text' name='{$fields.user_hash.name}' 
    id='{$fields.user_hash.name}' size='30' 
    maxlength='255' 
    value='{$value}' title=''  tabindex='1'      >