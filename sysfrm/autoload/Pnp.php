<?php

Class Pnp{

    public static function _js(){

    }

    public static function libjs($js){
        global $config;
return $config['theme'].'/lib/'.$js;
    }

}