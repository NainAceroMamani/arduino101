$(document).ready(function () {
    $(".progress").hide();
    $("#emsg").hide();
    var _url = $("#_url").val();
    //$('#tags').select2({
    //    tags: true,
    //    tokenSeparators: [','],
    //    createSearchChoice: function (term) {
    //        return {
    //            id: $.trim(term),
    //            text: $.trim(term) + ' (new tag)'
    //        };
    //    },
    //    ajax: {
    //        url: _url+'tags/contacts/',
    //        dataType: 'json',
    //        data: function(term, page) {
    //            return {
    //                q: term
    //            };
    //        },
    //        results: function(data, page) {
    //            return {
    //                results: data
    //            };
    //        }
    //    },
    //
    //    // Take default tags from the input value
    //    initSelection: function (element, callback) {
    //        var data = [];
    //
    //        function splitVal(string, separator) {
    //            var val, i, l;
    //            if (string === null || string.length < 1) return [];
    //            val = string.split(separator);
    //            for (i = 0, l = val.length; i < l; i = i + 1) val[i] = $.trim(val[i]);
    //            return val;
    //        }
    //
    //        $(splitVal(element.val(), ",")).each(function () {
    //            data.push({
    //                id: this,
    //                text: this
    //            });
    //        });
    //
    //        callback(data);
    //    },
    //
    //    // Some nice improvements:
    //
    //    // max tags is 3
    //    maximumSelectionSize: 15,
    //
    //    // override message for max tags
    //    formatSelectionTooBig: function (limit) {
    //        return "Max tags is " + limit;
    //    }
    //});

    // @ from v 2.4


    $('#tags').select2({
        tags: true,
        tokenSeparators: [','],
        theme: "bootstrap"
    });


    //
    $("#submit").click(function (e) {
        e.preventDefault();
        $('#ibox_form').block({ message:block_msg });
        var _url = $("#_url").val();
        $.post(_url + 'contacts/add-post/', $( "#rform" ).serialize())
            .done(function (data) {
                var sbutton = $("#submit");
                var _url = $("#_url").val();
                if ($.isNumeric(data)) {

                    window.location = _url + 'contacts/view/' + data;
                }
                else {
                    $('#ibox_form').unblock();
                    var body = $("html, body");
                    body.animate({scrollTop:0}, '1000', 'swing');
                    $("#emsgbody").html(data);
                    $("#emsg").show("slow");
                }
            });
    });

    var _msg_add_new_group = $("#_msg_add_new_group").val();
    var _msg_group_name = $("#_msg_group_name").val();


    var ib_form_bootbox = "<form class=\"form-horizontal push-10\" method=\"post\" onsubmit=\"return false;\">\n    <div class=\"form-group\">\n        <div class=\"col-xs-12\">\n        <label for=\"envato_api_key\">" + _msg_group_name + "</label>\n <div>\n                <input class=\"form-control\" type=\"text\" id=\"group_name\" name=\"group_name\">\n             </div>\n        </div>\n    </div>\n\n</form>";


    var box =   bootbox.dialog({
            title: _msg_add_new_group,
            message: ib_form_bootbox,
            buttons: {
                success: {
                    label: "Guardar",
                    className: "btn-primary",
                    callback: function () {
                        // var name = $('#name').val();
                        // var answer = $("input[name='awesomeness']:checked").val();
                        // Example.show("Hello " + name + ". You've chosen <b>" + answer + "</b>");

                        var group_name_val = $('#group_name').val();

                        if(group_name_val != ''){


                            $.post( _url + "contacts/add_group/", { group_name: group_name_val })
                                .done(function( data ) {

                                    if ($.isNumeric(data)) {

                                        window.location = _url + 'contacts/add/' + data + '/';

                                    }

                                    else {
                                        bootbox.alert(data);
                                    }

                                });


                        }


                    }
                }
            },
            show: false
        }
    );





    $("#add_new_group").click(function(e){

        e.preventDefault();

        box.modal('show');


    });


    box.on("shown.bs.modal", function() {

        var group_name = $('#group_name');
        setTimeout(function(){
            group_name.focus();
        }, 1000);

    });



});