<?php

_auth();
$ui->assign('_sysfrm_menu', 'contacts');
$ui->assign('_title', 'Accounts- '. $config['CompanyName']);
$action = $routes['1'];
$user = User::_info();
$ui->assign('user', $user);
switch ($action) {
    case 'add':


        $ui->display('add-invoice.tpl');






        break;


    case 'view':

        break;

    case 'add-post':


        break;

    case 'list':
        $paginator = Paginator::bootstrap('sys_contacts');
        $d = ORM::for_table('sys_contacts')->offset($paginator['startpoint'])->limit($paginator['limit'])->order_by_desc('id')->find_many();
        $ui->assign('d',$d);
        $ui->assign('paginator',$paginator);

        $ui->display('board.tpl');
        break;


    case 'edit-post':

        break;



    case 'post':

        break;

    default:
        echo 'action not defined';
}