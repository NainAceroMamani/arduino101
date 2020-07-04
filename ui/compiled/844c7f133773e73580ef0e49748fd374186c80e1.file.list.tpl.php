<?php /* Smarty version Smarty-3.1.13, created on 2020-07-04 09:23:59
         compiled from "C:\xampp\htdocs\arduino101\sysfrm\plugins\notes\views\list.tpl" */ ?>
<?php /*%%SmartyHeaderCode:7809979675f0090ffd93537-52375038%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '844c7f133773e73580ef0e49748fd374186c80e1' => 
    array (
      0 => 'C:\\xampp\\htdocs\\arduino101\\sysfrm\\plugins\\notes\\views\\list.tpl',
      1 => 1441048300,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '7809979675f0090ffd93537-52375038',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_url' => 0,
    'notes' => 0,
    'note' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5f0090ffdcf712_12453024',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5f0090ffdcf712_12453024')) {function content_5f0090ffdcf712_12453024($_smarty_tpl) {?><div class="row">

        <div class="col-md-12">

            <div class="panel panel-default">
                <div class="panel-body">
                    <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
notes/init/add/" class="btn btn-primary mb-md"><i class="fa fa-plus"></i> Add New Note </a>
                    <br>
                    <table class="table table-bordered table-hover">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th width="70%">Title</th>
                            <th>Manage</th>
                        </tr>
                        </thead>
                        <tbody>

                        <?php  $_smarty_tpl->tpl_vars['note'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['note']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['notes']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['note']->key => $_smarty_tpl->tpl_vars['note']->value){
$_smarty_tpl->tpl_vars['note']->_loop = true;
?>

                            <tr>

                                <td><?php echo $_smarty_tpl->tpl_vars['note']->value['id'];?>
</td>

                                <td><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
notes/init/edit/<?php echo $_smarty_tpl->tpl_vars['note']->value['id'];?>
/"><?php echo $_smarty_tpl->tpl_vars['note']->value['title'];?>
</a> </td>

                                <td>
                                    <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
notes/init/edit/<?php echo $_smarty_tpl->tpl_vars['note']->value['id'];?>
/" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i> Edit </a>
                                    <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
notes/init/delete/<?php echo $_smarty_tpl->tpl_vars['note']->value['id'];?>
/" class="btn btn-danger btn-xs"><i class="fa fa-trash"></i> Delete </a>
                                </td>
                            </tr>

                            <?php }
if (!$_smarty_tpl->tpl_vars['note']->_loop) {
?>

                            <tr>

                                <td colspan="3">No Notes Found</td>

                            </tr>

                        <?php } ?>

                        </tbody>
                    </table>

                </div>
            </div>
        </div>


</div><?php }} ?>