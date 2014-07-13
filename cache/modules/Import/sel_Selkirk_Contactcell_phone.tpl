
{if strlen($fields.cell_phone.value) <= 0}
{assign var="value" value=$fields.cell_phone.default_value }
{else}
{assign var="value" value=$fields.cell_phone.value }
{/if}  
<input type='text' name='{$fields.cell_phone.name}' 
    id='{$fields.cell_phone.name}' size='30' 
    maxlength='20' 
    value='{$value}' title=''  tabindex='1'      >