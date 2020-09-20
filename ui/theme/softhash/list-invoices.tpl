{include file="sections/header.tpl"}
<div class="ibox float-e-margins">
    <div class="ibox-title">
        {if $view_type == 'filter'}
<h5>{$_L['Total']} : {$total_invoice}</h5>
            {else}
            <h5>Lista de Facturas</h5>
        {/if}
        <div class="ibox-tools">
            {if $view_type neq 'filter'}
                <a href="{$_url}invoices/list/filter/" class="btn btn-primary btn-xs"><i class="fa fa-search"></i> Buscar</a>
                {else}
                <a href="{$_url}invoices/list/" class="btn btn-primary btn-xs"><i class="fa fa-arrow-left"></i> Atras</a>
            {/if}
            {*<a href="{$_url}invoices/list-recurring/" class="btn btn-success btn-xs"><i class="fa fa-repeat"></i> {$_L['Manage Recurring Invoices']}</a>*}
            <a href="{$_url}invoices/add/" class="btn btn-primary btn-xs"><i class="fa fa-plus"></i> {$_L['Add Invoice']}</a>

        </div>
    </div>
    <div class="ibox-content table-wrapper">

        {if $view_type == 'filter'}
            <form class="form-horizontal" method="post" action="{$_url}customers/list/">
                <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon">
                                <span class="fa fa-search"></span>
                            </div>
                            <input type="text" name="name" id="foo_filter" class="form-control" placeholder="{$_L['Search']}..."/>

                        </div>

                </div>
            </form>
        {/if}

        <table class="table table-bordered table-hover sys_table footable" {if $view_type == 'filter'} data-filter="#foo_filter" data-page-size="50" {/if}>
            <thead>
            <tr>
                <th>#</th>
                <th>{$_L['Account']}</th>
                <th>{$_L['Amount']}</th>
                <th>{$_L['Invoice Date']}</th>
                <th>{$_L['Due Date']}</th>
                <th>
                    {$_L['Status']}
                </th>
                <th>{$_L['Type']}</th>
                <th class="text-right">{$_L['Manage']}</th>
            </tr>
            </thead>
            <tbody>

            {foreach $d as $ds}
                <tr>
                    <td><a href="{$_url}invoices/view/{$ds['id']}/">{$ds['invoicenum']}{if $ds['cn'] neq ''} {$ds['cn']} {else} {$ds['id']} {/if}</a> </td>
                    <td><a href="{$_url}contacts/view/{$ds['userid']}/">{$ds['account']}</a> </td>
                    <td class="amount">{$ds['total']}</td>
                    <td>{date( $_c['df'], strtotime($ds['date']))}</td>
                    <td>{date( $_c['df'], strtotime($ds['duedate']))}</td>
                    <td>

                        {if $ds['status'] eq 'Unpaid'}
                            <span class="label label-danger">{ib_lan_get_line($ds['status'])}</span>
                            {elseif $ds['status'] eq 'Paid'}
                            <span class="label label-success">{ib_lan_get_line($ds['status'])}</span>
                        {elseif $ds['status'] eq 'Partially Paid'}
                            <span class="label label-info">{ib_lan_get_line($ds['status'])}</span>
                        {elseif $ds['status'] eq 'Cancelled'}
                            <span class="label">{ib_lan_get_line($ds['status'])}</span>
                        {else}
                            {ib_lan_get_line($ds['status'])}
                        {/if}



                    </td>
                    <td>
                        {if $ds['r'] eq '0'}
                            <span class="label label-success">{$_L['Onetime']}</span>
                          {else}
                            <span class="label label-success">{$_L['Recurring']}</span>
                    {/if}
                    </td>
                    <td class="text-right">
                        <a href="{$_url}invoices/view/{$ds['id']}/" class="btn"><i class="fa fa-eye"></i></a>
                        <a href="{$_url}invoices/edit/{$ds['id']}/" class="btn"><i class="fa fa-pencil"></i></a>
                        <a href="#" class="btn cdelete" id="iid{$ds['id']}"><i class="fa fa-trash"></i></a>
                    </td>
                </tr>
            {/foreach}

            </tbody>

            {if $view_type == 'filter'}
                <tfoot>
                <tr>
                    <td colspan="8">
                        <ul class="pagination">
                        </ul>
                    </td>
                </tr>
                </tfoot>
            {/if}

        </table>
        <div class="d-flex">
            {$paginator['contents']}
            {if $view_type != 'filter'}
            <span>{if $paginator['found'] > 0}{$_L['Page']} {$paginator['page']} {$_L['of']} {$paginator['lastpage']}{/if}</span>
            {/if}        
        </div>
    </div>
</div>
{include file="sections/footer.tpl"}