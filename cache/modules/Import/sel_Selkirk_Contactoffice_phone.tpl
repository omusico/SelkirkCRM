
{if strlen($fields.office_phone.value) <= 0}
{assign var="value" value=$fields.office_phone.default_value }
{else}
{assign var="value" value=$fields.office_phone.value }
{/if}  
<input type='text' name='{$fields.office_phone.name}' 
    id='{$fields.office_phone.name}' size='30' 
    maxlength='20' 
    value='{$value}' title=''  tabindex='1'      >