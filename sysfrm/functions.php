<?php


function get_client_ip(){
    if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
        $ip = $_SERVER['HTTP_CLIENT_IP'];
    } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
        $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
    } else {
        $ip = $_SERVER['REMOTE_ADDR'];
    }

    return $ip;
}



function _log($description,$type='',$userid='0'){
    $d = ORM::for_table('sys_logs')->create();
    $d->date = date('Y-m-d H:i:s');
    $d->type = $type;
    $d->description = $description;
    $d->userid = $userid;
    $d->ip = $_SERVER["REMOTE_ADDR"];
    $d->save();

}

$admin_extra_nav = array(
    0 => '',
    1 => '',
    2 => '',
    3 => '',
    4 => '',
    5 => '',
    6 => '',
    7 => '',
    8 => '',
    9 => '',
    10 => ''
);

$client_extra_nav = array(
    0 => '',
    1 => '',
    2 => '',
    3 => '',
    4 => '',
    5 => '',
    6 => '',
    7 => '',
    8 => '',
    9 => '',
    10 => ''
);


/*
 *
 * Create Menu dynamically for plugins and hooks
 *
 * @param string $name name of the menu
 * @param string $link link of the menu
 * @param string $c controller name to set menu active
 * @param string fontawesome or iBilling icon name
 * @param int $position position of the menu
 * @param array $submenu submenu items
 *
 * */

function add_menu_admin($name,$link='#',$c='',$icon='icon-leaf',$position=5,$submenu=array()){

    global $admin_extra_nav,$routes;

                $active = '';
            if((isset($routes['0'])) AND ($routes['0']) == $c){
                $active = 'active';
            }
            if(!empty($submenu)){
                $s = '';

                foreach($submenu as $menu){
                    if(isset($menu['target'])){
                        $target = 'target="'.$menu['target'].'"';
                    }
                    else{
                        $target = '';
                    }
                    $s .= ' <li><a href="'.$menu['link'].'" '.$target.'>'.$menu['name'].'</a></li>';
                }

                $admin_extra_nav[$position] .= '<li class="'.$active.'">
                    <a href="'.$link.'"><i class="'.$icon.'"></i> <span class="nav-label">'.$name.' </span><span class="fa arrow"></span></a>

<ul class="nav nav-second-level">
'.$s.'
</ul>
</li>';

            }
            else{
                $admin_extra_nav[$position] .= '<li class="'.$active.'"><a href="'.$link.'"><i class="'.$icon.'"></i> <span class="nav-label">'.$name.'</span></a></li>';
            }

}


function add_menu_client($name,$link='#',$c='',$icon='icon-leaf',$position=2,$submenu=array()){

    global $client_extra_nav,$routes;

    $active = '';
    if((isset($routes['0'])) AND ($routes['0']) == $c){
        $active = 'active';
    }
    if(!empty($submenu)){
        $s = '';

        foreach($submenu as $menu){
            if(isset($menu['target'])){
                $target = 'target="'.$menu['target'].'"';
            }
            else{
                $target = '';
            }
            $s .= ' <li><a href="'.$menu['link'].'" '.$target.'>'.$menu['name'].'</a></li>';
        }

        $client_extra_nav[$position] .= '<li class="'.$active.'">
                    <a href="'.$link.'"><i class="'.$icon.'"></i> <span class="nav-label">'.$name.' </span><span class="fa arrow"></span></a>

<ul class="nav nav-second-level">
'.$s.'
</ul>
</li>';

    }
    else{
        $client_extra_nav[$position] .= '<li class="'.$active.'"><a href="'.$link.'"><i class="'.$icon.'"></i> <span class="nav-label">'.$name.'</span></a></li>';
    }

}




$sub_menu_admin = array();
$sub_menu_admin['settings'] = array();
$sub_menu_admin['crm'] = array();
$sub_menu_admin['reports'] = array();

function add_sub_menu_admin($parent,$name,$link){
global $sub_menu_admin;
    $sub_menu_admin[$parent][] = '<li><a href="'.$link.'">'.$name.'</a></li>
';

}


