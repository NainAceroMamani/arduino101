$(document).ready(function () {

    var _url = $("#_url").val();
    $('#config_animate').change(function() {

        $('#ui_settings').block({ message: null });


      if($(this).prop('checked')){

          $.post( _url+'settings/update_option/', { opt: "animate", val: "1" })
              .done(function( data ) {
                $('#ui_settings').unblock();
                  location.reload();
              });

      }
        else{
          $.post( _url+'settings/update_option/', { opt: "animate", val: "0" })
              .done(function( data ) {
                  $('#ui_settings').unblock();
                  location.reload();
              });
      }
    });


    $('#console_notify_invoice_created').change(function() {

        $('#additional_settings').block({ message: null });


        if($(this).prop('checked')){

            $.post( _url+'settings/update_option/', { opt: "console_notify_invoice_created", val: "1" })
                .done(function( data ) {
                    $('#additional_settings').unblock();
                    location.reload();
                });

        }
        else{
            $.post( _url+'settings/update_option/', { opt: "console_notify_invoice_created", val: "0" })
                .done(function( data ) {
                    $('#additional_settings').unblock();
                    location.reload();
                });
        }
    });


    $('#config_rtl').change(function() {

           $('#ui_settings').block({ message: null });


        if($(this).prop('checked')){

            $.post( _url+'settings/update_option/', { opt: "rtl", val: "1" })
                .done(function( data ) {
                    $('#ui_settings').unblock();
                    location.reload();
                });

        }
        else{
            $.post( _url+'settings/update_option/', { opt: "rtl", val: "0" })
                .done(function( data ) {
                      $('#ui_settings').unblock();
                    location.reload();
                });
        }
    });

    $('#config_mininav').change(function() {

        $('#ui_settings').block({ message: null });


        if($(this).prop('checked')){

            $.post( _url+'settings/update_option/', { opt: "mininav", val: "1" })
                .done(function( data ) {
                    $('#ui_settings').unblock();
                    location.reload();
                });

        }
        else{
            $.post( _url+'settings/update_option/', { opt: "mininav", val: "0" })
                .done(function( data ) {
                    $('#ui_settings').unblock();
                    location.reload();
                });
        }
    });

    $('#config_hide_footer').change(function() {

        $('#ui_settings').block({ message: null });


        if($(this).prop('checked')){

            $.post( _url+'settings/update_option/', { opt: "hide_footer", val: "1" })
                .done(function( data ) {
                    $('#ui_settings').unblock();
                    location.reload();
                });

        }
        else{
            $.post( _url+'settings/update_option/', { opt: "hide_footer", val: "0" })
                .done(function( data ) {
                    $('#ui_settings').unblock();
                    location.reload();
                });
        }
    });


    //$('#url_rewrite').change(function() {
    //
    //    $('#additional_settings').block({ message: null });
    //
    //
    //    if($(this).prop('checked')){
    //
    //        $.post( _url+'settings/update_option/', { opt: "url_rewrite", val: "1" })
    //            .done(function( data ) {
    //                $('#additional_settings').unblock();
    //                location.reload();
    //            });
    //
    //    }
    //    else{
    //        $.post( _url+'settings/update_option/', { opt: "url_rewrite", val: "0" })
    //            .done(function( data ) {
    //                $('#additional_settings').unblock();
    //                location.reload();
    //            });
    //    }
    //});



});