// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function() {

    $("#addRow").click(function() {
        var html = "<tr><th><input type="
        text " class="
        section " name="
        section " value="
        "></th><th><input type="
        text " class="
        summary " name="
        summary " value="
        "></th><th><input type="
        button " id="
        delRow " value="
        削除 "></th></tr>";

        $(table).append(html);

    });

    $('#delRow').click(function() {
        var row = $(this).closest("tr").remove();
        $(row).remove();

    });

});