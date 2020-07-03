<?php


require 'vendor/autoload.php';

session_start();

function r2($to,$ntype='e',$msg=''){
    if($msg==''){
        header("location: $to"); exit;
    }
    $_SESSION['ntype']=$ntype ; $_SESSION['notify']=$msg ; header("location: $to"); exit;
}

if (file_exists('sysfrm/config.php')) {
    require('sysfrm/config.php');
} else {

    r2('sysfrm/install');

}

if($_app_stage == 'Dev'){
    ini_set('display_errors',1);
    ini_set('display_startup_errors',1);
    error_reporting(-1);
}
else{
    error_reporting(0);
}


function safedata($value){
    $value = trim($value);
    //  $value=htmlentities($value, ENT_QUOTES, 'utf-8');
    return $value;
}
//Extend
function _post($param,$defvalue = '') {
    if(!isset($_POST[$param])) 	{
        return $defvalue;
    }
    else {
        return safedata($_POST[$param]);
    }
}

function _get($param,$defvalue = '')
{
    if(!isset($_GET[$param])) {
        return $defvalue;
    }
    else {
        return safedata($_GET[$param]);
    }
}
function _raid($l='6'){
    $r=  substr(str_shuffle(str_repeat('0123456789',$l)),0,$l);
    return $r;

}

require('sysfrm/orm.php');
ORM::configure("mysql:host=$db_host;dbname=$db_name");
ORM::configure('username', $db_user);
ORM::configure('password', $db_password);
ORM::configure('driver_options', array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8'));
ORM::configure('return_result_sets', true); // returns result sets
ORM::configure('logging', true);
$result = ORM::for_table('sys_appconfig')->find_many();




foreach($result as $value)
{
    $config[$value['setting']]=$value['value'];
}
date_default_timezone_set($config['timezone']);
function _notify($msg,$type='e'){
    $_SESSION['ntype']=$type ; $_SESSION['notify']=$msg ;
}
$_c = $config;
require_once('sysfrm/lib/smarty/libs/Smarty.class.php');
$_theme = APP_URL.'/ui/theme/'.$config['theme'];
// language
$lan_file = 'sysfrm/lan/' . $config['language'] . '/common.lan.php';
require($lan_file);
// css naming
if(isset($config['design'])){
   $design = $config['design'];
}
else{

    $design = 'default';

}
//require('sysfrm/util/design_' . $design . '.php');
$ui = new Smarty();
$ui->setTemplateDir('ui/theme/' . $config['theme'] . '/');
$ui->setCompileDir('ui/compiled/');
$ui->setConfigDir('ui/conf/');
$ui->setCacheDir('ui/cache/');
$ui->assign('app_url', APP_URL.'/');
if(($config['url_rewrite']) == '1'){
    define('U', APP_URL.'/');
    $ui->assign('_url', APP_URL.'/');
}
else{
    define('U', APP_URL.'/?ng=');
    $ui->assign('_url', APP_URL.'/?ng=');
}

$ui->assign('_theme', $_theme);

//$ui->assign('_css', $_css);
$ui->assign('_sysfrm_menu', 'dashboard');
$ui->assign('_title', $config['CompanyName']);
$ui->assign('_st', 'Sysfrm');
$ui->assign('_topic', 'dashboard');
$ui->assign('content_inner','');
//$ui->assign('design_extra_div_form',$design_extra_div_form);
$ui->assign('jsvar', '');
$ui->assign('tpl_footer', true);
$ui->assign('_pls', ORM::for_table('sys_pl')->where('status','1')->find_many());

// supports custom sub template from iBilling V 3.0.0

$ui->assign('tplheader', 'sections/header_default');
$ui->assign('tplfooter', 'sections/footer_default');



//

function _msglog($type,$msg){
    $_SESSION['ntype'] = $type;
    $_SESSION['notify'] = $msg;
}


if (isset($_SESSION['notify'])) {
    $notify = $_SESSION['notify'];
    $ntype = $_SESSION['ntype'];
    if ($ntype == 's') {
        $ui->assign('notify', '<div class="alert alert-success fade in">
								<button class="close" data-dismiss="alert">
									×
								</button>
								<i class="fa-fw fa fa-check"></i>
								'.$notify.'
							</div>');

    } else {

        $ui->assign('notify', '<div class="alert alert-danger fade in">
								<button class="close" data-dismiss="alert">
									×
								</button>
								<i class="fa-fw fa fa-times"></i>
								'.$notify.'
							</div>');
    }
    unset($_SESSION['notify']);
    unset($_SESSION['ntype']);
}


//function _autoloader($class) {
//
//    if (strpos($class, '_') !== false) {
//        // $c_dir = explode($class,'_');
//        $class = str_replace('_','/',$class);
//        include 'autoload/' . $class . '.php';
//
//    }
//    else{
//        include 'autoload/' . $class . '.php';
//    }
//
//
//}
//
//spl_autoload_register('_autoloader');

function _auth(){
    if(isset($_SESSION['uid'])){
        return true;
    }
    else{

        r2(U.'login/');

    }

}


// additional function

function _admin(){
    if(isset($_SESSION['uid'])){
        $d = ORM::for_table('user')->find_one($_SESSION['uid']);
        if($d['user_type'] == 'Admin'){
            return true;
        }
        else{
            r2(U.'login/');
        }
    }
    else{

        r2(U.'login/');

    }

}




require('sysfrm/functions.php');

$req = _get('ng');
$routes = explode('/', $req);
$handler = $routes['0'];
if ($handler == '') {
    $handler = 'default';
}




$plugin_ui_header_admin = array();
$plugin_ui_header_client = array();

//plugin support
$PluginManager = new Plugins();
$ps = ORM::for_table('sys_pl')->where('status','1')->order_by_asc('sorder')->find_many();

foreach($ps as $p){
    $PluginManager->loadPlugins($p['c']);
}

$hooks = glob('sysfrm/hooks/*{.php}', GLOB_BRACE);

if(count($hooks) != 0)
{
    foreach ($hooks as $hook) {
        require_once($hook);
    }
}

require('sysfrm/plugged.php');

// routing started

Event::trigger('routing_started');

$ui->assign('_c', $config);
$ui->assign('_L', $_L);

$pl_path = '';
//
$sys_render = 'sysfrm/controllers/' . $handler . '.php';
if (file_exists($sys_render)) {
    include($sys_render);
} else {

   // exit ("$sys_render");

//    @Since v 2.4 supports routing to plugin

    $p1 = false;
    $p2 = false;

    if(isset($routes['0']) AND ($routes['0']) != ''){
        $p1 = true;
    }

    if(isset($routes['1']) AND ($routes['1']) != ''){
        $p2 = true;
    }

    if($p1 AND $p2){

        $dir = $routes['0'];
        $cont = $routes['1'];
        $path = 'sysfrm/plugins/'.$dir.'/'.$cont.'.php';
        $pl_path = 'sysfrm/plugins/'.$dir.'/';
        if(file_exists($path)){
            $_pd = 'sysfrm/plugins/'.$dir;
            $ui->assign('_pd','sysfrm/plugins/'.$dir);
            require($path);

        }

    }


    else{

        r2(U.'dashboard/','e',$_L['Plugin Not Found']);
    }



}