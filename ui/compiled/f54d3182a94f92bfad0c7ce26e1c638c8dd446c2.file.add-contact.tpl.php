<?php /* Smarty version Smarty-3.1.13, created on 2016-07-26 20:18:19
         compiled from "ui\theme\softhash\add-contact.tpl" */ ?>
<?php /*%%SmartyHeaderCode:275545797fdcbd76076-07417812%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f54d3182a94f92bfad0c7ce26e1c638c8dd446c2' => 
    array (
      0 => 'ui\\theme\\softhash\\add-contact.tpl',
      1 => 1468722742,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '275545797fdcbd76076-07417812',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_L' => 0,
    '_url' => 0,
    'countries' => 0,
    'fs' => 0,
    'f' => 0,
    'fo' => 0,
    'tags' => 0,
    'tag' => 0,
    'gs' => 0,
    'g' => 0,
    'g_selected_id' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5797fdcc664266_55754372',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5797fdcc664266_55754372')) {function content_5797fdcc664266_55754372($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<div class="wrapper wrapper-content">
<div class="row">

    <div class="col-md-12">



        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5><?php echo $_smarty_tpl->tpl_vars['_L']->value['Add Contact'];?>
</h5>

                <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
contacts/import_csv/" class="btn btn-xs btn-primary btn-rounded pull-right"><i class="fa fa-bars"></i> Import Contacts</a>

            </div>
            <div class="ibox-content" id="ibox_form">
                <div class="alert alert-danger" id="emsg">
                    <span id="emsgbody"></span>
                </div>

                <form class="form-horizontal" id="rform">

                    <div class="row">
                        <div class="col-md-6 col-sm-12">
                            <div class="form-group"><label class="col-md-4 control-label" for="account"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Full Name'];?>
*</label>

                                <div class="col-lg-8"><input type="text" id="account" name="account" class="form-control">

                                </div>
                            </div>

                            <div class="form-group"><label class="col-md-4 control-label" for="company"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Company Name'];?>
</label>

                                <div class="col-lg-8"><input type="text" id="company" name="company" class="form-control">

                                </div>
                            </div>

                            <div class="form-group"><label class="col-md-4 control-label" for="email"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Email'];?>
</label>

                                <div class="col-lg-8"><input type="text" id="email" name="email" class="form-control">

                                </div>
                            </div>
                            <div class="form-group"><label class="col-md-4 control-label" for="phone"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Phone'];?>
</label>

                                <div class="col-lg-8"><input type="text" id="phone" name="phone" class="form-control">

                                </div>
                            </div>
                            <div class="form-group"><label class="col-md-4 control-label" for="address"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Address'];?>
</label>

                                <div class="col-lg-8"><input type="text" id="address" name="address" class="form-control">

                                </div>
                            </div>


                            <div class="form-group"><label class="col-md-4 control-label" for="city"><?php echo $_smarty_tpl->tpl_vars['_L']->value['City'];?>
</label>

                                <div class="col-lg-8"><input type="text" id="city" name="city" class="form-control">

                                </div>
                            </div>
                            <div class="form-group"><label class="col-md-4 control-label" for="state"><?php echo $_smarty_tpl->tpl_vars['_L']->value['State Region'];?>
</label>

                                <div class="col-lg-8"><input type="text" id="state" name="state" class="form-control">

                                </div>
                            </div>
                            <div class="form-group"><label class="col-md-4 control-label" for="zip"><?php echo $_smarty_tpl->tpl_vars['_L']->value['ZIP Postal Code'];?>
 </label>

                                <div class="col-lg-8"><input type="text" id="zip" name="zip" class="form-control">

                                </div>
                            </div>
                            <div class="form-group"><label class="col-md-4 control-label" for="country"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Country'];?>
</label>

                                <div class="col-lg-8">

                                    <select name="country" id="country" class="form-control">
                                        <option value=""><?php echo $_smarty_tpl->tpl_vars['_L']->value['Select Country'];?>
</option>
                                        <?php echo $_smarty_tpl->tpl_vars['countries']->value;?>

                                    </select>

                                </div>
                            </div>

                            

                            <?php  $_smarty_tpl->tpl_vars['f'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['f']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['fs']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['f']->key => $_smarty_tpl->tpl_vars['f']->value){
$_smarty_tpl->tpl_vars['f']->_loop = true;
?>
                                <div class="form-group"><label class="col-md-4 control-label" for="cf<?php echo $_smarty_tpl->tpl_vars['f']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['f']->value['fieldname'];?>
</label>
                                    <?php if (($_smarty_tpl->tpl_vars['f']->value['fieldtype'])=='text'){?>


                                        <div class="col-lg-8">
                                            <input type="text" id="cf<?php echo $_smarty_tpl->tpl_vars['f']->value['id'];?>
" name="cf<?php echo $_smarty_tpl->tpl_vars['f']->value['id'];?>
" class="form-control">
                                            <?php if (($_smarty_tpl->tpl_vars['f']->value['description'])!=''){?>
                                                <span class="help-block"><?php echo $_smarty_tpl->tpl_vars['f']->value['description'];?>
</span>
                                            <?php }?>

                                        </div>

                                    <?php }elseif(($_smarty_tpl->tpl_vars['f']->value['fieldtype'])=='password'){?>

                                        <div class="col-lg-8">
                                            <input type="password" id="cf<?php echo $_smarty_tpl->tpl_vars['f']->value['id'];?>
" name="cf<?php echo $_smarty_tpl->tpl_vars['f']->value['id'];?>
" class="form-control">
                                            <?php if (($_smarty_tpl->tpl_vars['f']->value['description'])!=''){?>
                                                <span class="help-block"><?php echo $_smarty_tpl->tpl_vars['f']->value['description'];?>
</span>
                                            <?php }?>
                                        </div>

                                    <?php }elseif(($_smarty_tpl->tpl_vars['f']->value['fieldtype'])=='dropdown'){?>
                                        <div class="col-lg-8">
                                            <select id="cf<?php echo $_smarty_tpl->tpl_vars['f']->value['id'];?>
" name="cf<?php echo $_smarty_tpl->tpl_vars['f']->value['id'];?>
" class="form-control">
                                                <?php  $_smarty_tpl->tpl_vars['fo'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['fo']->_loop = false;
 $_from = explode(',',$_smarty_tpl->tpl_vars['f']->value['fieldoptions']); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['fo']->key => $_smarty_tpl->tpl_vars['fo']->value){
$_smarty_tpl->tpl_vars['fo']->_loop = true;
?>
                                                    <option value="<?php echo $_smarty_tpl->tpl_vars['fo']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['fo']->value;?>
</option>
                                                <?php } ?>
                                            </select>
                                            <?php if (($_smarty_tpl->tpl_vars['f']->value['description'])!=''){?>
                                                <span class="help-block"><?php echo $_smarty_tpl->tpl_vars['f']->value['description'];?>
</span>
                                            <?php }?>
                                        </div>


                                    <?php }elseif(($_smarty_tpl->tpl_vars['f']->value['fieldtype'])=='textarea'){?>

                                        <div class="col-lg-8">
                                            <textarea id="cf<?php echo $_smarty_tpl->tpl_vars['f']->value['id'];?>
" name="cf<?php echo $_smarty_tpl->tpl_vars['f']->value['id'];?>
" class="form-control" rows="3"></textarea>
                                            <?php if (($_smarty_tpl->tpl_vars['f']->value['description'])!=''){?>
                                                <span class="help-block"><?php echo $_smarty_tpl->tpl_vars['f']->value['description'];?>
</span>
                                            <?php }?>
                                        </div>

                                    <?php }else{ ?>
                                    <?php }?>
                                </div>
                            <?php } ?>

                            <div class="form-group"><label class="col-md-4 control-label" for="tags"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Tags'];?>
</label>

                                <div class="col-lg-8">
                                    
                                    <select name="tags[]" id="tags" class="form-control" multiple="multiple">
                                        <?php  $_smarty_tpl->tpl_vars['tag'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['tag']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['tags']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['tag']->key => $_smarty_tpl->tpl_vars['tag']->value){
$_smarty_tpl->tpl_vars['tag']->_loop = true;
?>
                                            <option value="<?php echo $_smarty_tpl->tpl_vars['tag']->value['text'];?>
"><?php echo $_smarty_tpl->tpl_vars['tag']->value['text'];?>
</option>
                                        <?php } ?>

                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12">

                            <div class="form-group"><label class="col-md-4 control-label" for="group"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Group'];?>
</label>

                                <div class="col-lg-8">
                                    <select class="form-control" name="group" id="group">
                                        <option value="0"><?php echo $_smarty_tpl->tpl_vars['_L']->value['None'];?>
</option>
                                        <?php  $_smarty_tpl->tpl_vars['g'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['g']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['gs']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['g']->key => $_smarty_tpl->tpl_vars['g']->value){
$_smarty_tpl->tpl_vars['g']->_loop = true;
?>
                                            <option value="<?php echo $_smarty_tpl->tpl_vars['g']->value['id'];?>
" <?php if ($_smarty_tpl->tpl_vars['g_selected_id']->value==($_smarty_tpl->tpl_vars['g']->value['id'])){?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['g']->value['gname'];?>
</option>
                                        <?php } ?>
                                    </select>
                                    <span class="help-block"><a href="#" id="add_new_group"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Add New Group'];?>
</a> </span>
                                </div>
                            </div>


                            <div class="form-group"><label class="col-md-4 control-label" for="password"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Password'];?>
</label>

                                <div class="col-lg-8"><input type="password" id="password" name="password" class="form-control">

                                </div>
                            </div>

                            <div class="form-group"><label class="col-md-4 control-label" for="cpassword"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Confirm Password'];?>
</label>

                                <div class="col-lg-8"><input type="password" id="cpassword" name="cpassword" class="form-control">

                                </div>
                            </div>


                            <div class="form-group"><label class="col-md-4 control-label" for="send_client_signup_email"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Welcome Email'];?>
</label>

                                <div class="col-lg-8">

                                    <input type="checkbox" checked data-toggle="toggle" data-size="small" data-on="Yes" data-off="No" id="send_client_signup_email" name="send_client_signup_email" value="Yes">

                                    <span class="help-block"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Send Client Signup Email'];?>
</span>

                                </div>
                            </div>



                        </div>
                    </div>


                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <div class="col-md-offset-2 col-lg-10">
                                    <button class="md-btn md-btn-primary" type="submit" id="submit"><i class="fa fa-check"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Save'];?>
</button> | <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
contacts/list/">Or Cancel</a>
                                </div>
                            </div>
                        </div>
                    </div>


                </form>
            </div>
        </div>
    </div>
</div>


</div>

<input type="hidden" name="_msg_add_new_group" id="_msg_add_new_group" value="<?php echo $_smarty_tpl->tpl_vars['_L']->value['Add New Group'];?>
">
<input type="hidden" name="_msg_group_name" id="_msg_group_name" value="<?php echo $_smarty_tpl->tpl_vars['_L']->value['Group Name'];?>
">

<?php echo $_smarty_tpl->getSubTemplate ("sections/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<?php }} ?>