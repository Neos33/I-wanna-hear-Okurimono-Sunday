///scrDrawLightObject( x, y, size, color, alpha );

var xx = argument[0];
var yy = argument[1];
var scale = argument[2];
var color = argument[3];
var alpha = argument[4];

draw_set_blend_mode( bm_subtract );

draw_sprite_ext( sprLight, 0, xx, yy, scale, scale, 0, color, alpha );
/*draw_set_alpha( alpha );
draw_ellipse_colour( xx-scale, yy-scale, xx+scale, yy+scale, c_black, color, false );
    

//draw_circle_colour( xx, yy, scale, color, color, false );
draw_set_alpha( 1 );*/
draw_set_blend_mode( bm_normal );
