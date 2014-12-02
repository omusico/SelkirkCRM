

    {if strlen($fields.end_date.value) <= 0}
        {assign var="value" value=$fields.end_date.default_value }
    {else}
        {assign var="value" value=$fields.end_date.value }
    {/if}



<span class="sugar_field" id="{$fields.end_date.name}">{$value}</span>
