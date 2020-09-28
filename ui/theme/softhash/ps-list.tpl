{include file="sections/header.tpl"}
<div class="wrapper wrapper-content">

<div class="ibox">
<div class="ibox-title">
    <h5>Lista de {if $type eq 'Product'} {$_L['Products']} {else} {$_L['Services']} {/if}</h5>
    <div class="ibox-tools">
        <a href="{$_url}ps/p-new" class="btn btn-primary btn-xs"><i class="fa fa-plus"></i> {$_L['Add Product']}</a>
        <a href="{$_url}ps/s-new" class="btn btn-primary btn-xs"><i class="fa fa-plus"></i> {$_L['Add Service']}</a>
    </div>
</div>
<div class="ibox-content" id="ibox_form">

        <div class="form-group"><div class="input-group">
            <div class="input-group-addon">
                <span class="fa fa-search"></span>
            </div>
            <input type="text" placeholder="{$_L['Search']}" id="txtsearch" class="form-control"> <span class="input-group-btn">
                                                <button type="button" id="search" class="btn btn-primary"> {$_L['Search']}</button> </span>
        </div></div>
        <input type="hidden" id="stype" value="{$type}">


<div class="project-list">


<div id="sysfrm_ajaxrender">


</div>


</div>
</div>
</div>
</div>
<input type="hidden" id="_lan_are_you_sure" value="{$_L['are_you_sure']}">

{include file="sections/footer.tpl"}