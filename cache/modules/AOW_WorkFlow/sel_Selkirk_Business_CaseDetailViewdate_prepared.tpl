

    {if strlen($fields.date_prepared.value) <= 0}
        {assign var="value" value=$fields.date_prepared.default_value }
    {else}
        {assign var="value" value=$fields.date_prepared.value }
    {/if}



<span class="sugar_field" id="{$fields.date_prepared.name}">{$value}</span>
