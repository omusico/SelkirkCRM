
{if strlen($fields.province.value) <= 0}
{assign var="value" value=$fields.province.default_value }
{else}
{assign var="value" value=$fields.province.value }
{/if}  
<input type='text' name='{$fields.province.name}' 
    id='{$fields.province.name}' size='30' 
    maxlength='255' 
    value='{$value}' title=''  tabindex='1'      >