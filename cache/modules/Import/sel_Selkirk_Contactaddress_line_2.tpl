
{if strlen($fields.address_line_2.value) <= 0}
{assign var="value" value=$fields.address_line_2.default_value }
{else}
{assign var="value" value=$fields.address_line_2.value }
{/if}  
<input type='text' name='{$fields.address_line_2.name}' 
    id='{$fields.address_line_2.name}' size='30' 
    maxlength='255' 
    value='{$value}' title=''  tabindex='1'      >