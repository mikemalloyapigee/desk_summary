$(document).ready(function () {
    $('#test_case_table').dataTable( {
            "bJQueryUI": true
        } );
    if ($("#test_case_auth_headers").val() == "") { $('#auth_header_table').hide(); }
    else {display_table('#auth_header_table', '#test_case_auth_headers');  };
    $("#test_case_auth_headers").change( function () {
        if ($('#test_case_auth_headers').val() == "") { $('#auth_header_table').hide(); }
        else { display_table('#auth_header_table', '#test_case_auth_headers'); }
        } );
    if ($("#test_case_request_headers").val() == "") { $('#req_header_table').hide(); }
    else {display_table('#req_header_table', '#test_case_request_headers');  };
    $("#test_case_request_headers").change( function () {
        if ($('#test_case_request_headers').val() == "") { $('#req_header_table').hide(); }
        else { display_table("#req_header_table", "#test_case_request_headers"); }
        } );            
});

function display_table(table_name, text_field_name) {
  $(table_name).show();
  var textField = $(text_field_name),
    headers = textField.val().split('||'),
    table = $(table_name + ' tbody'),
    iterator,
    row;
  table.empty();
  for (iterator = 0; iterator < headers.length; iterator += 1) {
        row = $('<tr><td>' + headers[iterator] + '</td></tr>');
        table.append(row);
    }
}