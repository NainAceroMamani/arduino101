<?php

Class Reorder
{
    public static function js($i)
    {
        return '


    $(function() {
        $("#sorder").sortable({ opacity: 0.6, cursor: \'move\', update: function() {
            var order = $(this).sortable("serialize") + \'&action=' . $i . '\';
            $("#resp").html(\'Saving...\');
            $.post("'.U.'reorder/reorder-post", order, function(theResponse){
                $("#resp").html(theResponse);
            });
        }
        });
    });


';
    }
}