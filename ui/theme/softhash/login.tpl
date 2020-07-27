<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <title>{$_L['Login']} - {$_title}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link href="{$_theme}/css/bootstrap.min.css" rel="stylesheet">
    <link href="{$_theme}/lib/fa/css/font-awesome.min.css" rel="stylesheet">


    <!-- ionicons -->
    <link href="{$_theme}/css/logincss.css" rel="stylesheet">

    {if $_c['rtl'] eq '1'}
        <link href="{$_theme}/css/bootstrap-rtl.min.css" rel="stylesheet">
        <link href="{$_theme}/css/style-rtl.min.css" rel="stylesheet">
    {/if}

</head>

<body class="light-background">
<div class="no-navigation preload">
    <div class="sign-in-wrapper">
        <div class="sign-in-inner">
            <div class="login-brand m-bottom-lg text-center">
                <img class="logo" src="{$app_url}sysfrm/uploads/system/logo.png" alt="Logo">
            </div>
            <form class="login" method="post" action="{$_url}admin/post/">
                <h2 class="text-dark m-bottom-lg font-600 text-center">Iniciar sesión</h2>
                {if isset($notify)}
                {$notify}
                {/if}
                <div class="form-group m-bottom-md">
                    <label for="username">{$_L['Email Address']}</label>
                    <div class="form-input">
                        <input type="text" class="form-control" id="username" name="username">
                        <i class="fa fa-exclamation-triangle"></i>
                    </div>
                </div>
                <div class="form-group">
                    <label for="password">{$_L['Password']}</label>
                    <div class="form-input">
                        <input type="password" class="form-control" id="password" name="password">
                        <i class="fa fa-exclamation-triangle"></i>
                    </div>
                </div>
                <div class="m-top-md p-top-sm">
                    <button class="btn btn-success block full-width" name="login" type="submit">{$_L['Sign in']}</button>
                </div>
                <div class="m-top-md p-top-sm">
                    <div class="font-14 text-center m-bottom-xs">
                        <a href="{$_url}admin/forgot-pw/" class="font-14">{$_L['Forgot password']}</a>
                    </div>
                </div>
            </form>
        </div><!-- ./sign-in-inner -->
    </div><!-- ./sign-in-wrapper -->
</div><!-- /wrapper -->



<!-- Le javascript
================================================== -->
<script src="{$_theme}/js/validation.js"></script>

<!-- Placed at the end of the document so the pages load faster -->

<!-- Jquery -->
<script src="{$_theme}/js/jquery-1.10.2.js"></script>

<!-- Bootstrap -->
<script src="{$_theme}/js/bootstrap.min.js"></script>


</body>
</html>
