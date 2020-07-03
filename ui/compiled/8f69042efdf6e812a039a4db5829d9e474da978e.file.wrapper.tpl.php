<?php /* Smarty version Smarty-3.1.13, created on 2020-06-27 18:55:01
         compiled from "ui\theme\softhash\wrapper.tpl" */ ?>
<?php /*%%SmartyHeaderCode:8033611445ef7dc5548f603-04571100%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8f69042efdf6e812a039a4db5829d9e474da978e' => 
    array (
      0 => 'ui\\theme\\softhash\\wrapper.tpl',
      1 => 1438308720,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '8033611445ef7dc5548f603-04571100',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5ef7dc5553f768_31436155',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5ef7dc5553f768_31436155')) {function content_5ef7dc5553f768_31436155($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate ("../../../".((string)$_smarty_tpl->tpl_vars['_pd']->value)."/views/".((string)$_smarty_tpl->tpl_vars['_include']->value).".tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate ("sections/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<?php }} ?>