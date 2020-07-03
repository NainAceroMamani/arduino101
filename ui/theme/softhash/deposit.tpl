{include file="sections/header.tpl"}
<div class="row">
<div class="col-lg-4 col-md-6 col-sm-12">
    <div class="ibox float-e-margins">
        <div class="ibox-title">
            <h5>{$_L['Add Deposit']}</h5>

        </div>
        <div class="ibox-content" id="ibox_form">
            <div class="alert alert-danger" id="emsg">
                <span id="emsgbody"></span>
            </div>
            <form class="form-horizontal" method="post" id="tform" role="form">
                <div class="form-group">
                    <label for="account" class="col-sm-3 control-label">{$_L['Account']}</label>
                    <div class="col-sm-9">
                        <select id="account" name="account" class="form-control">
                            <option value="">{$_L['Choose an Account']}</option>
                            {foreach $d as $ds}
                                <option value="{$ds['account']}">{$ds['account']}</option>
                            {/foreach}


                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="date" class="col-sm-3 control-label">{$_L['Date']}</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control"  value="{$mdate}" name="date" id="date" datepicker data-date-format="yyyy-mm-dd" data-auto-close="true">
                    </div>
                </div>

                <div class="form-group">
                    <label for="description" class="col-sm-3 control-label">{$_L['Description']}</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="description" name="description">
                    </div>
                </div>

                <div class="form-group">
                    <label for="amount" class="col-sm-3 control-label">{$_L['Amount']}</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control amount" id="amount" name="amount">
                    </div>
                </div>






                <div class="form-group">
                    <div class="col-sm-3">
                        &nbsp;
                    </div>
                    <div class="col-sm-9">
                        <h4><a href="#" id="a_toggle">{$_L['Advanced']}</a> </h4>
                    </div>
                </div>
                <div id="a_hide" class="form-horizontal" >
                    <div class="form-group">
                        <label for="cats" class="col-sm-3 control-label">{$_L['Category']}</label>
                        <div class="col-sm-9">
                            <select id="cats" name="cats" class="form-control">
                                <option value="Uncategorized">{$_L['Uncategorized']}</option>

                                {foreach $cats as $cat}
                                    <option value="{$cat['name']}">{$cat['name']}</option>
                                {/foreach}


                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="tags" class="col-sm-3 control-label">{$_L['Tags']}</label>
                        <div class="col-sm-9">
                            <select name="tags[]" id="tags"  class="form-control" multiple="multiple">
                                {foreach $tags as $tag}
                                    <option value="{$tag['text']}">{$tag['text']}</option>
                                {/foreach}

                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-3 control-label">{$_L['Payer']}</label>
                        <div class="col-sm-9">
                            <select id="payer" name="payer" class="form-control">
                                <option value="">{$_L['Choose Contact']}</option>
                                {foreach $p as $ps}
                                    <option value="{$ps['id']}">{$ps['account']}</option>
                                {/foreach}


                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-3 control-label">{$_L['Method']}</label>
                        <div class="col-sm-9">
                            <select id="pmethod" name="pmethod" class="form-control">
                                <option value="">{$_L['Select Payment Method']}</option>
                                {foreach $pms as $pm}
                                    <option value="{$pm['name']}">{$pm['name']}</option>
                                {/foreach}


                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="ref" class="col-sm-3 control-label">{$_L['Ref']}#</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="ref" name="ref">
                            <span class="help-block">{$_L['ref_example']}</span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-9">
                        <button type="submit" id="submit" class="btn btn-primary"><i class="fa fa-check"></i> {$_L['Submit']}</button>
                    </div>
                </div>
            </form>

        </div>
    </div>
</div>

<div class="col-lg-8 col-md-6 col-sm-12">
    <div class="ibox float-e-margins">
        <div class="ibox-title">
            <h5>{$_L['Recent Deposits']}</h5>

        </div>
        <div class="ibox-content">

            <table class="table table-bordered sys_table">
                <thead>
                <tr>
                    <th width="80%">{$_L['Description']}</th>
                    <th>{$_L['Amount']}</th>

                </tr>
                </thead>
                <tbody>

                {foreach $tr as $trs}
                    <tr>
                        <td><a href="{$_url}transactions/manage/{$trs['id']}/">{$trs['description']}</a> </td>
                        <td class="amount">{$trs['amount']}</td>
                    </tr>
                {/foreach}

                </tbody>
            </table>

        </div>
    </div>
</div>

</div>


<input type="hidden" id="_lan_no_results_found" value="{$_L['No results found']}">

{include file="sections/footer.tpl"}
