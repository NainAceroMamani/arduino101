<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>{$_L['Reset Password']} - {$_title}</title>
    <link rel="shortcut icon" href="{$app_url}sysfrm/uploads/icon/favicon.ico" type="image/x-icon" />
    <link href="{$_theme}/css/bootstrap.min.css" rel="stylesheet">
    <link href="{$_theme}/lib/fa/css/font-awesome.min.css" rel="stylesheet">

    <!-- ionicons -->
    <link href="{$_theme}/css/logincss.css" rel="stylesheet">

</head>
<body class="light-background">
<div class="no-navigation preload">
    <div class="sign-in-wrapper">
        <div class="login-brand text-center">
            <img class="logo" src="{$app_url}sysfrm/uploads/system/logo-black.svg" alt="Logo" width="190">
        </div>
        <div class="sign-in-inner">
            <form class="forgot-pw" method="post" action="{$_url}admin/forgot-pw-post/">
                <h3 class="text-dark m-bottom-md font-600 text-center">Restablecer su contraseña</h3>
                <p class="text-center m-bottom-md">Recibiras un mensaje con un enlace para restablecer tu contraseña.</p>
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


                <div class="m-top-md p-top-sm">

                    <button class="btn btn-success block full-width" name="login" type="submit">{$_L['Reset Password']}</button>
                </div>

                <div class="m-top-md p-top-sm">
                    <div class="font-14 text-center m-bottom-xs">
                        <a href="{$_url}admin/" class="font-14">{$_L['Back To Login']}</a>
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