function add_option($option, $value){

    $d = ORM::for_table('sys_appconfig')->where('setting',$option)->find_one();
    if($d){
        return false;
    }
    else{
        //add option
        $c = ORM::for_table('sys_appconfig')->create();
        $c->setting = $option;
        $c->value = $value;
        $c->save();
        return true;
    }

}


function get_option($option){
    $d = ORM::for_table('sys_appconfig')->where('setting',$option)->find_one();
    if($d){
        return $d['value'];
    }
    else{
        return false;
    }
}

function update_option($option,$value){

    $d = ORM::for_table('sys_appconfig')->where('setting',$option)->find_one();
    if($d){
        $d->value = $value;
        $d->save();
        return true;
    }
    else{
        return false;
    }

}

function delete_option($option){
    $d = ORM::for_table('sys_appconfig')->where('setting',$option)->find_one();
    if($d){
       $d->delete();
        return true;
    }
    else{
        return false;
    }
}


function ib_die($msg=''){
    echo $msg;
    exit;
}

function ib_close(){
    exit;
}


function get_custom_field_value($fid,$rid){

    $d = ORM::for_table('crm_customfieldsvalues')->where('fieldid',$fid)->where('relid',$rid)->find_one();

    return $d['fvalue'];

}


function ib_pg_count(){
    $d = ORM::for_table('sys_pg')->where('status','Active')->count();
    return $d;
}


function ib_add_field_value($fieldid,$relid,$fvalue){
    $d = ORM::for_table('crm_customfieldsvalues')->create();
    $d->fieldid = $fieldid;
    $d->relid = $relid;
    $d->fvalue = $fvalue;
    $d->save();
    return true;
}


// Date Related

function ib_today(){
    return date('Y-m-d');
}

function ib_after_1_month($from = '', $format = 'mysql'){

    if($from == ''){
        $from = strtotime(date('Y-m-d'));
    }

    if($format == 'mysql'){
        $format = 'Y-m-d';
    }

    return date($format,strtotime('+1 month',$from));

}

function ib_lan_get_line($line,$fallback=''){

    global $_L;
    if(isset($_L[$line])){
        return str_replace($line,$_L[$line],$line);
    }
    elseif($fallback != ''){
        return $fallback;
    }
    else{

        return $line;

    }

}



function d2($msg = 'I am here!'){

    if(is_array($msg)){
        foreach ($msg as $m){
            echo $m. ' |
';
        }
    }
    else{
        echo $msg;
    }

    exit;

}

function d2c( $data ) {

    if ( is_array( $data ) )
        $output = "<script>console.log( 'Debug Objects: " . implode( ',', $data) . "' );</script>";
    else
        $output = "<script>console.log( 'Debug Objects: " . $data . "' );</script>";

    echo $output;
}

function lan(){
    global $config;
    return $config['language'];
}

function add_js($f=array(),$v=''){

    global $ui;
    global $pl_path;

    if($v == ''){
        $ver = '';
    }
    else{
        $ver = '?ver='.$v;
    }
    $gen = '';
    if(is_array($f)){
        foreach($f as $p){
            $gen .= '<script type="text/javascript" src="'.$pl_path.'js/'.$p.'.js'.$ver.'"></script>
        ';
        }

        $ui->assign('xfooter', $gen);

        return true;

    }

    return false;

}


function add_js_external($url=array()){



    $gen = '';
    if(is_array($url)){
        foreach($url as $u){
            $gen .= '<script type="text/javascript" src="'.$u.'.js"></script>
        ';
        }



        return $gen;

    }

    return false;

}

function set_tpl($path){
    global $ui;
    $ui->assign('tplheader', $path.'header');
    $ui->assign('tplfooter', $path.'footer');
}


function language_append($path){
    global $_L;
    $file = 'sysfrm/plugins/'.$path;
    include ($file);
}

function lan_register($path){

    $x = include $path;


    var_dump($x);
    exit;


}


