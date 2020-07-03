<?php /* Smarty version Smarty-3.1.13, created on 2020-06-27 18:56:39
         compiled from "ui\theme\softhash\edit-invoice.tpl" */ ?>
<?php /*%%SmartyHeaderCode:4113374455ef7dcb7826798-13630823%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd933a37361126049173df8029b8ce1d810080342' => 
    array (
      0 => 'ui\\theme\\softhash\\edit-invoice.tpl',
      1 => 1441822250,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '4113374455ef7dcb7826798-13630823',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_L' => 0,
    'c' => 0,
    'cs' => 0,
    'i' => 0,
    't' => 0,
    'ts' => 0,
    '_c' => 0,
    'items' => 0,
    'item' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5ef7dcb7a70992_32017472',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5ef7dcb7a70992_32017472')) {function content_5ef7dcb7a70992_32017472($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_replace')) include 'C:\\xampp\\htdocs\\billing\\sysfrm\\lib\\smarty\\libs\\plugins\\modifier.replace.php';
?><?php echo $_smarty_tpl->getSubTemplate ("sections/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<div class="row">
    <div class="col-lg-12">
        <div class="wrapper wrapper-content animated fadeInRight">
            <form id="invform" method="post">
                <div class="ibox-content p-xl" id="ibox_form">
                    <div class="row">
                        <div class="alert alert-danger" id="emsg">
                            <span id="emsgbody"></span>
                        </div>
                        <div class="col-md-6">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <label for="cid" class="col-sm-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Customer'];?>
</label>

                                    <div class="col-sm-10">
                                        <select id="cid" name="cid" class="form-control">
                                            <option value=""><?php echo $_smarty_tpl->tpl_vars['_L']->value['Select Contact'];?>
...</option>
                                            <?php  $_smarty_tpl->tpl_vars['cs'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['cs']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['c']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['cs']->key => $_smarty_tpl->tpl_vars['cs']->value){
$_smarty_tpl->tpl_vars['cs']->_loop = true;
?>
                                                <option value="<?php echo $_smarty_tpl->tpl_vars['cs']->value['id'];?>
"
                                                        <?php if ($_smarty_tpl->tpl_vars['i']->value['account']==$_smarty_tpl->tpl_vars['cs']->value['account']){?>selected="selected" <?php }?>><?php echo $_smarty_tpl->tpl_vars['cs']->value['account'];?>
</option>
                                            <?php } ?>

                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputPassword3" class="col-sm-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Address'];?>
</label>

                                    <div class="col-sm-10">
                                        <textarea id="address" readonly class="form-control" rows="5"></textarea>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="invoicenum"
                                           class="col-sm-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Invoice Prefix'];?>
</label>

                                    <div class="col-sm-6">
                                        <input type="text" class="form-control" id="invoicenum" name="invoicenum"
                                               value="<?php echo $_smarty_tpl->tpl_vars['i']->value['invoicenum'];?>
">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="cn"
                                           class="col-sm-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Invoice'];?>
 #</label>

                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="cn" name="cn" value="<?php echo $_smarty_tpl->tpl_vars['i']->value['cn'];?>
">
                                        <span class="help-block"><?php echo $_smarty_tpl->tpl_vars['_L']->value['invoice_number_help'];?>
</span>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-horizontal">
                                <?php if ($_smarty_tpl->tpl_vars['i']->value['r']!='0'){?>
                                    <div class="form-group">
                                        <label for="inputEmail3"
                                               class="col-sm-4 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Repeat Every'];?>
</label>

                                        <div class="col-sm-8">
                                            <select class="form-control" name="repeat" id="repeat">
                                                <option value="week1" <?php if ($_smarty_tpl->tpl_vars['i']->value['r']=='+1 week'){?> selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['_L']->value['Week'];?>
</option>
                                                <option value="weeks2" <?php if ($_smarty_tpl->tpl_vars['i']->value['r']=='+2 weeks'){?> selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['_L']->value['Weeks_2'];?>
</option>
                                                <option value="month1" <?php if ($_smarty_tpl->tpl_vars['i']->value['r']=='+1 month'){?> selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['_L']->value['Month'];?>
</option>
                                                <option value="months2" <?php if ($_smarty_tpl->tpl_vars['i']->value['r']=='+2 months'){?> selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['_L']->value['Months_2'];?>
</option>
                                                <option value="months3" <?php if ($_smarty_tpl->tpl_vars['i']->value['r']=='+3 months'){?> selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['_L']->value['Months_3'];?>
</option>
                                                <option value="months6" <?php if ($_smarty_tpl->tpl_vars['i']->value['r']=='+6 months'){?> selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['_L']->value['Months_6'];?>
</option>
                                                <option value="year1" <?php if ($_smarty_tpl->tpl_vars['i']->value['r']=='+1 year'){?> selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['_L']->value['Year'];?>
</option>
                                                <option value="years2" <?php if ($_smarty_tpl->tpl_vars['i']->value['r']=='+2 years'){?> selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['_L']->value['Years_2'];?>
</option>
                                                <option value="years3" <?php if ($_smarty_tpl->tpl_vars['i']->value['r']=='+3 years'){?> selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['_L']->value['Years_3'];?>
</option>

                                            </select>
                                        </div>
                                    </div>
                                <?php }else{ ?>
                                    <input type="hidden" name="repeat" id="repeat" value="0">
                                <?php }?>
                                <div class="form-group">
                                    <label for="inputEmail3"
                                           class="col-sm-4 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Invoice Date'];?>
</label>

                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="idate" name="idate" datepicker
                                               data-date-format="yyyy-mm-dd" data-auto-close="true"
                                               value="<?php echo $_smarty_tpl->tpl_vars['i']->value['date'];?>
">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputPassword3" class="col-sm-4 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Due Date'];?>
</label>

                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="ddate" name="ddate" datepicker
                                               data-date-format="yyyy-mm-dd" data-auto-close="true"
                                               value="<?php echo $_smarty_tpl->tpl_vars['i']->value['duedate'];?>
">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="tid" class="col-sm-4 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Sales TAX'];?>
</label>

                                    <div class="col-sm-8">
                                        <select id="tid" name="tid" class="form-control">
                                            <option value="">None</option>
                                            <?php  $_smarty_tpl->tpl_vars['ts'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['ts']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['t']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['ts']->key => $_smarty_tpl->tpl_vars['ts']->value){
$_smarty_tpl->tpl_vars['ts']->_loop = true;
?>
                                                <option value="<?php echo $_smarty_tpl->tpl_vars['ts']->value['id'];?>
"
                                                        <?php if ($_smarty_tpl->tpl_vars['ts']->value['name']==$_smarty_tpl->tpl_vars['i']->value['taxname']){?>selected="selected" <?php }?> ><?php echo $_smarty_tpl->tpl_vars['ts']->value['name'];?>

                                                    (<?php ob_start();?><?php echo number_format($_smarty_tpl->tpl_vars['ts']->value['rate'],2,$_smarty_tpl->tpl_vars['_c']->value['dec_point'],$_smarty_tpl->tpl_vars['_c']->value['thousands_sep']);?>
<?php $_tmp1=ob_get_clean();?><?php echo $_tmp1;?>

                                                    %)
                                                </option>
                                            <?php } ?>

                                        </select>
                                        <input type="hidden" id="stax" name="stax" value="<?php echo $_smarty_tpl->tpl_vars['i']->value['taxrate'];?>
">
                                        <input type="hidden" id="discount_amount" name="discount_amount"
                                               value="<?php echo $_smarty_tpl->tpl_vars['i']->value['discount_value'];?>
">
                                        <input type="hidden" id="discount_type" name="discount_type"
                                               value="<?php echo $_smarty_tpl->tpl_vars['i']->value['discount_type'];?>
">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="add_discount"
                                           class="col-sm-4 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Discount'];?>
</label>

                                    <div class="col-sm-8">

                                        <a href="#" id="add_discount" class="btn btn-info btn-xs"
                                           style="margin-top: 5px;"><i
                                                    class="fa fa-minus-circle"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Set Discount'];?>
</a>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>


                    <div class="table-responsive m-t">
                        <table class="table invoice-table" id="invoice_items">
                            <thead>
                            <tr>
                                <th width="10%"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Item Code'];?>
</th>
                                <th width="55%"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Item Name'];?>
</th>
                                <th width="10%"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Qty'];?>
</th>
                                <th width="10%"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Price'];?>
</th>
                                <th width="15%"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Total'];?>
</th>
                                
                            </tr>
                            </thead>
                            <tbody>
                            <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['items']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value){
$_smarty_tpl->tpl_vars['item']->_loop = true;
?>
                                <tr>
                                    <td><?php echo $_smarty_tpl->tpl_vars['item']->value['itemcode'];?>
</td>
                                    <td><input type="text" class="form-control item_name" name="desc[]"
                                               value="<?php echo $_smarty_tpl->tpl_vars['item']->value['description'];?>
"></td>
                                    <td><input type="text" class="form-control qty"
                                               value="<?php if (($_smarty_tpl->tpl_vars['_c']->value['dec_point'])==','){?><?php echo smarty_modifier_replace($_smarty_tpl->tpl_vars['item']->value['qty'],'.',',');?>
<?php }else{ ?><?php echo $_smarty_tpl->tpl_vars['item']->value['qty'];?>
<?php }?>"
                                               name="qty[]"></td>
                                    <td><input type="text" class="form-control item_price" name="amount[]"
                                               value="<?php if (($_smarty_tpl->tpl_vars['_c']->value['dec_point'])==','){?><?php echo smarty_modifier_replace($_smarty_tpl->tpl_vars['item']->value['amount'],'.',',');?>
<?php }else{ ?><?php echo $_smarty_tpl->tpl_vars['item']->value['amount'];?>
<?php }?>">
                                    </td>
                                    <td class="ltotal"><input type="text" class="form-control lvtotal" readonly=""
                                                              value="<?php if (($_smarty_tpl->tpl_vars['_c']->value['dec_point'])==','){?><?php ob_start();?><?php echo $_smarty_tpl->tpl_vars['item']->value['total'];?>
<?php $_tmp2=ob_get_clean();?><?php echo smarty_modifier_replace($_tmp2,'.',',');?>
<?php }else{ ?><?php ob_start();?><?php echo $_smarty_tpl->tpl_vars['item']->value['total'];?>
<?php $_tmp3=ob_get_clean();?><?php echo $_tmp3;?>
<?php }?>">
                                    </td>
                                </tr>
                            <?php } ?>

                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            

                            </tbody>
                        </table>

                    </div>
                    <!-- /table-responsive -->
                    <button type="button" class="btn btn-primary" id="blank-add"><i class="fa fa-plus"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Add blank Line'];?>

                    </button>
                    <button type="button" class="btn btn-primary" id="item-add"><i class="fa fa-search"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Add Product OR Service'];?>

                    </button>
                    <button type="button" class="btn btn-danger" id="item-remove"><i class="fa fa-minus-circle"></i>
                        <?php echo $_smarty_tpl->tpl_vars['_L']->value['Delete'];?>

                    </button>
                    <table class="table invoice-total">
                        <tbody>
                        <tr>
                            <td><strong><?php echo $_smarty_tpl->tpl_vars['_L']->value['Sub Total'];?>
 :</strong></td>
                            <td id="sub_total" class="amount" data-a-sign="" data-a-dec="<?php echo $_smarty_tpl->tpl_vars['_c']->value['dec_point'];?>
"
                                data-a-sep="" data-d-group="2">0.00
                            </td>
                        </tr>

                        <tr>
                            <td><strong><?php echo $_smarty_tpl->tpl_vars['_L']->value['Discount'];?>
 <span id="is_pt"></span> :</strong></td>
                            <td id="discount_amount_total" class="amount" data-a-sign="" data-a-dec="<?php echo $_smarty_tpl->tpl_vars['_c']->value['dec_point'];?>
"
                                data-a-sep="" data-d-group="2">0.00
                            </td>
                        </tr>


                        <tr>
                            <td><strong><?php echo $_smarty_tpl->tpl_vars['_L']->value['TAX'];?>
 :</strong></td>
                            <td id="taxtotal" class="amount" data-a-sign="" data-a-dec="<?php echo $_smarty_tpl->tpl_vars['_c']->value['dec_point'];?>
"
                                data-a-sep="" data-d-group="2">0.00
                            </td>
                        </tr>
                        <tr>
                            <td><strong><?php echo $_smarty_tpl->tpl_vars['_L']->value['TOTAL'];?>
 :</strong></td>
                            <td id="total" class="amount" data-a-sign="" data-a-dec="<?php echo $_smarty_tpl->tpl_vars['_c']->value['dec_point'];?>
" data-a-sep=""
                                data-d-group="2">0.00
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <textarea class="form-control" name="notes" id="notes" rows="3"
                              placeholder="<?php echo $_smarty_tpl->tpl_vars['_L']->value['Invoice Terms'];?>
..."><?php echo $_smarty_tpl->tpl_vars['i']->value['notes'];?>
</textarea>
                    <br>

                    <div class="text-right">
                        <input type="hidden" name="iid" id="iid" value="<?php echo $_smarty_tpl->tpl_vars['i']->value['id'];?>
">
                        <input type="hidden" id="_dec_point" name="_dec_point" value="<?php echo $_smarty_tpl->tpl_vars['_c']->value['dec_point'];?>
">
                        <button class="btn btn-primary" id="submit"><i class="fa fa-save"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Save Invoice'];?>
</button>
                    </div>


                </div>
            </form>
        </div>
    </div>
</div>



<input type="hidden" id="_lan_set_discount" value="<?php echo $_smarty_tpl->tpl_vars['_L']->value['Set Discount'];?>
">
<input type="hidden" id="_lan_discount" value="<?php echo $_smarty_tpl->tpl_vars['_L']->value['Discount'];?>
">
<input type="hidden" id="_lan_discount_type" value="<?php echo $_smarty_tpl->tpl_vars['_L']->value['Discount Type'];?>
">
<input type="hidden" id="_lan_percentage" value="<?php echo $_smarty_tpl->tpl_vars['_L']->value['Percentage'];?>
">
<input type="hidden" id="_lan_fixed_amount" value="<?php echo $_smarty_tpl->tpl_vars['_L']->value['Fixed Amount'];?>
">
<input type="hidden" id="_lan_btn_save" value="<?php echo $_smarty_tpl->tpl_vars['_L']->value['Save'];?>
">

<?php echo $_smarty_tpl->getSubTemplate ("sections/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<?php }} ?>