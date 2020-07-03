<?php /* Smarty version Smarty-3.1.13, created on 2016-07-26 20:14:37
         compiled from "ui\theme\softhash\settings_activate_license.tpl" */ ?>
<?php /*%%SmartyHeaderCode:90455797fced511492-90596370%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1d8fde7aa06fd76891c0be20ac3126adfe3e643b' => 
    array (
      0 => 'ui\\theme\\softhash\\settings_activate_license.tpl',
      1 => 1469221452,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '90455797fced511492-90596370',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_url' => 0,
    '_L' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5797fced65a799_64586770',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5797fced65a799_64586770')) {function content_5797fced65a799_64586770($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<div class="row">
    <div class="col-md-6">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>Activate License</h5>

            </div>
            <div class="ibox-content">

                <form role="form" name="accadd" method="post" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
settings/activate_license_post/">

                    <div class="form-group">
                        <label for="fullname">Your Full Name</label>
                        <input type="text" required class="form-control" id="fullname" name="fullname" value="Fire2000.Rocks" Readonly>

                    </div>

                    <div class="form-group">
                        <label for="email">Your Email</label>
                        <input type="email" required class="form-control" id="email" name="email" value="nulled@fire2000.rocks" Readonly>

                    </div>
                    <div class="form-group">
                        <label for="purchase_code">Purchase Code</label>
                        <input type="text" required class="form-control" id="purchase_code" name="purchase_code" value="Nulled-by-fire2000" Readonly>
                    </div>




                    <button type="submit" class="btn btn-primary"><i class="fa fa-check"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Submit'];?>
</button>
                </form>

            </div>
        </div>



    </div>



</div>
<?php echo $_smarty_tpl->getSubTemplate ("sections/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php }} ?>