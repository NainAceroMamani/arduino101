<?php

_auth();
$ui->assign('_sysfrm_menu', 'contacts');
$ui->assign('_st', $_L['Search']);
$ui->assign('_title', $_L['Accounts'].'- '. $config['CompanyName']);
$action = $routes['1'];
$user = User::_info();
$ui->assign('user', $user);
switch ($action) {

    case 'ps':
$type = _post('stype');
$name = _post('txtsearch');
        $d = ORM::for_table('sys_items')->where('type',$type)->where_like('name',"%$name%")->order_by_asc('name')->find_many();
if($d){
    echo '<table class="table table-hover table-bordered">
        <tbody>';


    foreach ($d as $ds){
        $price = number_format($ds['sales_price'],2,$config['dec_point'],$config['thousands_sep']);
        echo ' <tr>
                <td>
                    <small>'.$ds['item_number'].'</small>
                </td>

                <td class="project-title">
                    <a href="#" class="cedit"  id="t'.$ds['id'].'">'.$ds['name'].'</a>
                </td>
                <td>

                   '.$price.'

                </td>

                <td class="project-actions">

                    <a href="#" class="btn cedit" id="e'.$ds['id'].'"><i class="fa fa-pencil"></i></a>
                    <a href="#" class="btn cdelete" id="pid'.$ds['id'].'"><i class="fa fa-trash"></i></a>
                </td>
            </tr>';
    }


    echo '
        </tbody>
    </table>';
}
else{
    echo '<h4>Nothing Found</h4>';
}

        break;


    case 'users':
echo '<table class="table table-bordered table-hover trclickable">
                <thead>
                <tr>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Access Level</th>
                    <th>Active</th>
                </tr>
                </thead>
                <tbody>
                <tr id="_tr120">
                    <td>1</td>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td><div class="switch">
                            <div class="onoffswitch">
                                <input type="checkbox" class="onoffswitch-checkbox" data-on-text="Yes">
                                <label class="onoffswitch-label" for="fixednavbar">
                                    <span class="onoffswitch-inner"></span>
                                    <span class="onoffswitch-switch"></span>
                                </label>
                            </div>
                        </div></td>
                </tr>

                </tbody>
            </table>';
        break;

    default:
        echo 'action not defined';
}