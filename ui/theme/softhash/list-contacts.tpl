{include file="sections/header.tpl"}

{if $_c['contact_set_view_mode'] eq 'search'}









    <div class="row">



            <div class="col-md-12">

                <div class="panel panel-default">
                    <div class="panel-body">

                        <form class="form-horizontal" method="post" action="{$_url}customers/list/">
                            <div class="form-group">
                                <div class="col-md-12">
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <span class="fa fa-search"></span>
                                        </div>
                                        <input type="text" name="name" id="foo_filter" class="form-control" placeholder="{$_L['Search']}..."/>

                                    </div>
                                </div>

                            </div>
                        </form>
                        
                        <div class="table-wrapper">
                            <table class="table table-bordered table-hover sys_table footable"  data-filter="#foo_filter" data-page-size="50">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Nombre</th>
                                    <th>Empresa</th>
                                    <th>{$_L['Email']}</th>
                                    <th>{$_L['Phone']}</th>
                                    <th class="text-right">{$_L['Manage']}</th>
                                </tr>
                                </thead>
                                <tbody>
    
                                {foreach $d as $ds}
    
                                    <tr>
    
                                        <td><a href="{$_url}contacts/view/{$ds['id']}/">{$ds['id']}</a> </td>
    
                                        <td><a href="{$_url}contacts/view/{$ds['id']}/">{$ds['account']}</a> </td>
                                        <td>{$ds['company']}</td>
    
                                        <td>
                                            {$ds['email']}
    
                                        </td>
                                        <td>
                                            {$ds['phone']}
                                        </td>
                                        <td class="text-right">
                                            <a href="{$_url}contacts/view/{$ds['id']}/" class="btn"><i class="fa fa-search-plus"></i></a>
    
                                            <a href="delete/crm-user/{$ds['id']}/" class="btn cdelete" id="uid{$ds['id']}"><i class="fa fa-trash"></i></a>
                                        </td>
                                    </tr>
    
                                {/foreach}
    
                                </tbody>
                            </table>
                        </div>
                        <div>
                            <ul class="pagination">
                            </ul>
                        </div>

                    </div>
                </div>
            </div>






    </div>



















    {else}











    <div class="row">
        <div class="col-md-12">

            <div class="table-panel">
                <div class="pb-md">

                    <form class="form-horizontal" method="post" action="{$_url}customers/list/">
                        <div class="form-group">
                            <div class="col-sm-7">
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <span class="fa fa-search"></span>
                                    </div>
                                    <input type="text" name="name" class="form-control" placeholder="{$_L['Search by Name']}"/>
                                    <div class="input-group-btn">
                                        <button class="btn btn-success">{$_L['Search']}</button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-5">

                                <a href="{$_url}contacts/add/" class="btn btn-success"><i class="fa fa-plus"></i> {$_L['Add Contact']}</a>

                            </div>
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </div>

    <!-- <div class="row">
        <div class="col-md-12">

            <div class="panel panel-default">
                <div class="p-md">
                    <h3>{$_L['Filter by Tags']}</h3>
                    <ul class="tag-list" style="padding: 0">
                        {foreach $t as $ts}
                            <li><a href="{$_url}contacts/list/{$ts['text']}/"><i class="fa fa-tag"></i> {$ts['text']}</a></li>
                        {/foreach}
                    </ul>
                </div>
            </div>

        </div>
    </div> -->

    <div class="row">

        {if ($_c['contact_set_view_mode']) eq 'tbl'}

            <div class="col-md-12">

                <div class="panel panel-default">
                    <div class="table-wrapper">
                        <table class="table table-bordered table-hover sys_table">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>{$_L['Name']}</th>
                                <th>{$_L['Company Name']}</th>
                                <th>{$_L['Email']}</th>
                                <th>{$_L['Phone']}</th>
                                <th class="text-right">{$_L['Manage']}</th>
                            </tr>
                            </thead>
                            <tbody>

                            {foreach $d as $ds}

                                <tr>

                                    <td><a href="{$_url}contacts/view/{$ds['id']}/">{$ds['id']}</a> </td>

                                    <td><a href="{$_url}contacts/view/{$ds['id']}/">{$ds['account']}</a> </td>
                                    <td>{$ds['company']}</td>

                                    <td>
                                        {$ds['email']}

                                    </td>
                                    <td>
                                        {$ds['phone']}
                                    </td>
                                    <td class="text-right">
                                        <a href="{$_url}contacts/view/{$ds['id']}/" class="btn"><i class="fa fa-search-plus"></i></a>

                                        <a href="delete/crm-user/{$ds['id']}/" class="btn cdelete" id="uid{$ds['id']}"><i class="fa fa-trash"></i></a>
                                    </td>
                                </tr>

                            {/foreach}

                            </tbody>
                        </table>

                    </div>
                </div>
            </div>


        {else}

            {foreach $d as $ds}
                <div class="col-md-4 col-sm-6 sdiv">
                    <!-- CONTACT ITEM -->
                    <div class="panel panel-default">
                        <div class="profile">
                            <div class="profile-image">
                                {if $ds['img'] eq 'gravatar'}
                                    <img src="http://www.gravatar.com/avatar/{($ds['email'])|md5}?s=200" class="img-thumbnail img-responsive" alt="{$ds['fname']} {$ds['lname']}">
                                {elseif $ds['img'] eq ''}
                                    <img src="{$app_url}sysfrm/uploads/system/profile-icon.png" class="img-thumbnail img-responsive" alt="{$ds['fname']} {$ds['lname']}">
                                {else}
                                    <img src="{$ds['img']}" class="img-thumbnail img-responsive" alt="{$ds['account']}">
                                {/if}
                            </div>
                            <div class="profile-data">

                                <div class="profile-data-name">{$ds['account']}</div>

                            </div>

                        </div>
                        <div class="panel-body">
                            <div class="contact-info">

                                <p class="text-center"><small>{$_L['Email']}</small><br/>{if $ds['email'] neq ''}{$ds['email']} {else} {$_L['n_a']} {/if}</p>

                                <p>
                                    <a href="{$_url}contacts/view/{$ds['id']}/" class="btn btn-primary">{$_L['View']}</a>

                                    <a href="delete/crm-user/{$ds['id']}/" class="btn btn-danger cdelete" id="uid{$ds['id']}">{$_L['Delete']}</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            {/foreach}

        {/if}

    </div>
    <div class="row">
        <div class="col-md-12">
            {$paginator['contents']}
        </div>
    </div>


{/if}

{include file="sections/footer.tpl"}