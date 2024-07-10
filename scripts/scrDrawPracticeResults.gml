///scrDrawPracticeResults(x,y,space);

var xx = argument[0];
var yy = argument[1];
var sep = argument[2];

// Set Draw Settings
scrDrawSettings(fntNeosOptions,fa_center,fa_middle,c_black,1);

// HitMode Disabled
if !global.hitMode   
{
    draw_text(xx,304-16,"- Practice end -");
    draw_text(xx,304+16,"----------------");
}
else // HitMode Enabled
{
    var shiftY = yy + 13 * (global.startSegment - global.totalSegment);
    
    for (var segmentIndex = global.startSegment; segmentIndex <= global.totalSegment; segmentIndex++)
    {
        var space = segmentIndex - global.startSegment;
        scrDrawSettings(fntNeosOptions, fa_left, fa_middle, c_black, 1);
        draw_text(xx - 128,shiftY + sep * space, string_interp("Segment {0} Hits: {1}", segmentIndex, global.hitCountSegment[segmentIndex]));
        
        if segmentIndex == 9
        {
            scrDrawSettings(fntNeosOptions,fa_center,fa_middle,c_black,1);
            // Top Info
            draw_text(xx,shiftY-sep*2,"- Practice end -");
            draw_text(xx,shiftY-sep,"----------------");
                
            // Bottom Info
            draw_text(xx,shiftY+(sep*(space+1)),"----------------");   
            draw_text(xx,shiftY+(sep*(space+2)),string_interp("Total Hits: {0}", global.hitCount));
        }   
    }
}
