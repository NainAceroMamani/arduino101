{include file="sections/header.tpl"}
<div class="row">
    <div class="col-lg-12 col-md-12 col-sm-12">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>Ingresos vs Gastos </h5>

            </div>
            <div class="ibox-content">


                <br>
                <p>{$_L['Total Income']}: {$_c['currency_code']} {number_format($ai,2,$_c['dec_point'],$_c['thousands_sep'])}</p>
                <p>{$_L['Total Expense']}: {$_c['currency_code']} {number_format($ae,2,$_c['dec_point'],$_c['thousands_sep'])}</p>
                <hr>
                <b>
                    {$_L['Income minus Expense']} = {$_c['currency_code']} {number_format($aime,2,$_c['dec_point'],$_c['thousands_sep'])}
                </b>
                <hr>
                <p>{$_L['Total Income This Month']}: {$_c['currency_code']} {number_format($mi,2,$_c['dec_point'],$_c['thousands_sep'])}</p>
                <p>{$_L['Total Expense This Month']}: {$_c['currency_code']} {number_format($me,2,$_c['dec_point'],$_c['thousands_sep'])}</p>
                <hr>
                <b>{$_L['Income minus Expense']} = {$_c['currency_code']} {number_format($mime,2,$_c['dec_point'],$_c['thousands_sep'])}</b>
                <hr>



                <h4>Ingresos vs Gastos el presente año</h4>
                <hr>
                <div id="placeholder" class="flot-placeholder"></div>
                <hr>


            </div>
        </div>
        </div>


</div>
 <!-- Row end-->


<!-- Row end-->


<!-- Row end-->

{include file="sections/footer.tpl"}
