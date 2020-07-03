<?php /* Smarty version Smarty-3.1.13, created on 2016-07-26 20:33:48
         compiled from "ui\theme\softhash\invoice-view.tpl" */ ?>
<?php /*%%SmartyHeaderCode:133005798016cedaf91-40483380%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a451d1b1a214b55b9630a3a61e36819b30b0e49c' => 
    array (
      0 => 'ui\\theme\\softhash\\invoice-view.tpl',
      1 => 1468954928,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '133005798016cedaf91-40483380',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_L' => 0,
    '_url' => 0,
    'd' => 0,
    '_c' => 0,
    'app_url' => 0,
    'a' => 0,
    'cf' => 0,
    'cfs' => 0,
    'x_html' => 0,
    'i_due' => 0,
    'items' => 0,
    'item' => 0,
    'trs_c' => 0,
    'trs' => 0,
    'tr' => 0,
    'emls_c' => 0,
    'emls' => 0,
    'eml' => 0,
    'user' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5798016e79af27_89670564',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5798016e79af27_89670564')) {function content_5798016e79af27_89670564($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("sections/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<div class="row">
    <div class="col-lg-12">
        <div class="form-group">
            <label for="exampleInputEmail1"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Unique Invoice URL'];?>
:</label>
            <input type="text" class="form-control" id="invoice_public_url" onClick="this.setSelectionRange(0, this.value.length)" value="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
client/iview/<?php echo $_smarty_tpl->tpl_vars['d']->value['id'];?>
/token_<?php echo $_smarty_tpl->tpl_vars['d']->value['vtoken'];?>
">
        </div>
    </div>
    <div class="col-lg-12"  id="sysfrm_ajaxrender">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5><?php echo $_smarty_tpl->tpl_vars['_L']->value['Invoice'];?>
 - <?php echo $_smarty_tpl->tpl_vars['d']->value['invoicenum'];?>
<?php if ($_smarty_tpl->tpl_vars['d']->value['cn']!=''){?> <?php echo $_smarty_tpl->tpl_vars['d']->value['cn'];?>
 <?php }else{ ?> <?php echo $_smarty_tpl->tpl_vars['d']->value['id'];?>
 <?php }?> </h5>
                <input type="hidden" name="iid" value="<?php echo $_smarty_tpl->tpl_vars['d']->value['id'];?>
" id="iid">


                <div class="btn-group  pull-right" role="group" aria-label="...">


                    <div class="btn-group" role="group">
                        <button type="button" class="btn  btn-success btn-sm dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                            <i class="fa fa-envelope-o"></i>  <?php echo $_smarty_tpl->tpl_vars['_L']->value['Send Email'];?>

                            <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#" id="mail_invoice_created"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Invoice Created'];?>
</a></li>
                            <li><a href="#" id="mail_invoice_reminder"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Invoice Payment Reminder'];?>
</a></li>
                            <li><a href="#" id="mail_invoice_overdue"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Invoice Overdue Notice'];?>
</a></li>
                            <li><a href="#" id="mail_invoice_confirm"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Invoice Payment Confirmation'];?>
</a></li>
                            <li><a href="#" id="mail_invoice_refund"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Invoice Refund Confirmation'];?>
</a></li>
                        </ul>
                    </div>

                    <div class="btn-group" role="group">
                        <button type="button" class="btn  btn-primary btn-sm dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                            <i class="fa fa-ellipsis-v"></i>  <?php echo $_smarty_tpl->tpl_vars['_L']->value['Mark As'];?>

                            <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" role="menu">
                            <?php if ($_smarty_tpl->tpl_vars['d']->value['status']!='Paid'){?>
                                <li><a href="#" id="mark_paid"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Paid'];?>
</a></li>
                            <?php }?>
                            <?php if ($_smarty_tpl->tpl_vars['d']->value['status']!='Unpaid'){?>
                                <li><a href="#" id="mark_unpaid"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Unpaid'];?>
</a></li>
                            <?php }?>
                            <?php if ($_smarty_tpl->tpl_vars['d']->value['status']!='Partially Paid'){?>
                                <li><a href="#" id="mark_partially_paid"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Partially Paid'];?>
</a></li>
                            <?php }?>
                            <?php if ($_smarty_tpl->tpl_vars['d']->value['status']!='Cancelled'){?>
                                <li><a href="#" id="mark_cancelled"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Cancelled'];?>
</a></li>
                            <?php }?>

                        </ul>
                    </div>

                    <?php if ($_smarty_tpl->tpl_vars['_c']->value['accounting']=='1'){?>
                        <button type="button" class="btn  btn-danger btn-sm" id="add_payment"><i class="fa fa-plus"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Add Payment'];?>
</button>
                    <?php }?>

                    <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
client/iview/<?php echo $_smarty_tpl->tpl_vars['d']->value['id'];?>
/token_<?php echo $_smarty_tpl->tpl_vars['d']->value['vtoken'];?>
" target="_blank" class="btn btn-primary  btn-sm"><i class="fa fa-paper-plane-o"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Preview'];?>
</a>
                    <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
invoices/edit/<?php echo $_smarty_tpl->tpl_vars['d']->value['id'];?>
" class="btn btn-warning  btn-sm"><i class="fa fa-pencil"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Edit'];?>
</a>
                    <div class="btn-group" role="group">
                        <button type="button" class="btn  btn-success btn-sm dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-file-pdf-o"></i>
                            <?php echo $_smarty_tpl->tpl_vars['_L']->value['PDF'];?>

                            <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
invoices/pdf/<?php echo $_smarty_tpl->tpl_vars['d']->value['id'];?>
/view" target="_blank"><?php echo $_smarty_tpl->tpl_vars['_L']->value['View PDF'];?>
</a></li>
                            <li><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
invoices/pdf/<?php echo $_smarty_tpl->tpl_vars['d']->value['id'];?>
/dl"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Download PDF'];?>
</a></li>
                        </ul>
                    </div>
                    <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
iview/print/<?php echo $_smarty_tpl->tpl_vars['d']->value['id'];?>
/token_<?php echo $_smarty_tpl->tpl_vars['d']->value['vtoken'];?>
" target="_blank" class="btn btn-primary  btn-sm"><i class="fa fa-print"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Print'];?>
</a>


                </div>

            </div>
            <div class="ibox-content">

                <div class="invoice">
                    <header class="clearfix">
                        <div class="row">
                            <div class="col-sm-6 mt-md">
                                <h2 class="h2 mt-none mb-sm text-dark text-bold"><?php echo $_smarty_tpl->tpl_vars['_L']->value['INVOICE'];?>
</h2>
                                <h4 class="h4 m-none text-dark text-bold">#<?php echo $_smarty_tpl->tpl_vars['d']->value['invoicenum'];?>
<?php if ($_smarty_tpl->tpl_vars['d']->value['cn']!=''){?> <?php echo $_smarty_tpl->tpl_vars['d']->value['cn'];?>
 <?php }else{ ?> <?php echo $_smarty_tpl->tpl_vars['d']->value['id'];?>
 <?php }?></h4>
                                <?php if ($_smarty_tpl->tpl_vars['d']->value['status']=='Unpaid'){?>
                                    <h3 class="alert alert-danger"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Unpaid'];?>
</h3>
                                <?php }elseif($_smarty_tpl->tpl_vars['d']->value['status']=='Paid'){?>
                                    <h3 class="alert alert-success"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Paid'];?>
</h3>
                                <?php }elseif($_smarty_tpl->tpl_vars['d']->value['status']=='Partially Paid'){?>
                                    <h3 class="alert alert-info"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Partially Paid'];?>
</h3>
                                <?php }else{ ?>
                                    <h3 class="alert alert-info"><?php echo $_smarty_tpl->tpl_vars['d']->value['status'];?>
</h3>
                                <?php }?>
                            </div>
                            <div class="col-sm-6 text-right mt-md mb-md">
                                <address class="ib mr-xlg">
                                    <?php echo $_smarty_tpl->tpl_vars['_c']->value['caddress'];?>

                                </address>
                                <div class="ib">
                                    <img src="<?php echo $_smarty_tpl->tpl_vars['app_url']->value;?>
sysfrm/uploads/system/logo.png" alt="Logo">
                                </div>
                            </div>
                        </div>
                    </header>
                    <div class="bill-info">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="bill-to">
                                    <p class="h5 mb-xs text-dark text-semibold"><strong><?php echo $_smarty_tpl->tpl_vars['_L']->value['Invoiced To'];?>
:</strong></p>
                                    <address>
                                        <?php if ($_smarty_tpl->tpl_vars['a']->value['company']!=''){?>
                                            <?php echo $_smarty_tpl->tpl_vars['a']->value['company'];?>

                                            <br>
                                           <?php echo $_smarty_tpl->tpl_vars['_L']->value['ATTN'];?>
: <?php echo $_smarty_tpl->tpl_vars['d']->value['account'];?>

                                            <br>
                                            <?php }else{ ?>
                                            <?php echo $_smarty_tpl->tpl_vars['d']->value['account'];?>

                                            <br>
                                        <?php }?>

                                        <?php echo $_smarty_tpl->tpl_vars['a']->value['address'];?>
 <br>
                                        <?php echo $_smarty_tpl->tpl_vars['a']->value['city'];?>
 <br>
                                        <?php echo $_smarty_tpl->tpl_vars['a']->value['state'];?>
 - <?php echo $_smarty_tpl->tpl_vars['a']->value['zip'];?>
 <br>
                                        <?php echo $_smarty_tpl->tpl_vars['a']->value['country'];?>

                                        <br>
                                        <strong><?php echo $_smarty_tpl->tpl_vars['_L']->value['Phone'];?>
:</strong> <?php echo $_smarty_tpl->tpl_vars['a']->value['phone'];?>

                                        <br>
                                        <strong><?php echo $_smarty_tpl->tpl_vars['_L']->value['Email'];?>
:</strong> <?php echo $_smarty_tpl->tpl_vars['a']->value['email'];?>

                                        <?php  $_smarty_tpl->tpl_vars['cfs'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['cfs']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['cf']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['cfs']->key => $_smarty_tpl->tpl_vars['cfs']->value){
$_smarty_tpl->tpl_vars['cfs']->_loop = true;
?>
                                            <br>
                                            <strong><?php echo $_smarty_tpl->tpl_vars['cfs']->value['fieldname'];?>
: </strong> <?php echo get_custom_field_value($_smarty_tpl->tpl_vars['cfs']->value['id'],$_smarty_tpl->tpl_vars['a']->value['id']);?>

                                        <?php } ?>

                                        <?php echo $_smarty_tpl->tpl_vars['x_html']->value;?>

                                    </address>





                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="bill-data text-right">
                                    <p class="mb-none">
                                        <span class="text-dark"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Invoice Date'];?>
:</span>
                                        <span class="value"><?php echo date($_smarty_tpl->tpl_vars['_c']->value['df'],strtotime($_smarty_tpl->tpl_vars['d']->value['date']));?>
</span>
                                    </p>
                                    <p class="mb-none">
                                        <span class="text-dark"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Due Date'];?>
:</span>
                                        <span class="value"><?php echo date($_smarty_tpl->tpl_vars['_c']->value['df'],strtotime($_smarty_tpl->tpl_vars['d']->value['duedate']));?>
</span>
                                    </p>
                                    <h2> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Invoice Total'];?>
: <span class="amount"><?php echo $_smarty_tpl->tpl_vars['d']->value['total'];?>
</span> </h2>
                                    <?php if (($_smarty_tpl->tpl_vars['d']->value['credit'])!='0.00'){?>
                                        <h2> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Total Paid'];?>
:  <span class="amount"><?php echo $_smarty_tpl->tpl_vars['d']->value['credit'];?>
</span> </h2>
                                        
                                        <h2> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Amount Due'];?>
: <span class="amount"><?php echo $_smarty_tpl->tpl_vars['i_due']->value;?>
</span> </h2>
                                    <?php }?>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="table-responsive">
                        <table class="table invoice-items">
                            <thead>
                            <tr class="h4 text-dark">
                                <th id="cell-id" class="text-semibold">#</th>
                                <th id="cell-item" class="text-semibold"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Item'];?>
</th>

                                <th id="cell-price" class="text-center text-semibold"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Price'];?>
</th>
                                <th id="cell-qty" class="text-center text-semibold"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Quantity'];?>
</th>
                                <th id="cell-total" class="text-center text-semibold"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Total'];?>
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
                                    <td class="text-semibold text-dark"><?php echo $_smarty_tpl->tpl_vars['item']->value['description'];?>
</td>

                                    <td class="text-center amount"><?php echo $_smarty_tpl->tpl_vars['item']->value['amount'];?>
</td>
                                    <td class="text-center"><?php echo $_smarty_tpl->tpl_vars['item']->value['qty'];?>
</td>
                                    <td class="text-center amount"><?php echo $_smarty_tpl->tpl_vars['item']->value['total'];?>
</td>
                                </tr>
                            <?php } ?>

                            </tbody>
                        </table>
                    </div>

                    <div class="invoice-summary">
                        <div class="row">
                            <div class="col-sm-4 col-sm-offset-8">
                                <table class="table h5 text-dark">
                                    <tbody>
                                    <tr class="b-top-none">
                                        <td colspan="2"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Subtotal'];?>
</td>
                                        <td class="text-left amount"><?php echo $_smarty_tpl->tpl_vars['d']->value['subtotal'];?>
</td>
                                    </tr>
                                   <?php if (($_smarty_tpl->tpl_vars['d']->value['discount'])!='0.00'){?>
                                       <tr>
                                           <td colspan="2"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Discount'];?>
</td>
                                           <td class="text-left amount"><?php echo $_smarty_tpl->tpl_vars['d']->value['discount'];?>
</td>
                                       </tr>
                                   <?php }?>
                                    <tr>
                                        <td colspan="2"><?php echo $_smarty_tpl->tpl_vars['_L']->value['TAX'];?>
</td>
                                        <td class="text-left amount"><?php echo $_smarty_tpl->tpl_vars['d']->value['tax'];?>
</td>
                                    </tr>
                                    <?php if (($_smarty_tpl->tpl_vars['d']->value['credit'])!='0.00'){?>
                                        <tr>
                                            <td colspan="2"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Total'];?>
</td>
                                            <td class="text-left amount"><?php echo $_smarty_tpl->tpl_vars['d']->value['total'];?>
</td>
                                        </tr>
                                        <tr>
                                            <td colspan="2"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Total Paid'];?>
</td>
                                            <td class="text-left amount"><?php echo $_smarty_tpl->tpl_vars['d']->value['credit'];?>
</td>
                                        </tr>
                                        <tr class="h4">
                                            <td colspan="2"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Amount Due'];?>
</td>
                                            
                                            <td class="text-left amount"><?php echo $_smarty_tpl->tpl_vars['i_due']->value;?>
</td>
                                        </tr>
                                        <?php }else{ ?>
                                        <tr class="h4">
                                            <td colspan="2"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Grand Total'];?>
</td>
                                            <td class="text-left amount"><?php echo $_smarty_tpl->tpl_vars['d']->value['total'];?>
</td>
                                        </tr>
                                    <?php }?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

   <?php if (($_smarty_tpl->tpl_vars['trs_c']->value!='')){?>
       <h3><?php echo $_smarty_tpl->tpl_vars['_L']->value['Related Transactions'];?>
</h3>
       <table class="table table-bordered sys_table">
           <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Date'];?>
</th>
           <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Account'];?>
</th>


           <th class="text-right"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Amount'];?>
</th>

           <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Description'];?>
</th>




           <?php  $_smarty_tpl->tpl_vars['tr'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['tr']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['trs']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['tr']->key => $_smarty_tpl->tpl_vars['tr']->value){
$_smarty_tpl->tpl_vars['tr']->_loop = true;
?>
               <tr class="<?php if ($_smarty_tpl->tpl_vars['tr']->value['cr']=='0.00'){?>warning <?php }else{ ?>info<?php }?>">
                   <td><?php echo date($_smarty_tpl->tpl_vars['_c']->value['df'],strtotime($_smarty_tpl->tpl_vars['tr']->value['date']));?>
</td>
                   <td><?php echo $_smarty_tpl->tpl_vars['tr']->value['account'];?>
</td>


                   <td class="text-right amount"><?php echo $_smarty_tpl->tpl_vars['tr']->value['amount'];?>
</td>
                   <td><?php echo $_smarty_tpl->tpl_vars['tr']->value['description'];?>
</td>




               </tr>
           <?php } ?>



       </table>
   <?php }?>

                <?php if (($_smarty_tpl->tpl_vars['d']->value['notes'])!=''){?>
                    <div class="well m-t">
                        <?php echo $_smarty_tpl->tpl_vars['d']->value['notes'];?>

                    </div>
                <?php }?>

                <?php if (($_smarty_tpl->tpl_vars['emls_c']->value!='')){?>
                    <hr>
                    <h3><?php echo $_smarty_tpl->tpl_vars['_L']->value['Related Emails'];?>
</h3>
                    <table class="table table-bordered sys_table">
                        <th width="20%"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Date'];?>
</th>
                        <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Subject'];?>
</th>







                        <?php  $_smarty_tpl->tpl_vars['eml'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['eml']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['emls']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['eml']->key => $_smarty_tpl->tpl_vars['eml']->value){
$_smarty_tpl->tpl_vars['eml']->_loop = true;
?>
                            <tr>
                                <td><?php echo date($_smarty_tpl->tpl_vars['_c']->value['df'],strtotime($_smarty_tpl->tpl_vars['eml']->value['date']));?>
</td>
                                <td><?php echo $_smarty_tpl->tpl_vars['eml']->value['subject'];?>
</td>
                            </tr>
                        <?php } ?>



                    </table>
                <?php }?>



            </div>


        </div>
    </div>
</div>

<input type="hidden" id="_lan_msg_confirm" value="<?php echo $_smarty_tpl->tpl_vars['_L']->value['are_you_sure'];?>
">
<input type="hidden" id="admin_email" value="<?php echo $_smarty_tpl->tpl_vars['user']->value->username;?>
">


<?php echo $_smarty_tpl->getSubTemplate ("sections/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<?php }} ?>