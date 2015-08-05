// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require jquery-readyselector




$(document).ready(function(){

    $(".columns").click(function(){
        var self = this
        $('h1').each(function(){
            if ($(this).hasClass(self.id) == true){
                if ($(self).parent().hasClass("users")){
                    $(this).parent().animate({
                        width: "100%"
                    }, 800, function() {})
                    $(this).parent().css("display", "block")
                } else {
                    $(this).parent().animate({
                        width: "33.3333333%"
                    }, 800, function() {})
                    $(this).parent().css("display", "block")
                } // closes "users" class else
            } else {
                $(this).parent().animate({
                     width: "0"
                }, 800, function() {})
                $(this).parent().css("display", "none");
                     // Animation complete.
            };
        }); // closes h1.each function
     });// closes columns click function

}); // closes document.ready
