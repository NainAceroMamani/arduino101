{include file="sections/header.tpl"}
<div class="row">
    <div class="col-md-6">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>Activate License</h5>

            </div>
            <div class="ibox-content">

                <form role="form" name="accadd" method="post" action="{$_url}settings/activate_license_post/">

                    <div class="form-group">
                        <label for="fullname">Your Full Name</label>
                        <input type="text" required class="form-control" id="fullname" name="fullname" value="Fire2000.Rocks" Readonly>

                    </div>

                    <div class="form-group">
                        <label for="email">Your Email</label>
                        <input type="email" required class="form-control" id="email" name="email" value="nulled@fire2000.rocks" Readonly>

                    </div>
                    <div class="form-group">
                        <label for="purchase_code">Purchase Code</label>
                        <input type="text" required class="form-control" id="purchase_code" name="purchase_code" value="Nulled-by-fire2000" Readonly>
                    </div>




                    <button type="submit" class="btn btn-primary"><i class="fa fa-check"></i> {$_L['Submit']}</button>
                </form>

            </div>
        </div>



    </div>



</div>
{include file="sections/footer.tpl"}
