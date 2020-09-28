{include file="sections/header.tpl"}
<div class="row">
    <div class="col-lg-12">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>Actividades Realizadas</h5>
                <a href="#" class="btn btn-primary btn-sm pull-right" id="clear_logs"><i
                            class="fa fa-list"></i> {$_L['Clear Old Data']}</a>


            </div>
            <div class="ibox-content" id="sysfrm_ajaxrender">


                <table class="table table-bordered sys_table" id="sys_logs">
                    <thead>
                    <tr>
                        <th>{$_L['ID']}</th>
                        <th>{$_L['Date']}</th>
                        <th>{$_L['Type']}</th>
                        <th>{$_L['Description']}</th>
                        <th>{$_L['UID']}</th>
                        <th>{$_L['IP']}</th>

                    </tr>
                    </thead>
                    <tbody>

                    {foreach $d as $ds}
                        <tr>
                            <td>{$ds['id']}</td>
                            <td>{date( $_c['df'], strtotime($ds['date']))}</td>
                            <td>{$ds['type']}</td>
                            <td>{$ds['description']}</td>
                            <td>{$ds['userid']}</td>
                            <td>{$ds['ip']}</td>
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