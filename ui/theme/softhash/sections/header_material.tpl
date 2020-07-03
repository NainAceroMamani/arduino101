<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
    <meta content="initial-scale=1.0, width=device-width" name="viewport">
    <title>Cards - Material</title>

    <!-- css -->
    <link href="ui/lib/material/css/base.min.css" rel="stylesheet">
    <link href="ui/lib/material/css/softhash.css" rel="stylesheet">

    <!-- favicon -->
    <!-- ... -->

    <!-- ie -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    {if isset($xheader)}
        {$xheader}
    {/if}
</head>
<body class="avoid-fout">
<div class="avoid-fout-indicator avoid-fout-indicator-fixed">
    <div class="progress-circular progress-circular-alt progress-circular-center">
        <div class="progress-circular-wrapper">
            <div class="progress-circular-inner">
                <div class="progress-circular-left">
                    <div class="progress-circular-spinner"></div>
                </div>
                <div class="progress-circular-gap"></div>
                <div class="progress-circular-right">
                    <div class="progress-circular-spinner"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<header class="header">
    <ul class="nav nav-list pull-left">
        <li>
            <a data-toggle="menu" href="#menu">
                <span class="icon icon-lg">menu</span>
            </a>
        </li>
    </ul>
    <a class="header-logo" href="index.html">Material</a>
    <ul class="nav nav-list pull-right">
        <li>
            <a data-toggle="menu" href="#profile">
                <span class="access-hide">John Smith</span>
                <span class="avatar"><img alt="alt text for John Smith avatar" src="ui/lib/material/images/users/avatar-001.jpg"></span>
            </a>
        </li>
    </ul>
