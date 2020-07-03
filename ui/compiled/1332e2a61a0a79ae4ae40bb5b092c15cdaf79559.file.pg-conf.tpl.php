<?php /* Smarty version Smarty-3.1.13, created on 2016-07-26 20:20:02
         compiled from "ui\theme\softhash\pg-conf.tpl" */ ?>
<?php /*%%SmartyHeaderCode:874357980c424632d7-15808982%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1332e2a61a0a79ae4ae40bb5b092c15cdaf79559' => 
    array (
      0 => 'ui\\theme\\softhash\\pg-conf.tpl',
      1 => 1467667284,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '874357980c424632d7-15808982',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'd' => 0,
    '_L' => 0,
    'label' => 0,
    '_url' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_57980c42b304e9_97674206',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57980c42b304e9_97674206')) {function content_57980c42b304e9_97674206($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<div class="row">
    <div class="col-md-12">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5><?php echo $_smarty_tpl->tpl_vars['d']->value['name'];?>
</h5>

            </div>
            <div class="ibox-content" id="ibox_form">
                <div class="alert alert-danger" id="emsg">
                    <span id="emsgbody"></span>
                </div>
                <form class="form-horizontal" method="post" id="pg-conf" role="form">

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Name'];?>
</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="name" name="name" value="<?php echo $_smarty_tpl->tpl_vars['d']->value['name'];?>
">
                        </div>
                    </div>

                    
                        
                        
                            
                        
                    

                    <div class="form-group">
                        <label for="value" class="col-sm-3 control-label">


                            <?php echo $_smarty_tpl->tpl_vars['label']->value['value'];?>




                        </label>
                        <div class="col-sm-9">
                            <textarea id="value" class="form-control" rows="3"><?php echo $_smarty_tpl->tpl_vars['d']->value['value'];?>
</textarea>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="status" class="col-sm-3 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Status'];?>
</label>
                        <div class="col-sm-9">
                            <select name="status" id="status" class="form-control">
                                <option value="Active" <?php if ($_smarty_tpl->tpl_vars['d']->value['status']=='Active'){?>selected="selected" <?php }?>><?php echo $_smarty_tpl->tpl_vars['_L']->value['Active'];?>
</option>
                                <option value="Inactive" <?php if ($_smarty_tpl->tpl_vars['d']->value['status']=='Inactive'){?>selected="selected" <?php }?>><?php echo $_smarty_tpl->tpl_vars['_L']->value['Inactive'];?>
</option>

                            </select>

                        </div>
                    </div>



                    <?php if (($_smarty_tpl->tpl_vars['label']->value['c1'])!=''){?>
                        <div class="form-group">
                            <label for="c1" class="col-sm-3 control-label"> <?php echo $_smarty_tpl->tpl_vars['label']->value['c1'];?>
 </label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="c1" name="c1" value="<?php echo $_smarty_tpl->tpl_vars['d']->value['c1'];?>
">
                            </div>
                        </div>
                    <?php }?>

                    <?php if (($_smarty_tpl->tpl_vars['label']->value['c2'])!=''){?>

                        <div class="form-group">
                            <label for="c2" class="col-sm-3 control-label"><?php echo $_smarty_tpl->tpl_vars['label']->value['c2'];?>
</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="c2" name="c2" value="<?php echo $_smarty_tpl->tpl_vars['d']->value['c2'];?>
">
                            </div>
                        </div>

                        <?php }?>


                    <?php if (($_smarty_tpl->tpl_vars['label']->value['c3'])!=''){?>

                        <div class="form-group">
                            <label for="c3" class="col-sm-3 control-label"><?php echo $_smarty_tpl->tpl_vars['label']->value['c3'];?>
</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="c3" name="c3" value="<?php echo $_smarty_tpl->tpl_vars['d']->value['c3'];?>
">
                            </div>
                        </div>

                    <?php }?>



                    <?php if (($_smarty_tpl->tpl_vars['label']->value['c4'])!=''){?>

                        <div class="form-group">
                            <label for="c4" class="col-sm-3 control-label"><?php echo $_smarty_tpl->tpl_vars['label']->value['c4'];?>
</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="c4" name="c4" value="<?php echo $_smarty_tpl->tpl_vars['d']->value['c4'];?>
">
                            </div>
                        </div>

                    <?php }?>



                    <?php if (($_smarty_tpl->tpl_vars['label']->value['c5'])!=''){?>
                        <div class="form-group">
                            <label for="c5" class="col-sm-3 control-label"><?php echo $_smarty_tpl->tpl_vars['label']->value['c5'];?>
</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="c5" name="c5" value="<?php echo $_smarty_tpl->tpl_vars['d']->value['c5'];?>
">
                            </div>
                        </div>
                    <?php }?>


                    <?php if (($_smarty_tpl->tpl_vars['label']->value['mode'])){?>

                        <div class="form-group">
                            <label for="mode" class="col-sm-3 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Mode'];?>
</label>
                            <div class="col-sm-9">
                                <select name="mode" id="mode" class="form-control">
                                    <option value="Live" <?php if ($_smarty_tpl->tpl_vars['d']->value['mode']=='Live'){?>selected="selected" <?php }?>><?php echo $_smarty_tpl->tpl_vars['_L']->value['Live'];?>
</option>
                                    <option value="Sandbox" <?php if ($_smarty_tpl->tpl_vars['d']->value['mode']=='Sandbox'){?>selected="selected" <?php }?>><?php echo $_smarty_tpl->tpl_vars['_L']->value['Sandbox'];?>
</option>

                                </select>

                            </div>
                        </div>

                        <?php }?>



                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-9">
                            <input type="hidden" name="pgid" id="pgid" value="<?php echo $_smarty_tpl->tpl_vars['d']->value['id'];?>
">
                            <button type="submit" id="submit" class="btn btn-primary"><i class="fa fa-check"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Submit'];?>
</button>
                            | <?php echo $_smarty_tpl->tpl_vars['_L']->value['Or'];?>
 <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
settings/pg/"> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Back To The List'];?>
</a>
                        </div>
                    </div>
                </form>

            </div>
        </div>

    </div>



</div>




<?php echo $_smarty_tpl->getSubTemplate ("sections/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php }} ?>