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

$(document).ready(function(){

    $(".columns").click(function(){
        var self = this
        $('h1').each(function(){
            if ($(this).hasClass(self.id) == true){
                $(this).parent().animate({
                    width: "30.6666666667%"
                 }, 500, function() {})
                $(this).parent().css("display", "block")
                        // Animation complete.
            };
            if ($(this).hasClass(self.id) == false){
                $(this).parent().animate({
                     width: "0"
                }, 500, function() {})
                $(this).parent().css("display", "none")
                     // Animation complete.
            };
        }); // closes h1.each function
    }); // closes columns click function

}); // closes document.ready
