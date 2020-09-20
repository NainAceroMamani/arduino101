{include file="sections/header.tpl"}
<div class="row">
    <div class="col-md-12">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>Grupos</h5>

            </div>
            <div class="ibox-content">
                <a href="#" class="btn btn-success" id="add_new_group"><i class="fa fa-plus"></i> Añadir Grupo</a>
                <a href="{$_url}reorder/groups/" class="btn btn-primary"><i class="fa fa-arrows"></i> {$_L['Reorder']}</a>

                <br>
                <br>
                <table class="table table-striped table-bordered">
                    <th>Grupo</th>
                    <th>{$_L['Manage']}</th>
                    {foreach $gs as $g}
                        <tr>
                            <td>{$g['gname']}</td>

                            <td>
                                <a href="{$_url}contacts/find_by_group/{$g['id']}/" class="btn"><i class="fa fa-bars"></i></a>
                                <a href="#" class="btn edit_group" id="e{$g['id']}" data-name="{$g['gname']}"><i class="fa fa-pencil"></i></a>

                                    <a href="{$_url}settings/users-delete/{$g['id']}" id="g{$g['id']}" class="btn cdelete"><i class="fa fa-trash"></i></a>

                            </td>
                        </tr>
                    {/foreach}


                </table>

            </div>
        </div>



    </div>



</div>



<input type="hidden" name="_msg_add_new_group" id="_msg_add_new_group" value="Añadir Nuevo Grupo">
<input type="hidden" name="_msg_group_name" id="_msg_group_name" value="Nombre del Grupo">
<input type="hidden" name="_msg_edit" id="_msg_edit" value="{$_L['Edit']}">
<input type="hidden" name="_msg_ok" id="_msg_ok" value="{$_L['OK']}">
<input type="hidden" name="_msg_cancel" id="_msg_cancel" value="{$_L['Cancel']}">
{include file="sections/footer.tpl"}
