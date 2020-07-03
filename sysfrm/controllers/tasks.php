<?php

_auth();
$ui->assign('_sysfrm_menu', 'tasks');
$ui->assign('_st', 'Invoices');
$ui->assign('_title', 'Accounts- '. $config['CompanyName']);
$action = $routes['1'];
$user = User::_info();
$ui->assign('user', $user);
switch ($action) {
    case 'me':
//find all clients.
        $ui->assign('_st', 'Add Invoice');
        $c = ORM::for_table('sys_accounts')->select('id')->select('account')->select('company')->find_many();
        $ui->assign('c',$c);

        $t = ORM::for_table('sys_tax')->find_many();
        $ui->assign('t',$t);

//default idate ddate
        $ui->assign('idate',date('Y-m-d'));

        $ui->assign('xheader', '
<link rel="stylesheet" type="text/css" href="' . $_theme . '/lib/select2/select2.css"/>
<link rel="stylesheet" type="text/css" href="' . $_theme . '/lib/dp/dist/datepicker.min.css"/>

');
        $ui->assign('xfooter', '
<script type="text/javascript" src="' . $_theme . '/lib/select2/select2.min.js"></script>
<script type="text/javascript" src="' . $_theme . '/lib/dp/dist/datepicker.min.js"></script>
<script type="text/javascript" src="' . $_theme . '/lib/invoice.js"></script>

');
        $ui->assign('xjq', '



 ');

        $ui->display('tasks.tpl');



        break;


    default:
        echo 'action not defined';
}