{include file="sections/header.tpl"}


{*<div class="row">*}
    {*<div class="col-lg-12">*}
        {*<div class="chart-statistic-box">*}
            {*<div class="chart-txt">*}
                {*<div class="chart-txt-top">*}
                    {*<p><span class="unit">$</span><span class="number">1540</span></p>*}
                    {*<p class="caption">Week income</p>*}
                {*</div>*}
                {*<table class="tbl-data">*}
                    {*<tr>*}
                        {*<td class="price color-purple">120$</td>*}
                        {*<td>Orders</td>*}
                    {*</tr>*}
                    {*<tr>*}
                        {*<td class="price color-yellow">15$</td>*}
                        {*<td>Investments</td>*}
                    {*</tr>*}
                    {*<tr>*}
                        {*<td class="price color-lime">55$</td>*}
                        {*<td>Others</td>*}
                    {*</tr>*}
                {*</table>*}
            {*</div>*}
            {*<div class="chart-container">*}
                {*<div class="chart-container-in">*}
                    {*<div id="chart_div"></div>*}
                    {*<header class="chart-container-title">Income</header>*}
                    {*<div class="chart-container-x">*}
                        {*<div class="item"></div>*}
                        {*<div class="item">tue</div>*}
                        {*<div class="item">wed</div>*}
                        {*<div class="item">thu</div>*}
                        {*<div class="item">fri</div>*}
                        {*<div class="item">sat</div>*}
                        {*<div class="item">sun</div>*}
                        {*<div class="item">mon</div>*}
                        {*<div class="item"></div>*}
                    {*</div>*}
                    {*<div class="chart-container-y">*}
                        {*<div class="item">300</div>*}
                        {*<div class="item"></div>*}
                        {*<div class="item">250</div>*}
                        {*<div class="item"></div>*}
                        {*<div class="item">200</div>*}
                        {*<div class="item"></div>*}
                        {*<div class="item">150</div>*}
                        {*<div class="item"></div>*}
                        {*<div class="item">100</div>*}
                        {*<div class="item"></div>*}
                        {*<div class="item">50</div>*}
                        {*<div class="item"></div>*}
                    {*</div>*}
                {*</div>*}
            {*</div>*}
        {*</div>*}
    {*</div>*}

    {*<div class="col-lg-6">*}

    {*</div>*}

{*</div>*}



<div class="row">
    <div class="col-lg-3">
        <div class="widget style1 lazur-bg info-tile info-tile-alt tile-teal">
            <div class="row">
                <div class="col-xs-8">
                    <span> {$_L['Income Today']} </span>
                    {*<h3 class="font-bold">{$_c['currency_code']} {number_format($ti,2,$_c['dec_point'],$_c['thousands_sep'])}</h3>*}
                    <h3 class="font-bold amount">{$ti}</h3>
                </div>
                <div class="col-xs-4">
                    <i class="fa fa-money fa-2x text-success"></i>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-3">
        <div class="widget style1 red-bg info-tile info-tile-alt tile-danger">
            <div class="row">
                <div class="col-xs-8">
                    <span> {$_L['Expense Today']} </span>
                    {*<h3 class="font-bold">{$_c['currency_code']} {number_format($te,2,$_c['dec_point'],$_c['thousands_sep'])}</h3>*}
                    <h3 class="font-bold amount">{$te}</h3>
                </div>
                <div class="col-xs-4">
                    <i class="fa fa-database fa-5x text-danger"></i>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3">
        <div class="widget style1 lazur-bg info-tile info-tile-alt tile-success">
            <div class="row">
                <div class="col-xs-8">
                    <span> {$_L['Income This Month']} </span>
                    {*<h3 class="font-bold">{$_c['currency_code']} {number_format($mi,2,$_c['dec_point'],$_c['thousands_sep'])}</h3>*}
                    <h3 class="font-bold amount">{$mi}</h3>
                </div>
                <div class="col-xs-4">
                    <i class="fa fa-briefcase fa-5x text-success"></i>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3">
        <div class="widget style1 red-bg info-tile info-tile-alt tile-blue">
            <div class="row">
                <div class="col-xs-8">
                    <span> {$_L['Expense This Month']} </span>
                    <h3 class="font-bold amount">{$me}</h3>
                </div>
                <div class="col-xs-4">
                    <i class="fa fa-cube fa-5x text-danger"></i>
                </div>
            </div>
        </div>
    </div>
</div>

    <div class="row" id="sort_3">
        <div class="col-md-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>{$_L['Income n Expense']} - {ib_lan_get_line(date('F'))} {date('Y')}</h5>
                    <!-- <a href="{$_url}transactions/list/" class="btn btn-primary btn-xs pull-right"><i class="fa fa-list"></i> {$_L['Transactions']}</a> -->
                    <a href="#" class="btn btn-primary btn-xs pull-right"><i class="fa fa-list"></i> {$_L['Transactions']}</a>
                </div>
                <div class="ibox-content">
                    <div id="chart"></div>
                </div>
            </div>

        </div>

    </div>
    <div class="row" id="sort_2">
        <div class="col-md-6">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>{$_L['Net Worth n Account Balances']}</h5>
                    <a href="#" id="set_goal" class="btn btn-primary btn-xs pull-right"><i class="fa fa-bullseye"></i> {$_L['Set Goal']}</a>
                </div>
                <div class="ibox-content">
                    <div>
                        <h3 class="text-center amount">{$net_worth}</h3>
                        <div>
                            <span class="amount">{$net_worth}</span> {$_L['of']} <span class="amount">{$_c['networth_goal']}</span>
                            <small class="pull-right"><span>{$pg}</span>%</small>
                        </div>


                        <div class="progress progress-small">
                            <div style="width: {$pgb}%;" class="progress-bar progress-bar-{$pgc}"></div>
                        </div>
                    </div>
                    <table class="table table-striped table-bordered" style="margin-top: 26px;">
                        <th>{$_L['Account']}</th>
                        <th class="text-right">{$_L['Balance']}</th>
                        {foreach $d as $ds}
                            <tr>
                                <td>{$ds['account']}</td>
                                <td class=""><span class="amount{if $ds['balance'] < 0} text-red{/if}">{$ds['balance']}</span></td>
                            </tr>
                        {/foreach}



                    </table>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="ibox float-e-margins">
                <div class="ibox-title">

                    <h5>{$_L['Income vs Expense']} - {ib_lan_get_line(date('F'))} {date('Y')}</h5>
                </div>
                <div class="ibox-content">
                    <div id="dchart"></div>
                </div>
            </div>

        </div>
    </div>



