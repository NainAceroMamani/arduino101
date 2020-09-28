<!DOCTYPE html>
<html lang="es">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>{$_title}</title>
    <link rel="shortcut icon" href="{$app_url}sysfrm/uploads/icon/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" sizes="57x57" href="{$app_url}sysfrm/uploads/icon/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="{$app_url}sysfrm/uploads/icon/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="{$app_url}sysfrm/uploads/icon/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="{$app_url}sysfrm/uploads/icon/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="{$app_url}sysfrm/uploads/icon/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="{$app_url}sysfrm/uploads/icon/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="{$app_url}sysfrm/uploads/icon/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="{$app_url}sysfrm/uploads/icon/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="{$app_url}sysfrm/uploads/icon/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192"  href="{$app_url}sysfrm/uploads/icon/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="{$app_url}sysfrm/uploads/icon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="{$app_url}sysfrm/uploads/icon/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="{$app_url}sysfrm/uploads/icon/favicon-16x16.png">
    <link rel="manifest" href="{$app_url}sysfrm/uploads/icon/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="{$app_url}sysfrm/uploads/icon/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">

    <link href="{$_theme}/css/bootstrap.min.css" rel="stylesheet">
    <link href="{$_theme}/lib/fa/css/font-awesome.min.css" rel="stylesheet">
    <link href="{$_theme}/lib/icheck/skins/all.css" rel="stylesheet">
    <link href="{$app_url}ui/lib/css/animate.css" rel="stylesheet">
    <link href="{$app_url}ui/lib/toggle/bootstrap-toggle.min.css" rel="stylesheet">
    <link href="{$_theme}/css/style.css?ver=2.0.1" rel="stylesheet">
    <link href="{$_theme}/css/component.css?ver=2.0.1" rel="stylesheet">
    <link href="{$_theme}/css/custom.css" rel="stylesheet">

    <link href="{$app_url}ui/lib/icons/css/ibilling_icons.css" rel="stylesheet">
    <link href="{$_theme}/css/material.css" rel="stylesheet">

    <link href="{$_theme}/css/{$_c['nstyle']}.css" rel="stylesheet">

{foreach $plugin_ui_header_admin as $plugin_ui_header_add}
    {$plugin_ui_header_add}
{/foreach}

    {if $_c['rtl'] eq '1'}
        <link href="{$_theme}/css/bootstrap-rtl.min.css" rel="stylesheet">
        <link href="{$_theme}/css/style-rtl.min.css" rel="stylesheet">
    {/if}

    {if isset($xheader)}
        {$xheader}
    {/if}
</head>

