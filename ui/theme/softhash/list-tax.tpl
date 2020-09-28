{include file="sections/header.tpl"}
<div class="ibox float-e-margins">
    <div class="ibox-title">
        <h5>{$_L['Sales Taxes']} </h5>
    </div>
    <div class="ibox-content">
<a href="{$_url}settings/add-tax/" id="item_add" class="btn btn-primary"><i class="fa fa-plus"></i> {$_L['Add Tax']} </a>
<br>
<br>
        <table class="table table-bordered table-hover sys_table">
            <thead>
            <tr>
                <th width="60%">{$_L['Name']}</th>
                <th>Porcentaje</th>

                <th>{$_L['Manage']}</th>
            </tr>
            </thead>
            <tbody>
            {foreach $d as $ds}
                <tr id="{$ds['id']}">
                    <td>{$ds['name']}</td>
                    <td>{number_format($ds['rate'],2,$_c['dec_point'],$_c['thousands_sep'])} %</td>
                    <td>
                        <a href="{$_url}settings/edit-tax/{$ds['id']}/" class="btn edit"><i class="fa fa-pencil"></i></a>
                        <a href="#" id="t{$ds['id']}" class="btn cdelete"><i class="fa fa-trash"></i></a>
                    </td>

                </tr>
            {/foreach}

            </tbody>
        </table>
{$paginator['contents']}
    </div>
</div>
<input type="hidden" id="_lan_are_you_sure" value="{$_L['are_you_sure']}">

{include file="sections/footer.tpl"}