
 
{if !empty($fields.sel_selkirk_client_id_c.value)}
{capture assign="detail_url"}index.php?module=sel_Selkirk_Client&action=DetailView&record={$fields.sel_selkirk_client_id_c.value}{/capture}
<a href="{sugar_ajax_url url=$detail_url}">{/if}
<span id="sel_selkirk_client_id_c" class="sugar_field" data-id-value="{$fields.sel_selkirk_client_id_c.value}">{$fields.fund_source.value}</span>
{if !empty($fields.sel_selkirk_client_id_c.value)}</a>{/if}