function add_plugin_ui_header_admin($header=''){
    global $plugin_ui_header_admin;
    array_push($plugin_ui_header_admin,$header);
}

function add_plugin_ui_header_client($header=''){
    global $plugin_ui_header_client;
    array_push($plugin_ui_header_client,$header);
}



function i_close($msg = ''){
    echo $msg;
    exit;
}

function inner_contents($lk){

    $url_string = '?ng=';
    $inner_contents = '';

 $lc = md5(APP_URL.$url_string);

    if($lc != $lk){

        $smarty_cache = 'PGRpdiBjbGFzcz0iYWxlcnQgYWxlcnQtZGFuZ2VyIj5QbGVhc2UgQWN0aXZhdGUgWW91ciBpQmlsbGluZy4gPGEgY2xhc3M9ImJ0biBidG4tc3VjY2VzcyIgaHJlZj0iP25nPXNldHRpbmdzL2FjdGl2YXRlX2xpY2Vuc2UvIj5DbGljayBIZXJlIHRvIEFjdGl2YXRlPC9hPjwvZGl2Pg==';

        $inner_contents = base64_decode($smarty_cache);

    }

    return $inner_contents;

}


function ib_http_request($url,$method='GET',$params=array()){

    $response = '';


    switch ($method) {

        case 'GET':
            $q = '';
            foreach($params as $key=>$value) {

                $value = urlencode($value);

                $q .= $key.'='.$value.'&';


            }

            if($q != ''){
                $q = rtrim($q, '&');
            }


            $req = $url.'?'.$q;

            $ch = curl_init();

            curl_setopt($ch, CURLOPT_AUTOREFERER, TRUE);
            curl_setopt($ch, CURLOPT_HEADER, 0);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt($ch, CURLOPT_URL, $req);
            curl_setopt($ch, CURLOPT_FOLLOWLOCATION, TRUE);

            $response = curl_exec($ch);
            curl_close($ch);

            break;

        case 'POST':

            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL,$url);
            curl_setopt($ch, CURLOPT_POST, 1);
            curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($params));
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            $response = curl_exec($ch);
            curl_close ($ch);

            break;

    }

    return $response;

}


function db_find_many($table,$columns=array()){

    $d = ORM::for_table($table);

    foreach($columns as $column){
        $d->select($column);
    }

    $ret = $d->find_many();

    return $ret;

}

function db_find_array($table,$columns=array()){

    $d = ORM::for_table($table);

    foreach($columns as $column){
        $d->select($column);
    }

    $ret = $d->find_array();

    return $ret;

}

function db_find_one($table,$id){

    $d = ORM::for_table($table)->find_one($id);

    if($d){
        return $d;
    }
    else{
        return false;
    }

}

function db_delete_row($table,$id){

    $d = ORM::for_table($table)->find_one($id);
    if($d){
        $d->delete();
        return true;
    }
    else{
        return false;
    }

}


function route($id){

    global $routes;

    if(isset($routes[$id]) && $routes[$id] != ''){
        return $routes[$id];
    }
    else{
        return false;
    }

}


function is_dev(){

    global $_app_stage;

    if($_app_stage != "Dev"){

        die("Unable to handle your request in Live Mode.");

    }

}


function ib_money_format($amount,$config){


    $currency_code = $config['currency_code'];
    $thousand_separator_placement = $config['thousand_separator_placement'];
    $currency_decimal_digits = $config['currency_decimal_digits'];
    $currency_symbol_position = $config['currency_symbol_position'];
    $dec_point = $config['dec_point'];
    $thousands_sep = $config['thousands_sep'];


    if($currency_decimal_digits == 'true'){
        $dec_digit = 2;
    }
    else{
        $dec_digit = 0;
    }

    if($currency_symbol_position == 's'){
        $retval = number_format($amount,$dec_digit,$dec_point,$thousands_sep).$currency_code;
    }
    else{
        $retval = $currency_code.' '.number_format($amount,$currency_decimal_digits,$dec_point,$thousands_sep);
    }



    return $retval;


}

// void function






