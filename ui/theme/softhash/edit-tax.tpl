
{include file="sections/header.tpl"}
<div class="row">
    <div class="col-md-6">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>{$_L['Edit TAX']}</h5>

            </div>
            <div class="ibox-content">

                <form role="form" name="accadd" method="post" action="{$_url}settings/edit-tax-post/" class="form-horizontal">
                    <div class="form-group">
                        <label class="control-label" for="taxname">{$_L['Name']}</label>
                        <input type="text" class="form-control" id="taxname" name="taxname" value="{$d['name']}">
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="taxrate">{$_L['Rate']}</label>
                        <input type="text" class="form-control amount" id="taxrate" name="taxrate" data-a-sign="{$_c['currency_code']} "  data-a-dec="{$_c['dec_point']}" data-a-sep="{$_c['thousands_sep']}" data-d-group="2" value="{$d['rate']}">
                    </div>

<input type="hidden" id="tid" name="tid" value="{$d['id']}">
                    <button type="submit" class="btn btn-primary"><i class="fa fa-check"></i> {$_L['Submit']}</button>
                </form>

            </div>
        </div>



    </div>



</div>



{include file="sections/footer.tpl"}
