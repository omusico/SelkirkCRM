

    {if strlen($fields.start_date.value) <= 0}
        {assign var="value" value=$fields.start_date.default_value }
    {else}
        {assign var="value" value=$fields.start_date.value }
    {/if}



<span class="sugar_field" id="{$fields.start_date.name}">{$value}</span>
