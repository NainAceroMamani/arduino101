{include file="sections/header.tpl"}
<div class="row">
    <div class="col-md-6 col-sm-12">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>{$_L['Edit_Account']}</h5>
            </div>
            <div class="ibox-content">
                <form role="form" name="accadd"  method="post" action="{$_url}accounts/edit-post" class="form-horizontal">
                    <div class="form-group">
                        <label class="control-label" for="account">{$_L['Account_Title']}</label>
                        <input type="text" class="form-control" id="account" name="account" value="{$d->account}">
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="description">{$_L['Description']}</label>
                        <input type="text" class="form-control" id="description" name="description" value="{$d->description}">
                    </div>


                    <div class="form-group">
                        <label class="control-label" for="account_number">Número de cuenta</label>
                        <input type="text" class="form-control" id="account_number" name="account_number" value="{$d->account_number}">
                    </div>

                    <div class="form-group">
                        <label class="control-label" for="contact_person">Contacto</label>
                        <input type="text" class="form-control" id="contact_person" name="contact_person" value="{$d->contact_person}">
                    </div>

                    <div class="form-group">
                        <label class="control-label" for="contact_phone">{$_L['Phone']}</label>
                        <input type="text" class="form-control" id="contact_phone" name="contact_phone" value="{$d->contact_phone}">
                    </div>

                    <!-- <div class="form-group">
                        <label for="ib_url">{$_L['Internet Banking URL']}</label>
                        <input type="text" class="form-control" id="ib_url" name="ib_url" value="{$d->ib_url}">
                    </div> -->


<input type="hidden" name="id" value="{$d['id']}">
                    <button type="submit" class="btn btn-primary"><i class="fa fa-check"></i> {$_L['Submit']}</button>
                </form>
            </div>
        </div>
    </div> <!-- Widget-1 end-->

    <!-- Widget-2 end-->
</div>


{include file="sections/footer.tpl"}
