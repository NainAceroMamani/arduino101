{include file="sections/header.tpl"}
<div class="row">
    <div class="col-lg-12">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>
                    {if $recurring}
                        {$_L['Create Recurring Invoice']}
                    {else}
                        {$_L['Create New Invoice']}
                    {/if}
                </h5>

            </div>
            <div class="ibox-content" id="ibox_form">
                <form id="invform" method="post">
                    <div class="ibox-content">
                        <div class="row">
                            <div class="alert alert-danger" id="emsg">
                                <span id="emsgbody"></span>
                            </div>
                            <div class="col-md-6">
                                <div class="form-horizontal">



                                    <div class="form-group">
                                        <label for="cid" class="control-label">{$_L['Customer']}</label>
                                        <span class="help-block"><a href="#"
                                            id="contact_add"><i
                                            class="fa fa-plus"></i>Añadir Cliente</a> </span>
                                            <select id="cid" name="cid" class="form-control">
                                                <option value="">{$_L['Select Contact']}...</option>
                                                {foreach $c as $cs}
                                                    <option value="{$cs['id']}"
                                                            {if $p_cid eq ($cs['id'])}selected="selected" {/if}>{$cs['account']} {if $cs['email'] neq ''}- {$cs['email']}{/if}</option>
                                                {/foreach}

                                            </select>
    
                                    </div>

                                    {$extra_fields}

                                    <div class="form-group">
                                        <label for="inputPassword3"
                                               class="control-label">{$_L['Address']}</label>

                                            <textarea id="address" readonly class="form-control" rows="5"></textarea>
                                    </div>

                                    <div class="form-group">
                                        <label for="invoicenum"
                                               class="control-label">{$_L['Invoice Prefix']}</label>

                                            <input type="text" class="form-control" id="invoicenum" name="invoicenum">

                                    </div>

                                    <div class="form-group">
                                        <label for="cn"
                                               class="control-label">Numero de Factura</label>

                                            <input type="text" class="form-control" id="cn" name="cn">
                                            <small class="help-block">Dejar en blanco para generar un numero</small>
                                    </div>

                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-horizontal">
                                    {if $recurring}
                                        <div class="form-group">
                                            <label for="inputEmail3"
                                                   class="control-label">{$_L['Repeat Every']}</label>

                                                <select class="form-control" name="repeat" id="repeat">
                                                    <option value="week1">{$_L['Week']}</option>
                                                    <option value="weeks2">{$_L['Weeks_2']}</option>
                                                    <option value="month1" selected>{$_L['Month']}</option>
                                                    <option value="months2">{$_L['Months_2']}</option>
                                                    <option value="months3">{$_L['Months_3']}</option>
                                                    <option value="months6">{$_L['Months_6']}</option>
                                                    <option value="year1">{$_L['Year']}</option>
                                                    <option value="years2">{$_L['Years_2']}</option>
                                                    <option value="years3">{$_L['Years_3']}</option>

                                                </select>
                                        </div>
                                    {else}
                                        <input type="hidden" name="repeat" id="repeat" value="0">
                                    {/if}
                                    <div class="form-group">
                                        <label for="inputEmail3"
                                               class="control-label">{$_L['Invoice Date']}</label>

                                            <input type="text" class="form-control" id="idate" name="idate" datepicker
                                                   data-date-format="yyyy-mm-dd" data-auto-close="true"
                                                   value="{$idate}">
                                    </div>
                                    <div class="form-group">
                                        <label for="inputPassword3"
                                               class="control-label">{$_L['Payment Terms']}</label>

                                            <select class="form-control" name="duedate" id="duedate">
                                                <option value="due_on_receipt" selected>{$_L['Due On Receipt']}</option>
                                                <option value="days3">{$_L['days_3']}</option>
                                                <option value="days5">{$_L['days_5']}</option>
                                                <option value="days7">{$_L['days_7']}</option>
                                                <option value="days10">{$_L['days_10']}</option>
                                                <option value="days15">{$_L['days_15']}</option>
                                                <option value="days30">{$_L['days_30']}</option>
                                                <option value="days45">{$_L['days_45']}</option>
                                                <option value="days60">{$_L['days_60']}</option>
                                            </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="tid" class="control-label">Impuesto</label>

                                            <select id="tid" name="tid" class="form-control">
                                                <option value="">{$_L['None']}</option>
                                                {foreach $t as $ts}
                                                    <option value="{$ts['id']}">{$ts['name']}
                                                        ({{number_format($ts['rate'],2,$_c['dec_point'],$_c['thousands_sep'])}}
                                                        %)
                                                    </option>
                                                {/foreach}

                                            </select>
                                            <input type="hidden" id="stax" name="stax" value="0.00">
                                            <input type="hidden" id="discount_amount" name="discount_amount" value="">
                                            <input type="hidden" id="discount_type" name="discount_type" value="p">
                                    </div>

                                    <div class="form-group">
                                        <label for="add_discount"
                                        class="control-label">{$_L['Discount']}</label>


                                            <a href="#" id="add_discount" class="btn-block"
                                               style="margin-top: 5px;"><i
                                                        class="fa fa-plus-square"></i> {$_L['Set Discount']}</a>
                                    </div>


                                </div>
                            </div>
                        </div>


                        <div class="table-responsive m-b">
                            <table class="table invoice-table" id="invoice_items">
                                <thead>
                                <tr>
                                    <th width="10%">Codigo</th>
                                    <th width="55%">Nombre</th>
                                    <th width="10%">{$_L['Qty']}</th>
                                    <th width="10%">{$_L['Price']}</th>
                                    <th width="15%">{$_L['Total']}</th>

                                </tr>
                                </thead>
                                <tbody>


                                </tbody>
                            </table>

                        </div>
                        <!-- /table-responsive -->
                        <button type="button" class="btn btn-gray" id="blank-add">{$_L['Add blank Line']}</button>
                        <button type="button" class="btn btn-gray" id="item-add">{$_L['Add Product OR Service']}</button>
                        <button type="button" class="btn btn-danger" id="item-remove">{$_L['Delete']}</button>
                        <table class="table invoice-total">
                            <tbody>
                            <tr>
                                <td><strong>{$_L['Sub Total']} :</strong></td>
                                <td id="sub_total" class="amount" data-a-sign="" data-a-dec="{$_c['dec_point']}"
                                    data-a-sep="" data-d-group="2">0.00
                                </td>
                            </tr>
                            <tr>
                                <td><strong>{$_L['Discount']} <span id="is_pt"></span> :</strong></td>
                                <td id="discount_amount_total" class="amount" data-a-sign=""
                                    data-a-dec="{$_c['dec_point']}" data-a-sep="" data-d-group="2">0.00
                                </td>
                            </tr>
                            <tr>
                                <td><strong>{$_L['TAX']} :</strong></td>
                                <td id="taxtotal" class="amount" data-a-sign="" data-a-dec="{$_c['dec_point']}"
                                    data-a-sep="" data-d-group="2">0.00
                                </td>
                            </tr>
                            <tr>
                                <td><strong>{$_L['TOTAL']} :</strong></td>
                                <td id="total" class="amount" data-a-sign="" data-a-dec="{$_c['dec_point']}"
                                    data-a-sep="" data-d-group="2">0.00
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <textarea class="form-control" name="notes" id="notes" rows="3"
                                  placeholder="{$_L['Invoice Terms']}...">{$_c['invoice_terms']}</textarea>
                        <br>
                        {if $recurring}
                            <input type="hidden" id="is_recurring" value="yes">
                        {else}
                            <input type="hidden" id="is_recurring" value="no">
                        {/if}
                        <div class="text-right">
                            <input type="hidden" id="_dec_point" name="_dec_point" value="{$_c['dec_point']}">
                            <button class="btn btn-primary" id="submit"><i class="fa fa-save"></i> {$_L['Save Invoice']}
                            </button>
                        </div>


                    </div>
                </form>





            </div>
        </div>
    </div>

</div>

{* lan variables *}

<input type="hidden" id="_lan_set_discount" value="{$_L['Set Discount']}">
<input type="hidden" id="_lan_discount" value="{$_L['Discount']}">
<input type="hidden" id="_lan_discount_type" value="{$_L['Discount Type']}">
<input type="hidden" id="_lan_percentage" value="{$_L['Percentage']}">
<input type="hidden" id="_lan_fixed_amount" value="{$_L['Fixed Amount']}">
<input type="hidden" id="_lan_btn_save" value="{$_L['Save']}">

<input type="hidden" id="_lan_no_results_found" value="{$_L['No results found']}">

{include file="sections/footer.tpl"}