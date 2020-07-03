<?php /* Smarty version Smarty-3.1.13, created on 2020-06-27 18:45:42
         compiled from "ui\theme\softhash\view-email.tpl" */ ?>
<?php /*%%SmartyHeaderCode:4392738065ef7da26d981e3-63282037%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '38d60af74d0d9e7d0b08974d7444fac8f985ba25' => 
    array (
      0 => 'ui\\theme\\softhash\\view-email.tpl',
      1 => 1433352944,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '4392738065ef7da26d981e3-63282037',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'd' => 0,
    '_url' => 0,
    '_L' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5ef7da273d08c7_13705348',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5ef7da273d08c7_13705348')) {function content_5ef7da273d08c7_13705348($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<div class="row animated fadeInDown">
    <div class="col-lg-12"  id="sysfrm_ajaxrender">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5> <?php echo $_smarty_tpl->tpl_vars['d']->value['subject'];?>
 </h5>

                <div class="ibox-tools">
                    <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
util/sent-emails" class="btn btn-info btn-xs"><i class="fa fa-mail-reply-all"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Back To Emails'];?>
</a>
                </div>

            </div>
            <div class="ibox-content">

                <?php echo $_smarty_tpl->tpl_vars['d']->value['message'];?>


            </div>


        </div>
    </div>
</div>
<?php echo $_smarty_tpl->getSubTemplate ("sections/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<?php }} ?>