<div class="row" id="sort_4">


    <div class="col-md-12">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>Facturas Recientes</h5>
                <!-- <a href="{$_url}invoices/list/" class="btn btn-primary btn-xs pull-right"><i class="fa fa-list"></i> {$_L['Invoices']}</a> -->
                <a href="#" class="btn btn-primary btn-xs pull-right"><i class="fa fa-list"></i> {$_L['Invoices']}</a>
            </div>
            <div class="ibox-content">
                <div class="table-wrapper">
                    <table class="table table-bordered table-hover">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>{$_L['Account']}</th>
                            <th>{$_L['Amount']}</th>
                            <th>{$_L['Invoice Date']}</th>
                            <th>{$_L['Due Date']}</th>
                            <th>{$_L['Status']}</th>
                            <th>{$_L['Type']}</th>
                            <th class="text-right">{$_L['Manage']}</th>
                        </tr>
                        </thead>
                        <tbody>
    
                        {foreach $invoices as $ds}
                            <tr>
                                <!-- <td><a href="{$_url}invoices/view/{$ds['id']}/">{$ds['invoicenum']}{if $ds['cn'] neq ''} {$ds['cn']} {else} {$ds['id']} {/if}</a> </td>
                                <td><a href="{$_url}contacts/view/{$ds['userid']}/">{$ds['account']}</a> </td> -->
                                <td><a href="#">{$ds['invoicenum']}{if $ds['cn'] neq ''} {$ds['cn']} {else} {$ds['id']} {/if}</a> </td>
                                <td><a href="#">{$ds['account']}</a> </td>
                                <td class="amount">{$ds['total']}</td>
                                <td>{date( $_c['df'], strtotime($ds['date']))}</td>
                                <td>{date( $_c['df'], strtotime($ds['duedate']))}</td>
                                <td>
                                    {ib_lan_get_line($ds['status'])}
    
                                </td>
                                <td>
                                    {if $ds['r'] eq '0'}
                                        <span class="label label-success">{$_L['Onetime']}</span>
                                    {else}
                                        <span class="label label-success">{$_L['Recurring']}</span>
                                    {/if}
                                </td>
                                <td class="text-right">
                                    <!-- <a href="{$_url}invoices/view/{$ds['id']}/" class="btn"><i class="fa fa-eye"></i></a>
                                    <a href="{$_url}invoices/edit/{$ds['id']}/" class="btn"><i class="fa fa-pencil"></i></a> -->
                                    <a href="#" class="btn"><i class="fa fa-eye"></i></a>
                                    <a href="#" class="btn"><i class="fa fa-pencil"></i></a>
                                </td>
                            </tr>
                        {/foreach}
    
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div>


</div>

    <div class="row" id="sort_3">
        <div class="col-md-6">
            <div class="ibox float-e-margins">
                <div class="ibox-title">

                    <h5>{$_L['Latest Income']}</h5>
                </div>
                <div class="ibox-content">
                    <table class="table table-striped table-bordered">
                        <th>{$_L['Date']}</th>
                        <th>{$_L['Description']}</th>
                        <th class="text-right">{$_L['Amount']}</th>
                        {foreach $inc as $incs}
                            <tr>
                                <td>{date( $_c['df'], strtotime($incs['date']))}</td>
                                <!-- <td><a href="{$_url}transactions/manage/{$incs['id']}/">{$incs['description']}</a> </td> -->
                                <td><a href="#">{$incs['description']}</a> </td>
                                <td class="text-right amount">{$incs['amount']}</td>
                            </tr>
                        {/foreach}



                    </table>
                </div>
            </div>

        </div>


        <div class="col-md-6">
            <div class="ibox float-e-margins">
                <div class="ibox-title">

                    <h5>{$_L['Latest Expense']}</h5>
                </div>
                <div class="ibox-content">
                    <table class="table table-striped table-bordered">
                        <th>{$_L['Date']}</th>
                        <th>{$_L['Description']}</th>
                        <th class="text-right">{$_L['Amount']}</th>
                        {foreach $exp as $exps}
                            <tr>
                                <td>{date( $_c['df'], strtotime($exps['date']))}</td>
                                <!-- <td><a href="{$_url}transactions/manage/{$exps['id']}/">{$exps['description']}</a> </td> -->
                                <td><a href="#">{$exps['description']}</a> </td>
                                <td class="text-right amount">{$exps['amount']}</td>
                            </tr>
                        {/foreach}



                    </table>
                </div>
            </div>

        </div>


    </div>



{include file="sections/footer.tpl"}