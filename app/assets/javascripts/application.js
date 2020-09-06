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

    $(function() {
        setTimeout("$('.flash').fadeOut('slow')", 2000);
    });

    $(document).on("click", "#addRow", function() {
        let html = '<tr><td><input type="text" class="section" value=""></td><td><input type="text" class="summary" value=""></td><td><input type="button" class="delRow" value="削除"></td></tr>'
        $('#summary-table').append(html);

    });

    $(document).on("click", ".delRow", function() {
        $(this).parents('tr').remove();

    });

});