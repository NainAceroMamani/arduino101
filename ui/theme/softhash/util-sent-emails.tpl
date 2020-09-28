{include file="sections/header.tpl"}
<div class="row">
    <div class="col-lg-12">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>Lista de e-mails</h5>
                <a href="#" class="btn btn-primary btn-sm pull-right" id="clear_logs"><i class="fa fa-trash"></i> {$_L['Clear Old Data']}</a>



            </div>
            <div class="ibox-content" id="sysfrm_ajaxrender">


                <table class="table table-bordered sys_table" id="sys_logs">
                    <thead>
                    <tr>
                        <th width="5%">{$_L['ID']}</th>
                        <th>{$_L['Date']}</th>
                        <th>{$_L['Sent To']}</th>
                        <th width="60%">{$_L['Subject']}</th>
                        <th>{$_L['Manage']}</th>

                    </tr>
                    </thead>
                    <tbody>
                    {foreach $d as $ds}
                        <tr>
                            <td>{$ds['id']}</td>
                            <td>{date( $_c['df'], strtotime($ds['date']))}</td>
                            <td>{$ds['email']}</td>
                            <td>{$ds['subject']}</td>
                            <td><a href="{$_url}util/view-email/{$ds['id']}/" class="btn"><i class="fa fa-envelope-o"></i></a></td>

                        </tr>
                    {/foreach}
                    </tbody>
                </table>
                <div class="d-flex">
                    {$paginator['contents']}
                    <span>{$_L['Page']} {$paginator['page']} {$_L['of']} {$paginator['lastpage']}</span>                    
                </div>

            </div>


        </div>
    </div>
</div>
{include file="sections/footer.tpl"}