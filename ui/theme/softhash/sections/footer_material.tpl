</section>
</div>
</div>

<div class="fbtn-container">
    <div class="fbtn-inner">
        <a class="fbtn fbtn-red fbtn-lg" data-toggle="dropdown"><span class="fbtn-text">Links</span><span class="fbtn-ori icon">add</span><span class="fbtn-sub icon">close</span></a>
        <div class="fbtn-dropdown">
            <a class="fbtn" href="#" target="_blank"><span class="fbtn-text">Fork me on GitHub</span><span class="fa fa-github"></span></a>
            <a class="fbtn fbtn-blue" href="#" target="_blank"><span class="fbtn-text">Follow Daemon on Twitter</span><span class="fa fa-twitter"></span></a>
            <a class="fbtn fbtn-alt" href="#" target="_blank"><span class="fbtn-text">Visit Daemon Website</span><span class="icon">link</span></a>
        </div>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="{$app_url}ui/lib/material/js/base.min.js"></script>
{if isset($xfooter)}
    {$xfooter}
{/if}
<script>
    jQuery(document).ready(function() {
        // initiate layout and plugins

        {if isset($xjq)}
        {$xjq}
        {/if}



    });



</script>
</body>
</html>