</header>
<nav class="menu" id="menu">
    <div class="menu-scroll">
        <div class="menu-wrap">
            <div class="menu-content">
                <a class="menu-logo" href="index.html">Material</a>
                <ul class="nav">
                    <li class="active">
                        <a href="ui-card.html">Cards</a>
                    </li>
                    <li>
                        <a href="ui-collapse.html">Collapsible Regions</a>
                    </li>
                    <li>
                        <a href="ui-dropdown.html">Dropdowns</a>
                    </li>
                    <li>
                        <a href="ui-modal.html">Modals &amp; Toasts</a>
                    </li>
                    <li>
                        <a href="ui-nav.html">Navs</a>
                    </li>
                    <li>
                        <a href="ui-progress.html">Progress Bars</a>
                    </li>
                    <li>
                        <a href="ui-tab.html">Tabs</a>
                    </li>
                    <li>
                        <a href="ui-tile.html">Tiles</a>
                    </li>
                </ul>
                <hr>
                <ul class="nav">
                    <li>
                        <a href="ui-button.html">Buttons</a>
                    </li>
                    <li>
                        <a href="ui-form.html">Form Elements</a>
                        <span class="menu-collapse-toggle collapsed" data-target="#form-elements" data-toggle="collapse"><i class="icon menu-collapse-toggle-close">close</i><i class="icon menu-collapse-toggle-default">add</i></span>
                        <ul class="menu-collapse collapse" id="form-elements">
                            <li>
                                <a href="ui-form-adv.html">Form Elements <small>(materialised)</small></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="ui-icon.html">Icons</a>
                    </li>
                    <li>
                        <a href="ui-table.html">Tables</a>
                    </li>
                </ul>


                {if ($_c['invoicing'] eq '1') OR ($_c['quotes'] eq '1')}
                    <hr>
                    <ul class="nav">

                        <li class="{if $_sysfrm_menu eq 'accounts'}active{/if}">
                            <a href="page-palette.html">{$_L['Sales']}</a>
                            <span class="menu-collapse-toggle {if $_sysfrm_menu neq 'invoices'}collapsed{/if}" data-target="#nav_sub_invoices" data-toggle="collapse"><i class="icon menu-collapse-toggle-close">close</i><i class="icon menu-collapse-toggle-default">add</i></span>
                            <ul class="menu-collapse {if $_sysfrm_menu neq 'invoices'}collapse{/if}" id="nav_sub_invoices">
                                {if $_c['invoicing'] eq '1'}
                                    <li><a href="{$_url}invoices/list/">{$_L['Invoices']}</a></li>
                                    <li><a href="{$_url}invoices/add/">{$_L['New Invoice']}</a></li>
                                    <li><a href="{$_url}invoices/list-recurring/">{$_L['Recurring Invoices']}</a></li>
                                    <li><a href="{$_url}invoices/add/recurring/">{$_L['New Recurring Invoice']}</a></li>
                                {/if}

                                {if $_c['quotes'] eq '1'}
                                    <li><a href="{$_url}quotes/list/">{$_L['Quotes']}</a></li>
                                    <li><a href="{$_url}quotes/new/">{$_L['Create New Quote']}</a></li>
                                {/if}
                            </ul>
                        </li>
                    </ul>

                {/if}


                {if $_c['accounting'] eq '1'}
                    <hr>
                    <ul class="nav">

                        <li class="{if $_sysfrm_menu eq 'accounts'}active{/if}">
                            <a href="page-palette.html">{$_L['Bank n Cash']}</a>
                            <span class="menu-collapse-toggle {if $_sysfrm_menu neq 'accounts'}collapsed{/if}" data-target="#nav_sub_accounts" data-toggle="collapse"><i class="icon menu-collapse-toggle-close">close</i><i class="icon menu-collapse-toggle-default">add</i></span>
                            <ul class="menu-collapse {if $_sysfrm_menu neq 'accounts'}collapse{/if}" id="nav_sub_accounts">
                                <li><a href="{$_url}accounts/add/">{$_L['New Account']}</a></li>

                                <li><a href="{$_url}accounts/list/">{$_L['List Accounts']}</a></li>
                                <li><a href="{$_url}accounts/balances/">{$_L['Account_Balances']}</a></li>
                            </ul>
                        </li>
                    </ul>
                {/if}

                {if ($_c['invoicing'] eq '1') OR ($_c['quotes'] eq '1')}
                    <hr>
                    <ul class="nav">

                        <li class="{if $_sysfrm_menu eq 'ps'}active{/if}">
                            <a href="page-palette.html">{$_L['Products n Services']}</a>
                            <span class="menu-collapse-toggle {if $_sysfrm_menu neq 'ps'}collapsed{/if}" data-target="#nav_sub_ps" data-toggle="collapse"><i class="icon menu-collapse-toggle-close">close</i><i class="icon menu-collapse-toggle-default">add</i></span>
                            <ul class="menu-collapse {if $_sysfrm_menu neq 'ps'}collapse{/if}" id="nav_sub_ps">
                                <li><a href="{$_url}ps/p-list/">{$_L['Products']}</a></li>
                                <li><a href="{$_url}ps/p-new/">{$_L['New Product']}</a></li>
                                <li><a href="{$_url}ps/s-list/">{$_L['Services']}</a></li>
                                <li><a href="{$_url}ps/s-new/">{$_L['New Service']}</a></li>
                            </ul>
                        </li>
                    </ul>
                {/if}

                {if $_c['accounting'] eq '1'}
                <hr>
                <ul class="nav">

                    <li>
                        <a href="page-palette.html">{$_L['Reports']}</a>
                        <span class="menu-collapse-toggle {if $_sysfrm_menu neq 'reports'}collapsed{/if}" data-target="#nav_sub_reports" data-toggle="collapse"><i class="icon menu-collapse-toggle-close">close</i><i class="icon menu-collapse-toggle-default">add</i></span>
                        <ul class="menu-collapse {if $_sysfrm_menu neq 'reports'}collapse{/if}" id="nav_sub_reports">
                            <li><a href="{$_url}reports/statement/">{$_L['Account Statement']}</a></li>
                            <li><a href="{$_url}reports/income/">{$_L['Income Reports']}</a></li>
                            <li><a href="{$_url}reports/expense/">{$_L['Expense Reports']}</a></li>
                            <li><a href="{$_url}reports/income-vs-expense/">{$_L['Income Vs Expense']}</a></li>
                            <li><a href="{$_url}reports/by-date/">{$_L['Reports by Date']}</a></li>
                            {*<li><a href="{$_url}reports/cats/">{$_L['Reports by Category']}</a></li>*}
                            <li><a href="{$_url}transactions/list-income/">{$_L['All Income']}</a></li>
                            <li><a href="{$_url}transactions/list-expense/">{$_L['All Expense']}</a></li>
                            <li><a href="{$_url}transactions/list/">{$_L['All Transactions']}</a></li>
                        </ul>
                    </li>
                </ul>
                {/if}
                {if ($user['user_type']) eq 'Admin'}
                    <hr>
                    <ul class="nav">

                        <li>
                            <a href="page-palette.html">{$_L['Utilities']}</a>
                            <span class="menu-collapse-toggle {if $_sysfrm_menu neq 'util'}collapsed{/if}" data-target="#nav_sub_util" data-toggle="collapse"><i class="icon menu-collapse-toggle-close">close</i><i class="icon menu-collapse-toggle-default">add</i></span>
                            <ul class="menu-collapse {if $_sysfrm_menu neq 'util'}collapse{/if}" id="nav_sub_util">
                                <li><a href="{$_url}util/activity/">{$_L['Activity Log']}</a></li>
                                <li><a href="{$_url}util/sent-emails/">{$_L['Email Message Log']}</a></li>
                                <li><a href="{$_url}util/dbstatus/">{$_L['Database Status']}</a></li>
                            </ul>
                        </li>
                    </ul>
                {/if}
                {if ($user['user_type']) eq 'Admin'}
                    <hr>
                    <ul class="nav">

                        <li>
                            <a href="page-palette.html">S{$_L['Settings']}</a>
                            <span class="menu-collapse-toggle {if $_sysfrm_menu neq 'settings'}collapsed{/if}" data-target="#nav_sub_settings" data-toggle="collapse"><i class="icon menu-collapse-toggle-close">close</i><i class="icon menu-collapse-toggle-default">add</i></span>
                            <ul class="menu-collapse {if $_sysfrm_menu neq 'settings'}collapse{/if}" id="nav_sub_settings">
                                <li><a href="{$_url}settings/app/">{$_L['General Settings']}</a></li>
                                <li><a href="{$_url}settings/plugins/">{$_L['Plugins']}</a></li>
                                <li><a href="{$_url}settings/localisation/">{$_L['Localisation']}</a></li>
                                <li><a href="{$_url}settings/users/">{$_L['Manage Users']}</a></li>
                                <li><a href="{$_url}settings/pg/">{$_L['Payment Gateways']}</a></li>

                                {if $_c['accounting'] eq '1'}
                                    <li><a href="{$_url}settings/expense-categories/">{$_L['Expense Categories']}</a></li>
                                    <li><a href="{$_url}settings/income-categories/">{$_L['Income Categories']}</a></li>
                                    <li><a href="{$_url}settings/tags/">{$_L['Manage Tags']}</a></li>
                                    <li><a href="{$_url}settings/pmethods/">{$_L['Payment Methods']}</a></li>
                                    <li><a href="{$_url}tax/list/">{$_L['Sales Taxes']}</a></li>
                                {/if}


                                <li><a href="{$_url}settings/emls/">{$_L['Email Settings']}</a></li>
                                <li><a href="{$_url}settings/email-templates/">{$_L['Email Templates']}</a></li>
                                <li><a href="{$_url}settings/customfields/">{$_L['Custom Contact Fields']}</a></li>
                                <li><a href="{$_url}settings/automation/">{$_L['Automation Settings']}</a></li>
                                <li><a href="{$_url}settings/api/">{$_L['API Access']}</a></li>
                                <li><a href="{$_url}settings/features/">{$_L['Choose Features']}</a></li>
                            </ul>
                        </li>
                    </ul>
                    {/if}


            </div>
        </div>
    </div>
