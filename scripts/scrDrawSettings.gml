///scrDrawSettings(font, halign, valign, color, alpha);

var txtFont = fntMenu3;
var txtHalign = fa_left;
var txtValign = fa_top;
var txtColor = c_white;
var txtAlpha = 1;

if argument_count > 0
{
    txtFont = argument[0];
    txtHalign = argument[1];
    txtValign = argument[2];
    txtColor = argument[3];
    txtAlpha = argument[4];
}

draw_set_font(txtFont);

draw_set_halign(txtHalign);
draw_set_valign(txtValign);

draw_set_colour(txtColor);
draw_set_alpha(txtAlpha);

