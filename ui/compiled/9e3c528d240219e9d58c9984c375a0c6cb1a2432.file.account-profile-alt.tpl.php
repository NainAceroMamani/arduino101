<?php /* Smarty version Smarty-3.1.13, created on 2016-07-26 20:27:11
         compiled from "ui\theme\softhash\account-profile-alt.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2035797ffdfdaf660-96710739%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9e3c528d240219e9d58c9984c375a0c6cb1a2432' => 
    array (
      0 => 'ui\\theme\\softhash\\account-profile-alt.tpl',
      1 => 1468891194,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2035797ffdfdaf660-96710739',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'd' => 0,
    'app_url' => 0,
    '_L' => 0,
    'inv_count' => 0,
    'extra_tab' => 0,
    'tab' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5797ffe0586626_03325609',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5797ffe0586626_03325609')) {function content_5797ffe0586626_03325609($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<div class="row">
    <div class="col-md-12 m-t-md">
        <div class="alert alert-danger" id="emsg">
            <span id="emsgbody"></span>
        </div>
    </div>
</div>
<div class="row">
<div class="col-md-3 ib_profile_width">

    <div class="panel panel-default" id="ibox_panel">

            <div class="panel-body">
                <div class="thumb-info mb-md">
                    <?php if ($_smarty_tpl->tpl_vars['d']->value['img']=='gravatar'){?>
                        <img src="http://www.gravatar.com/avatar/<?php echo md5(($_smarty_tpl->tpl_vars['d']->value['email']));?>
?s=400" class="img-thumbnail img-responsive" alt="<?php echo $_smarty_tpl->tpl_vars['d']->value['fname'];?>
 <?php echo $_smarty_tpl->tpl_vars['d']->value['lname'];?>
">
                    <?php }elseif($_smarty_tpl->tpl_vars['d']->value['img']==''){?>
                        <img src="<?php echo $_smarty_tpl->tpl_vars['app_url']->value;?>
sysfrm/uploads/system/profile-icon.png" class="img-thumbnail img-responsive" alt="<?php echo $_smarty_tpl->tpl_vars['d']->value['fname'];?>
 <?php echo $_smarty_tpl->tpl_vars['d']->value['lname'];?>
">
                    <?php }else{ ?>
                        <img src="<?php echo $_smarty_tpl->tpl_vars['d']->value['img'];?>
" class="img-thumbnail img-responsive" alt="<?php echo $_smarty_tpl->tpl_vars['d']->value['account'];?>
">
                    <?php }?>
                    <div class="thumb-info-title">
                        <span class="thumb-info-inner"><?php echo $_smarty_tpl->tpl_vars['d']->value['account'];?>
</span>

                    </div>
                </div>





                <?php if ($_smarty_tpl->tpl_vars['d']->value['email']!=''){?>
                    <h5 class="text-muted"><?php echo $_smarty_tpl->tpl_vars['d']->value['email'];?>
</h5>
                <?php }?>
                <?php if ($_smarty_tpl->tpl_vars['d']->value['phone']!=''){?>
                    <h5 class="text-muted"><?php echo $_smarty_tpl->tpl_vars['d']->value['phone'];?>
</h5>
                <?php }?>







            </div>

        <div class="panel-body list-group border-bottom m-t-n-lg">
            <a href="#" id="summary" class="list-group-item active"><span class="fa fa-bar-chart-o"></span> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Summary'];?>
 </a>
            <a href="#" id="activity" class="list-group-item"><span class="fa fa-tasks"></span> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Activity'];?>
</a>
            <a href="#" id="invoices" class="list-group-item"><span class="fa fa-credit-card"></span> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Invoices'];?>
<span class="label label-info pull-right"><?php echo $_smarty_tpl->tpl_vars['inv_count']->value;?>
</span></a>
            <a href="#" id="transactions" class="list-group-item"><span class="fa fa-th-list"></span> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Transactions'];?>
</a>
            <a href="#" id="email" class="list-group-item"><span class="fa fa-envelope-o"></span> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Email'];?>
</a>
            <?php echo $_smarty_tpl->tpl_vars['extra_tab']->value;?>

            <a href="#" id="edit" class="list-group-item"><span class="fa fa-pencil"></span> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Edit'];?>
</a>
            <a href="#" id="more" class="list-group-item"><span class="fa fa-bars"></span> <?php echo $_smarty_tpl->tpl_vars['_L']->value['More'];?>
</a>
        </div>

        <div class="panel-body">






            <h5 class="text-muted"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Contact Notes'];?>
</h5>

            <textarea class="form-control" id="notes" rows="6"><?php echo $_smarty_tpl->tpl_vars['d']->value['notes'];?>
</textarea>
            <input type="hidden" id="cid" value="<?php echo $_smarty_tpl->tpl_vars['d']->value['id'];?>
">
            <button type="button" id="note_update" class="btn btn-primary btn-block mt-sm"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Save'];?>
</button>




        </div>

    </div>

</div>

<div class="col-md-9">

    <!-- START TIMELINE -->
    <div class="ibox float-e-margins">
        <div class="ibox-title">
            <h5><?php echo $_smarty_tpl->tpl_vars['d']->value['account'];?>
</h5>
        </div>

        <div class="ibox-content" id="ibox_form">
            
            
           <div id="sysfrm_ajaxrender" style="min-height: 200px;">

           </div>

        </div>
    </div>
    <!-- END TIMELINE -->

</div>

</div>
<input type="hidden" id="_lan_are_you_sure" value="<?php echo $_smarty_tpl->tpl_vars['_L']->value['are_you_sure'];?>
">
<input type="hidden" id="_active_tab" value="<?php echo $_smarty_tpl->tpl_vars['tab']->value;?>
">
<?php echo $_smarty_tpl->getSubTemplate ("sections/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<?php }} ?>