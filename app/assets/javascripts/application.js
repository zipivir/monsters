// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
var monsters_images = ['monster1.jpg','monster2.jpg','monster3.jpg','monster4.jpg'];

function change_logo()
{
    var img_src = $('#monst_img > img')[0].src;
    var img_index = monsters_images.indexOf(img_src.split('monsters_images/')[1])
    new_img_index = img_index > 2 ? 0 : img_index+1 ;
    new_image = monsters_images[new_img_index];
    new_image_html = "<img id=​'monster_logo"+ (new_img_index+1) +"' src=​'/​assets/​monsters_images/" + new_image +"' title>​";
    console.log('new_image', new_image_html);
    $("#monst_img").html(new_image_html);
}