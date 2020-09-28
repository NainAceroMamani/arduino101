{include file="sections/header.tpl"}
<div class="row">

    <div class="col-lg-12">
        <div class="mail-box-header">


            <h2>
                {$_L['Email Templates']}
            </h2>

        </div>
        <div class="mail-box pr-md pl-md pb-md" id="sysfrm_ajaxrender">

            <table class="table table-hover table-mail table-bordered">
                <tbody>


              {foreach $d as $ds}
                  <tr class="read">

                      <td><a  class="ve" id="f{$ds['id']}" href="#">{ib_lan_get_line($ds['tplname'])}</a>  </td>
                      <td><a  class="ve" id="s{$ds['id']}" href="#">{$ds['subject']}</a></td>
                      <td class=""></td>
                      <td class="text-right">
                              {if $ds['send'] eq 'Yes'}
                          <span class="label label-success pull-right"> {$_L['Active']} </span>
                                  {else}
                                  <span class="label label-danger pull-right"> {$_L['Inactive']} </span>
                              {/if}

                          </td>
                  </tr>
              {/foreach}

                </tbody>
            </table>


        </div>
    </div>
</div>
{include file="sections/footer.tpl"}