<body class="fixed-nav {if $_c['mininav']}mini-navbar{/if}">
<section>
    <div id="wrapper">
        <div id="sidebar" class="sidebar">
            <nav class="navbar-default navbar-static-side" role="navigation">
                <div class="sidebar-collapse">
                    <ul class="nav" id="side-menu">
    
                        {$admin_extra_nav[0]}
                        <li {if $_sysfrm_menu eq 'dashboard'}class="active"{/if}><a href="{$_url}{$_c['redirect_url']}/"><i class="fa fa-th-large"></i> <span class="nav-label">{$_L['Dashboard']}</span></a></li>
                        {$admin_extra_nav[1]}
                        <li class="{if $_sysfrm_menu eq 'contacts'}active{/if}">
                            <a href="#"><i class="icon-users"></i> <span class="nav-label">{$_L['CRM']}</span><span class="fa fa-angle-right"></span></a>
                            <ul class="nav nav-second-level">
                                <li><a href="{$_url}contacts/add/">{$_L['Add Contact']}</a></li>
    
                                <li><a href="{$_url}contacts/list/">{$_L['List Contacts']}</a></li>
                                <li><a href="{$_url}contacts/groups/">Grupos</a></li>
                                {foreach $sub_menu_admin['crm'] as $sm_crm}
    
                                    {$sm_crm}
    
    
                                {/foreach}
                            </ul>
                        </li>
                        {$admin_extra_nav[2]}
                        {if $_c['accounting'] eq '1'}
                            <li class="{if $_sysfrm_menu eq 'transactions'}active{/if}">
                                <a href="#"><i class="fa fa-database"></i> <span class="nav-label">{$_L['Transactions']}</span><span class="fa fa-angle-right"></span></a>
                                <ul class="nav nav-second-level">
                                    <li><a href="{$_url}transactions/deposit/">Depósitos</a></li>
                                    <li><a href="{$_url}transactions/expense/">Gastos</a></li>
                                    <li><a href="{$_url}transactions/transfer/">Transferencias</a></li>
                                    <li><a href="{$_url}transactions/list/">{$_L['View Transactions']}</a></li>
                                    <li><a href="{$_url}generate/balance-sheet/">{$_L['Balance Sheet']}</a></li>
                                </ul>
                            </li>
                        {/if}
                        {$admin_extra_nav[3]}
                        {*<li {if $_sysfrm_menu eq 'tasks'}class="active"{/if}><a href="{$_url}tasks/me"><i class="fa fa-tasks"></i> <span class="nav-label">Tasks</span></a></li>*}
    
                        {if ($_c['invoicing'] eq '1') OR ($_c['quotes'] eq '1')}
    
                            <li class="{if $_sysfrm_menu eq 'invoices'}active{/if}">
                                <a href="#"><i class="icon-credit-card-1"></i> <span class="nav-label">{$_L['Sales']}</span><span class="fa fa-angle-right"></span></a>
                                <ul class="nav nav-second-level">
    
                                    {if $_c['invoicing'] eq '1'}
                                        <li><a href="{$_url}invoices/list/">{$_L['Invoices']}</a></li>
                                        <li><a href="{$_url}invoices/list-recurring/">{$_L['Recurring Invoices']}</a></li>
                                    {/if}
    
                                    {if $_c['quotes'] eq '1'}
                                        <li><a href="{$_url}quotes/list/">{$_L['Quotes']}</a></li>
                                        <!-- <li><a href="{$_url}quotes/new/">{$_L['Create New Quote']}</a></li> -->
                                    {/if}
    
                                </ul>
                            </li>
    
                        {/if}
                        {$admin_extra_nav[4]}
                        {if $_c['accounting'] eq '1'}
                            <li class="{if $_sysfrm_menu eq 'accounts'}active{/if}">
                                <a href="#"><i class="fa fa-building-o"></i> <span class="nav-label">{$_L['Bank n Cash']}</span><span class="fa fa-angle-right"></span></a>
                                <ul class="nav nav-second-level">
                                    <li><a href="{$_url}accounts/add/">{$_L['New Account']}</a></li>
    
                                    <li><a href="{$_url}accounts/list/">{$_L['List Accounts']}</a></li>
                                    <li><a href="{$_url}accounts/balances/">{$_L['Account_Balances']}</a></li>
    
                                </ul>
                            </li>
                        {/if}
                        {if ($_c['invoicing'] eq '1') OR ($_c['quotes'] eq '1')}
                        <li class="{if $_sysfrm_menu eq 'ps'}active{/if}">
                            <a href="#"><i class="fa fa-cube"></i> <span class="nav-label">{$_L['Products n Services']}</span><span class="fa fa-angle-right"></span></a>
                            <ul class="nav nav-second-level">
                                <li><a href="{$_url}ps/p-list/">{$_L['Products']}</a></li>
                                <!-- <li><a href="{$_url}ps/p-new/">{$_L['New Product']}</a></li> -->
                                <li><a href="{$_url}ps/s-list/">{$_L['Services']}</a></li>
                                <!-- <li><a href="{$_url}ps/s-new/">{$_L['New Service']}</a></li> -->


                            </ul>
                        </li>
                    {/if}
                    {$admin_extra_nav[6]}
    
                    {if $_c['accounting'] eq '1'}

                        <li class="{if $_sysfrm_menu eq 'reports'}active{/if}">
                            <a href="#"><i class="fa fa-bar-chart-o"></i> <span class="nav-label">{$_L['Reports']} </span><span class="fa fa-angle-right"></span></a>
                            <ul class="nav nav-second-level">


                                <li><a href="{$_url}reports/statement/">{$_L['Account Statement']}</a></li>
                                <li><a href="{$_url}reports/income/">{$_L['Income Reports']}</a></li>
                                <li><a href="{$_url}reports/expense/">{$_L['Expense Reports']}</a></li>
                                <li><a href="{$_url}reports/income-vs-expense/">Ingresos vs Gastos</a></li>
                                <li><a href="{$_url}reports/by-date/">{$_L['Reports by Date']}</a></li>


                                {foreach $sub_menu_admin['reports'] as $sm_report}

                                    {$sm_report}


                                {/foreach}


                            </ul>
                        </li>

                    {/if}

                    {if ($user['user_type']) eq 'Admin'}

                        <li class="{if $_sysfrm_menu eq 'util'}active{/if}">
                            <a href="#"><i class="icon-article"></i> <span class="nav-label">{$_L['Utilities']} </span><span class="fa fa-angle-right"></span></a>
                            <ul class="nav nav-second-level">
                                <li><a href="{$_url}util/activity/">{$_L['Activity Log']}</a></li>
                                <li><a href="{$_url}util/sent-emails/">{$_L['Email Message Log']}</a></li>
                                <li><a href="{$_url}util/dbstatus/">{$_L['Database Status']}</a></li>
                            </ul>
                        </li>

                    {/if}


                    <li class="{if $_sysfrm_menu eq 'my_account'}active{/if}">
                        <a href="#"><i class="icon-user-1"></i> <span class="nav-label">{$_L['My Account']} </span><span class="fa fa-angle-right"></span></a>
                        <ul class="nav nav-second-level">

                            <li><a href="{$_url}settings/users-edit/{$user['id']}/">{$_L['Edit Profile']}</a></li>



                        </ul>
                    </li>
                    {if ($user['user_type']) eq 'Admin'}
                    <li class="{if $_sysfrm_menu eq 'settings'}active{/if}">
                        <a href="#"><i class="icon-params"></i> <span class="nav-label">{$_L['Settings']} </span><span class="fa fa-angle-right"></span></a>
                        <ul class="nav nav-second-level">
                            <!-- <li><a href="{$_url}settings/app/">{$_L['General Settings']}</a></li> -->
                            <!-- <li><a href="{$_url}settings/plugins/">{$_L['Plugins']}</a></li> -->
                            <!-- <li><a href="{$_url}settings/localisation/">{$_L['Localisation']}</a></li> -->
                            <li><a href="{$_url}settings/users/">{$_L['Manage Users']}</a></li>
                            <!-- <li><a href="{$_url}settings/pg/">{$_L['Payment Gateways']}</a></li> -->

                            {if $_c['accounting'] eq '1'}
                                <!-- <li><a href="{$_url}settings/expense-categories/">{$_L['Expense Categories']}</a></li>
                                <li><a href="{$_url}settings/income-categories/">{$_L['Income Categories']}</a></li> -->
                                <!-- <li><a href="{$_url}settings/tags/">{$_L['Manage Tags']}</a></li> -->
                                <!-- <li><a href="{$_url}settings/pmethods/">{$_L['Payment Methods']}</a></li> -->
                                <li><a href="{$_url}tax/list/">{$_L['Sales Taxes']}</a></li>
                            {/if}


                            <li><a href="{$_url}settings/emls/">{$_L['Email Settings']}</a></li>
                            <li><a href="{$_url}settings/email-templates/">{$_L['Email Templates']}</a></li>
                            <!-- <li><a href="{$_url}settings/customfields/">{$_L['Custom Contact Fields']}</a></li> -->
                            <!-- <li><a href="{$_url}settings/automation/">{$_L['Automation Settings']}</a></li> -->
                            <!-- <li><a href="{$_url}settings/api/">{$_L['API Access']}</a></li> -->
                            {foreach $sub_menu_admin['settings'] as $sm_settings}

                                {$sm_settings}


                            {/foreach}
                            <!-- <li><a href="{$_url}settings/features/">{$_L['Choose Features']}</a></li> -->
                            {*<li><a href="{$_url}settings/about/">{$_L['About']}</a></li>*}
                        </ul>
                    </li>
                    {/if} 
                                         
                    <!--  -->
                    </ul>
    
                </div>
            </nav>
        </div>
        <div id="page-wrapper" class="gray-bg">
            <div class="row border-bottom">
                <nav class="navbar navbar-fixed-top white-bg" role="navigation" style="margin-bottom: 0">

                    <div class="navbar-logo">
                        <img class="logo" src="{$app_url}sysfrm/uploads/system/logo-img.png" alt="Logo">
                        <img class="hidden-xs logo" src="{$app_url}sysfrm/uploads/system/logo.svg" alt="Logo">
                    </div>
                    
                    <div class="navbar-container">
                        <div class="left-nav">
                            <div class="navbar-header">
                                <a class="navbar-minimalize minimalize-styl-2" href="#"><svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-text-right" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M6 12.5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5zm-4-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5zm4-3a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5zm-4-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5z"/>
                                  </svg></a>
                            </div>
                            <div class="nav-form hidden-xs">
                                <form class="m-n p-n" method="post" action="{$_url}contacts/list/">
                                    <div class="input-group full-width">
                                        <input type="text" class="form-control" name="name" placeholder="Buscar clientes">
                                        <button type="submit" class="btn btn-search"><i class="fa fa-search"></i></button>
                                    </div>
                                </form>
                            </div>
                        </div> 

                        <ul class="nav navbar-top-links navbar-right">    
                            {*<li>*}
                            {*<a class="toggle_fullscreen" href="#" data-rel="tooltip" data-placement="top" data-original-title="Fullscreen">*}
                            {*<i class="fa fa-arrows-alt"></i></a>*}
    
                            {*</li>*}
    
                            <li class="dropdown">
                                <a class="dropdown-toggle count-info" data-toggle="dropdown" id="get_activity" href="#" aria-expanded="true">
                                    <svg width="1.4em" height="1.4em" viewBox="0 0 16 16" class="bi bi-bell" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2z"/>
                                        <path fill-rule="evenodd" d="M8 1.918l-.797.161A4.002 4.002 0 0 0 4 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 0 0-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 1 1 1.99 0A5.002 5.002 0 0 1 13 6c0 .88.32 4.2 1.22 6z"/>
                                      </svg></a>
                                      <div class="dropdown-backdrop"></div>
                                      <ul class="dropdown-menu dropdown-alerts" id="activity_loaded">
                                        <li id="activity_wait">
                                            <div class="text-center link-block">
                                                <a href="javascript:void(0)">


                                                </a>
                                            </div>
                                        </li>
                                  </ul>
                            </li>
                            <li class="dropdown navbar-user">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                                    {if $user['img'] eq 'gravatar'}
                                        <!-- <img src="http://www.gravatar.com/avatar/{($user['username'])|md5}?s=200&d=mp" class="img-circle" alt="{$user['fullname']}"> -->
                                        <img src="{$app_url}ui/lib/imgs/default-user-avatar.png" alt="">
                                    {elseif $user['img'] eq ''}
                                        <img src="{$app_url}ui/lib/imgs/default-user-avatar.png" alt="">
                                    {else}
                                        <img src="{$app_url}{$user['img']}" class="img-circle" alt="{$user['fullname']}">
                                    {/if}
    
                                    <span class="hidden-xs m-r-xs"> {$user['fullname']}</span> <i class="fa fa-angle-down"></i>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="arrow"></li>
                                    <li><a href="{$_url}settings/users-edit/{$user['id']}/">{$_L['Edit Profile']}</a></li>
                                    <li><a href="{$_url}settings/change-password/">{$_L['Change Password']}</a></li>
                                    <li class="divider"></li>
                                    <li><a href="{$_url}logout/">{$_L['Logout']}</a></li>
                                </ul>
                            </li>
    
                        </ul>
                    </div>

                </nav>
            </div>

            <div class="row wrapper page-heading">
                <div class="col-lg-12">
                    <h2>{$_st}

                </div>

            </div>

            <div class="wrapper wrapper-content">
                {if isset($notify)}
                {$notify}
{/if}