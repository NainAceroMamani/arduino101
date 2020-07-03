<?php /* Smarty version Smarty-3.1.13, created on 2016-07-26 20:17:12
         compiled from "ui\theme\softhash\client_profile.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1619357980b98cf42a1-71274123%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '74fc8f8cce9268592e84ac92d9c62f7b27776d41' => 
    array (
      0 => 'ui\\theme\\softhash\\client_profile.tpl',
      1 => 1468257776,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1619357980b98cf42a1-71274123',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'user' => 0,
    '_L' => 0,
    'cf' => 0,
    'cfs' => 0,
    'a' => 0,
    'd' => 0,
    'countries' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_57980b99490311_02271324',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57980b99490311_02271324')) {function content_57980b99490311_02271324($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<div class="row">
    <div class="col-md-4">
        <div class="ibox float-e-margins">
            <div class="ibox-title">


                <h5><?php echo $_smarty_tpl->tpl_vars['user']->value->account;?>
</h5>


            </div>
            <div class="ibox-content">


                <address>
                    <?php if ($_smarty_tpl->tpl_vars['user']->value->company!=''){?>
                        <?php echo $_smarty_tpl->tpl_vars['user']->value->company;?>

                        <br>
                        <?php echo $_smarty_tpl->tpl_vars['user']->value->account;?>

                        <br>
                    <?php }else{ ?>
                        <?php echo $_smarty_tpl->tpl_vars['user']->value->account;?>

                        <br>
                    <?php }?>
                    <?php echo $_smarty_tpl->tpl_vars['user']->value->address;?>
 <br>
                    <?php echo $_smarty_tpl->tpl_vars['user']->value->city;?>
 <br>
                    <?php echo $_smarty_tpl->tpl_vars['user']->value->state;?>
 - <?php echo $_smarty_tpl->tpl_vars['user']->value->zip;?>
 <br>
                    <?php echo $_smarty_tpl->tpl_vars['user']->value->country;?>

                    <br>
                    <strong><?php echo $_smarty_tpl->tpl_vars['_L']->value['Phone'];?>
:</strong> <?php echo $_smarty_tpl->tpl_vars['user']->value->phone;?>

                    <br>
                    <strong><?php echo $_smarty_tpl->tpl_vars['_L']->value['Email'];?>
:</strong> <?php echo $_smarty_tpl->tpl_vars['user']->value->email;?>

                    <?php  $_smarty_tpl->tpl_vars['cfs'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['cfs']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['cf']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['cfs']->key => $_smarty_tpl->tpl_vars['cfs']->value){
$_smarty_tpl->tpl_vars['cfs']->_loop = true;
?>
                        <br>
                        <strong><?php echo $_smarty_tpl->tpl_vars['cfs']->value['fieldname'];?>
: </strong> <?php echo get_custom_field_value($_smarty_tpl->tpl_vars['cfs']->value['id'],$_smarty_tpl->tpl_vars['a']->value['id']);?>

                    <?php } ?>

                </address>



            </div>
        </div>
    </div>
    <div class="col-md-8">
        <div class="ibox float-e-margins">
            <div class="ibox-title">


                <h5><?php echo $_smarty_tpl->tpl_vars['_L']->value['Edit Profile'];?>
</h5>


            </div>
            <div class="ibox-content">


                <form class="form-horizontal" id="iform">

                    <div class="form-group"><label class="col-lg-2 control-label" for="account"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Account Name'];?>
</label>

                        <div class="col-lg-10"><input type="text" id="account" name="account" class="form-control" value="<?php echo $_smarty_tpl->tpl_vars['d']->value['account'];?>
">

                        </div>
                    </div>

                    <div class="form-group"><label class="col-lg-2 control-label" for="company"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Company Name'];?>
</label>

                        <div class="col-lg-10"><input type="text" id="company" name="company" class="form-control" value="<?php echo $_smarty_tpl->tpl_vars['d']->value['company'];?>
">

                        </div>
                    </div>

                    <div class="form-group"><label class="col-lg-2 control-label" for="edit_email"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Email'];?>
</label>

                        <div class="col-lg-10"><input type="text" id="edit_email" name="edit_email" class="form-control" value="<?php echo $_smarty_tpl->tpl_vars['d']->value['email'];?>
">

                        </div>
                    </div>
                    <div class="form-group"><label class="col-lg-2 control-label" for="phone"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Phone'];?>
</label>

                        <div class="col-lg-10"><input type="text" id="phone" name="phone" class="form-control" value="<?php echo $_smarty_tpl->tpl_vars['d']->value['phone'];?>
">

                        </div>
                    </div>
                    <div class="form-group"><label class="col-lg-2 control-label" for="address"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Address'];?>
</label>

                        <div class="col-lg-10"><input type="text" id="address" name="address" class="form-control" value="<?php echo $_smarty_tpl->tpl_vars['d']->value['address'];?>
">

                        </div>
                    </div>
                    <div class="form-group"><label class="col-lg-2 control-label" for="city"><?php echo $_smarty_tpl->tpl_vars['_L']->value['City'];?>
</label>

                        <div class="col-lg-10"><input type="text" id="city" name="city" class="form-control" value="<?php echo $_smarty_tpl->tpl_vars['d']->value['city'];?>
">

                        </div>
                    </div>
                    <div class="form-group"><label class="col-lg-2 control-label" for="state"><?php echo $_smarty_tpl->tpl_vars['_L']->value['State Region'];?>
</label>

                        <div class="col-lg-10"><input type="text" id="state" name="state" class="form-control" value="<?php echo $_smarty_tpl->tpl_vars['d']->value['state'];?>
">

                        </div>
                    </div>
                    <div class="form-group"><label class="col-lg-2 control-label" for="zip"><?php echo $_smarty_tpl->tpl_vars['_L']->value['ZIP Postal Code'];?>
 </label>

                        <div class="col-lg-10"><input type="text" id="zip" name="zip" class="form-control" value="<?php echo $_smarty_tpl->tpl_vars['d']->value['zip'];?>
">

                        </div>
                    </div>
                    <div class="form-group"><label class="col-lg-2 control-label" for="country"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Country'];?>
</label>

                        <div class="col-lg-10">

                            <select name="country" id="country" class="form-control">
                                <option value=""><?php echo $_smarty_tpl->tpl_vars['_L']->value['Select Country'];?>
</option>
                                <?php echo $_smarty_tpl->tpl_vars['countries']->value;?>

                            </select>

                        </div>
                    </div>



                    <div class="form-group"><label class="col-lg-2 control-label" for="password"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Password'];?>
 </label>

                        <div class="col-lg-10">
                            <input type="password" id="password" name="password" class="form-control">

                            <span class="help-block"><?php echo $_smarty_tpl->tpl_vars['_L']->value['password_change_help'];?>
</span>

                        </div>
                    </div>



                    <div class="form-group">
                        <div class="col-lg-offset-2 col-lg-10">

                            <button class="btn btn-primary" type="submit" id="submit"><i class="fa fa-check"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Submit'];?>
</button>
                        </div>
                    </div>

                </form>


            </div>
        </div>
    </div>
</div>
<?php echo $_smarty_tpl->getSubTemplate ("sections/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<?php }} ?>