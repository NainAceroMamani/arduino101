{include file="sections/header.tpl"}
<div class="row">
    <div class="col-md-6">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>{$_L['General Settings']}</h5>

            </div>
            <div class="ibox-content">

                <form role="form" name="accadd" method="post" action="{$_url}settings/app-post">
                    <div class="form-group">
                        <label for="company">{$_L['Application Name']}</label>
                        <input type="text" class="form-control" id="company" name="company" value="{$_c['CompanyName']}">
                        <span class="help-block">{$_L['This Name will be']}</span>
                    </div>


                    <div class="form-group">
                        <label for="theme">{$_L['Theme']}</label>
                        <select name="theme" id="theme" class="form-control">
                            <option value="softhash" {if $_c['theme'] eq 'softhash'}selected="selected" {/if}>Softhash</option>

                        </select>
                    </div>
                    <div class="form-group">
                        <label for="nstyle">{$_L['Style']}</label>
                        <select name="nstyle" id="nstyle" class="form-control">
                            <option value="dark" {if $_c['nstyle'] eq 'dark'}selected="selected" {/if}>Dark</option>
                            <option value="light" {if $_c['nstyle'] eq 'light'}selected="selected" {/if}>Light</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="default_landing_page">{$_L['Default Landing Page']}</label>
                        <select name="default_landing_page" id="default_landing_page" class="form-control">
                            <option value="login" {if $_c['default_landing_page'] eq 'login'}selected="selected" {/if}>{$_L['Admin Login']}</option>
                            <option value="client/login" {if $_c['default_landing_page'] eq 'client/login'}selected="selected" {/if}>{$_L['Client Login']}</option>


                        </select>
                    </div>

                    <div class="form-group">
                        <label for="caddress">{$_L['Pay To Address']}</label>

                        <textarea class="form-control" id="caddress" name="caddress" rows="3">{$_c['caddress']}</textarea>
                        <span class="help-block">{$_L['You can use html tag']}</span>
                    </div>

                    <div class="form-group">

                        <label for="invoice_terms">{$_L['Default Invoice Terms']}</label>

                        <textarea class="form-control" id="invoice_terms" name="invoice_terms" rows="3">{$_c['invoice_terms']}</textarea>

                    </div>

                    <div class="form-group">
                        <label for="iai">{$_L['Invoice Starting']} #</label>
                        <input type="text" class="form-control" id="iai" name="iai">
                        <span class="help-block">{$_L['Enter to set the next invoice']} - <strong>{$ai}</strong> ({$_L['Keep Blank for']})</span>
                    </div>

                    <div class="form-group">
                        <label for="pdf_font">{$_L['PDF Font']}</label>
                        <select name="pdf_font" id="pdf_font" class="form-control">
                            <option value="default" {if $_c['pdf_font'] eq 'default'}selected="selected" {/if}>Default [Faster PDF Creation with Less Memory]</option>
                            <option value="Helvetica" {if $_c['pdf_font'] eq 'Helvetica'}selected="selected" {/if}>Helvetica</option>
                            <option value="dejavusanscondensed" {if $_c['pdf_font'] eq 'dejavusanscondensed'}selected="selected" {/if}>dejavusanscondensed [Embed fonts with supports UTF8]</option>

                            <option value="AdobeCJK" {if $_c['pdf_font'] eq 'AdobeCJK'}selected="selected" {/if}>AdobeCJK [Adobe Asian Font pack]</option>

                        </select>
                    </div>


                    <div class="form-group">
                        <label for="i_driver">{$_L['Invoice Creation Method']}</label>
                        <select name="i_driver" id="i_driver" class="form-control">
                            <option value="default" {if $_c['i_driver'] eq 'default'}selected="selected" {/if}>{$_L['Legacy']}</option>
                            <option value="v2" {if $_c['i_driver'] eq 'v2'}selected="selected" {/if}>{$_L['New']}</option>


                        </select>
                    </div>







                    <button type="submit" class="btn btn-primary"><i class="fa fa-check"></i> {$_L['Submit']}</button>
                </form>

            </div>
        </div>



        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>{$_L['Logo']}</h5>


            </div>
            <div class="ibox-content">

                <img class="logo" src="{$app_url}sysfrm/uploads/system/logo.png" alt="Logo">
                <br><br>
                <form role="form" name="logo" enctype="multipart/form-data" method="post" action="{$_url}settings/logo-post">
                    <div class="form-group">
                        <label for="exampleInputFile">Upload New Logo</label>
                        <input type="file" id="file" name="file">
                        <p class="help-block">{$_L['This will replace existing logo']} - sysfrm/uploads/system/logo.png</p>
                    </div>
                    <button type="submit" class="btn btn-primary"><i class="fa fa-check"></i> {$_L['Submit']}</button>
                </form>


            </div>
        </div>

        <div class="ibox float-e-margins" id="ui_settings">
            <div class="ibox-title">
                <h5>{$_L['User Interface']}</h5>


            </div>
            <div class="ibox-content">
                <table class="table table-hover">
                    <tbody>

                    <tr>
                        <td width="80%"><label for="config_animate">{$_L['Enable Page Loading Animation']} </label></td>
                        <td> <input type="checkbox" {if get_option('animate') eq '1'}checked{/if} data-toggle="toggle" data-size="small" data-on="{$_L['Yes']}" data-off="{$_L['No']}" id="config_animate"></td>
                    </tr>

                    <tr>
                        <td width="80%"><label for="config_rtl">{$_L['Enable RTL']} </label></td>
                        <td> <input type="checkbox" {if get_option('rtl') eq '1'}checked{/if} data-toggle="toggle" data-size="small" data-on="{$_L['Yes']}" data-off="{$_L['No']}" id="config_rtl"></td>
                    </tr>


                    <tr>
                        <td width="80%"><label for="config_mininav">{$_L['Fold Sidebar Default']} </label></td>
                        <td> <input type="checkbox" {if get_option('mininav') eq '1'}checked{/if} data-toggle="toggle" data-size="small" data-on="{$_L['Yes']}" data-off="{$_L['No']}" id="config_mininav"></td>
                    </tr>

                    <tr>
                        <td width="80%"><label for="config_hide_footer">{$_L['Hide Footer Copyright']} </label></td>
                        <td> <input type="checkbox" {if get_option('hide_footer') eq '1'}checked{/if} data-toggle="toggle" data-size="small" data-on="{$_L['Yes']}" data-off="{$_L['No']}" id="config_hide_footer"></td>
                    </tr>



                    </tbody>
                </table>



            </div>
        </div>


        <div class="ibox float-e-margins" id="additional_settings">
            <div class="ibox-title">
                <h5>{$_L['Additional Settings']}</h5>


            </div>
            <div class="ibox-content">
                <table class="table table-hover">
                    <tbody>

                    {*<tr>*}
                        {*<td width="80%"><label for="url_rewrite">{$_L['URL Rewrite']} </label></td>*}
                        {*<td> <input type="checkbox" {if get_option('url_rewrite') eq '1'}checked{/if} data-toggle="toggle" data-size="small" data-on="{$_L['Yes']}" data-off="{$_L['No']}" id="url_rewrite"></td>*}
                    {*</tr>*}

                    <tr>
                        <td width="80%"><label for="console_notify_invoice_created">{$_L['cron_invoice_created']} </label></td>
                        <td> <input type="checkbox" {if get_option('console_notify_invoice_created') eq '1'}checked{/if} data-toggle="toggle" data-size="small" data-on="{$_L['Yes']}" data-off="{$_L['No']}" id="console_notify_invoice_created"></td>
                    </tr>


                    </tbody>
                </table>



            </div>
        </div>


    </div>



</div>




{include file="sections/footer.tpl"}
