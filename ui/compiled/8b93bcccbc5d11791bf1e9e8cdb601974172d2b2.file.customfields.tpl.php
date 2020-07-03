<?php /* Smarty version Smarty-3.1.13, created on 2020-06-27 18:31:45
         compiled from "ui\theme\softhash\customfields.tpl" */ ?>
<?php /*%%SmartyHeaderCode:5612219125ef7d6e1102a66-96338261%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8b93bcccbc5d11791bf1e9e8cdb601974172d2b2' => 
    array (
      0 => 'ui\\theme\\softhash\\customfields.tpl',
      1 => 1438648456,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '5612219125ef7d6e1102a66-96338261',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_L' => 0,
    'cf' => 0,
    'c' => 0,
    'fo' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5ef7d6e12b9a75_09001503',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5ef7d6e12b9a75_09001503')) {function content_5ef7d6e12b9a75_09001503($_smarty_tpl) {?>
<?php echo $_smarty_tpl->getSubTemplate ("sections/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<div class="row">


    <div class="col-md-12">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5><?php echo $_smarty_tpl->tpl_vars['_L']->value['Custom Fields'];?>
</h5>

            </div>
            <div class="ibox-content" id="sysfrm_ajaxrender">

                <form class="form-horizontal" id="rform">

                    <?php  $_smarty_tpl->tpl_vars['c'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['c']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['cf']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['c']->key => $_smarty_tpl->tpl_vars['c']->value){
$_smarty_tpl->tpl_vars['c']->_loop = true;
?>
                        <div class="form-group">
                            <label class="col-lg-4 control-label" for="cf<?php echo $_smarty_tpl->tpl_vars['c']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['c']->value['fieldname'];?>
</label>
                        <?php if (($_smarty_tpl->tpl_vars['c']->value['fieldtype'])=='text'){?>

                            <div class="col-lg-4">
                                <input type="text" id="cf<?php echo $_smarty_tpl->tpl_vars['c']->value['id'];?>
" name="cf<?php echo $_smarty_tpl->tpl_vars['c']->value['id'];?>
" class="form-control">
                                <?php if (($_smarty_tpl->tpl_vars['c']->value['description'])!=''){?>
                                    <span class="help-block"><?php echo $_smarty_tpl->tpl_vars['c']->value['description'];?>
</span>
                                <?php }?>
                            </div>

                        <?php }elseif(($_smarty_tpl->tpl_vars['c']->value['fieldtype'])=='password'){?>

                            <div class="col-lg-4">
                                <input type="password" id="cf<?php echo $_smarty_tpl->tpl_vars['c']->value['id'];?>
" name="cf<?php echo $_smarty_tpl->tpl_vars['c']->value['id'];?>
" class="form-control">
                                <?php if (($_smarty_tpl->tpl_vars['c']->value['description'])!=''){?>
                                    <span class="help-block"><?php echo $_smarty_tpl->tpl_vars['c']->value['description'];?>
</span>
                                <?php }?>
                            </div>

                        <?php }elseif(($_smarty_tpl->tpl_vars['c']->value['fieldtype'])=='dropdown'){?>
                            <div class="col-lg-4">
                                <select id="cf<?php echo $_smarty_tpl->tpl_vars['c']->value['id'];?>
" class="form-control">
                                    <?php  $_smarty_tpl->tpl_vars['fo'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['fo']->_loop = false;
 $_from = explode(',',$_smarty_tpl->tpl_vars['c']->value['fieldoptions']); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['fo']->key => $_smarty_tpl->tpl_vars['fo']->value){
$_smarty_tpl->tpl_vars['fo']->_loop = true;
?>
                                        <option><?php echo $_smarty_tpl->tpl_vars['fo']->value;?>
</option>
                                    <?php } ?>
                                </select>
                                <?php if (($_smarty_tpl->tpl_vars['c']->value['description'])!=''){?>
                                    <span class="help-block"><?php echo $_smarty_tpl->tpl_vars['c']->value['description'];?>
</span>
                                <?php }?>
                            </div>


                        <?php }elseif(($_smarty_tpl->tpl_vars['c']->value['fieldtype'])=='textarea'){?>

                            <div class="col-lg-4">
                                <textarea id="cf<?php echo $_smarty_tpl->tpl_vars['c']->value['id'];?>
" name="cf<?php echo $_smarty_tpl->tpl_vars['c']->value['id'];?>
" class="form-control" rows="3"></textarea>
                                <?php if (($_smarty_tpl->tpl_vars['c']->value['description'])!=''){?>
                                   <span class="help-block"><?php echo $_smarty_tpl->tpl_vars['c']->value['description'];?>
</span>
                                <?php }?>
                            </div>

<?php }else{ ?>

                        <?php }?>
                            <div class="col-lg-4"><a href="#" class="btn btn-primary sys_edit" id="f<?php echo $_smarty_tpl->tpl_vars['c']->value['id'];?>
"><i class="fa fa-pencil"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Edit'];?>
</a>

                                <a href="#" class="btn btn-danger cdelete" id="d<?php echo $_smarty_tpl->tpl_vars['c']->value['id'];?>
"><i class="fa fa-trash"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Delete'];?>
</a>


                            </div>
                        </div>
                        <?php }
if (!$_smarty_tpl->tpl_vars['c']->_loop) {
?>

                        <h4 class="muted text-center"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Custom Fields Not Available'];?>
</h4>

                    <?php } ?>
                    <p class=" text-center"><a href="" class="btn btn-outline btn-success sys_add"><i class="fa fa-plus"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Add Custom Field'];?>
</a></p>


                </form>

            </div>
        </div>



    </div>


</div>


<input type="hidden" id="_lan_are_you_sure" value="<?php echo $_smarty_tpl->tpl_vars['_L']->value['are_you_sure'];?>
">


<?php echo $_smarty_tpl->getSubTemplate ("sections/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php }} ?>