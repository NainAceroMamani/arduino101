{include file="sections/header.tpl"}
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">

        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>
                        {if $type eq 'Product'}
                            {$_L['Add Product']}
                            {else}
                            {$_L['Add Service']}
                        {/if}


                    </h5>
                    <div class="ibox-tools">
                       {if $type eq 'Product'}
                           <a href="{$_url}ps/p-list" class="btn btn-primary btn-xs">Lista de Productos</a>

                       {/if}
                        {if $type eq 'Service'}
                            <a href="{$_url}ps/s-list" class="btn btn-primary btn-xs">Lista de Servicios</a>
                        {/if}


                    </div>
                </div>
                <div class="ibox-content" id="ibox_form">
                    <div class="alert alert-danger" id="emsg">
                        <span id="emsgbody"></span>
                    </div>

                    <form class="form-horizontal" id="rform">

                        <div class="form-group"><label class="control-label" for="name">{$_L['Name']}</label>

                            <input type="text" id="name" name="name" class="form-control" autocomplete="off">


                        </div>

                        <div class="form-group"><label class="control-label" for="sales_price">{$_L['Sales Price']}</label>

                            <input type="text" id="sales_price" name="sales_price" class="form-control amount" autocomplete="off" data-a-sign="{$_c['currency_code']} "  data-a-dec="{$_c['dec_point']}" data-a-sep="{$_c['thousands_sep']}" data-d-group="2">

                        </div>
                        <div class="form-group"><label class="control-label" for="item_number">{$_L['Item Number']}</label>

                            <input type="text" id="item_number" value="{$nxt}" name="item_number" class="form-control" autocomplete="off">

                            
                        </div>
                        <div class="form-group"><label class="control-label" for="description">{$_L['Description']}</label>

                            <textarea id="description" class="form-control" rows="3"></textarea>

                            
                        </div>


<input type="hidden" id="type" name="type" value="{$type}">



                        <div class="form-group">
                            <div >

                                <button class="btn btn-primary" type="submit" id="submit">{$_L['Submit']}</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


</div>
{include file="sections/footer.tpl"}