</nav>
<nav class="menu menu-right" id="profile">
    <div class="menu-scroll">
        <div class="menu-wrap">
            <div class="menu-top">
                <div class="menu-top-img">
                    <img alt="John Smith" src="ui/lib/material/images/samples/landscape.jpg">
                </div>
                <div class="menu-top-info">
                    <a class="menu-top-user" href="javascript:void(0)"><span class="avatar pull-left"><img alt="alt text for John Smith avatar" src="ui/lib/material/images/users/avatar-001.jpg"></span>John Smith</a>
                </div>
                <div class="menu-top-info-sub">
                    <small>Some additional information about John Smith</small>
                </div>
            </div>
            <div class="menu-content">
                <ul class="nav">
                    <li>
                        <a href="javascript:void(0)"><span class="icon icon-lg">account_box</span>Profile Settings</a>
                    </li>
                    <li>
                        <a href="javascript:void(0)"><span class="icon icon-lg">add_to_photos</span>Upload Photo</a>
                    </li>
                    <li>
                        <a href="page-login.html"><span class="icon icon-lg">exit_to_app</span>Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</nav>
<div class="content">
    <div class="content-heading">
        <div class="container">
            <h1 class="heading">Dashboard</h1>
        </div>
    </div>
    <div class="container">
        <section class="content-inner">
            <h2 class="content-sub-heading">Basic Cards</h2>