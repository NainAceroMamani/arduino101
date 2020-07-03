<?php

require ('sysfrm_installer_config.php');
$cururl = 'http://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
$appurl = str_replace('/install/step5.php', '', $cururl);
$appurl = str_replace('/sysfrm', '', $appurl);
$appurl = $appurl.'/?ng=autologin/';
header("location: $appurl");