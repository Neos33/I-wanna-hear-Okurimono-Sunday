///scrBGSettings(id, bg, x, y, xscale, yscale, hspd, vspd, visible, blend, alpha, foreground);

var bgID = argument[0];
var bgIndex = argument[1];
var bgXX = argument[2];
var bgYY = argument[3];
var bgXscale = argument[4];
var bgYscale = argument[5];
var bgHspeed = argument[6];
var bgVspeed = argument[7];
var bgVisible = argument[8];
var bgBlend = argument[9];
var bgAlpha = argument[10];
var bgForeground = argument[11];

// Only works if "Backgrounds" options are Enabled
if global.normalPerformance
{
    background_index[bgID] = bgIndex;
    background_x[bgID] = bgXX;
    background_y[bgID] = bgYY;
    background_xscale[bgID] = bgXscale;
    background_yscale[bgID] = bgYscale;
    background_hspeed[bgID] = bgHspeed;
    background_vspeed[bgID] = bgVspeed;
    background_visible[bgID] = bgVisible;
    background_blend[bgID] = bgBlend;
    background_alpha[bgID] = bgAlpha;
    background_foreground[bgID] = bgForeground;
}
