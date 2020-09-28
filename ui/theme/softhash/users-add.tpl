
{include file="sections/header.tpl"}
<div class="row">
    <div class="col-md-6">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>{$_L['Add New User']}</h5>

            </div>
            <div class="ibox-content">

                <form role="form" name="accadd" method="post" action="{$_url}settings/users-post" class="form-horizontal">
                    <div class="form-group">
                        <label class="control-label" for="username">{$_L['Username']}</label>
                        <input type="text" class="form-control" id="username" name="username">
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="fullname">{$_L['Full Name']}</label>
                        <input type="text" class="form-control" id="fullname" name="fullname">
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="user_type">{$_L['User']} {$_L['Type']}</label>
                        <select name="user_type" id="user_type" class="form-control">
                            <option value="Admin">{$_L['Full Administrator']}</option>
                            <option value="Employee">{$_L['Employee']}</option>

                        </select>
                        <small class="help-block">{$_L['user_type_help']}</small>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="password">{$_L['Password']}</label>
                        <input type="password" class="form-control" id="password" name="password">
                    </div>

                    <div class="form-group">
                        <label class="control-label" for="cpassword">{$_L['Confirm Password']}</label>
                        <input type="password" class="form-control" id="cpassword" name="cpassword">
                    </div>


                    <button type="submit" class="btn btn-primary"><i class="fa fa-check"></i> {$_L['Submit']}</button>
                </form>

            </div>
        </div>



    </div>



</div>




{include file="sections/footer.tpl"}
