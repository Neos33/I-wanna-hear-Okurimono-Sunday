///scrGetMusic()
var loop = true;
global.restartMusic = false;

switch (room) {
    case rTitle:
    case rFiles:
    case rOptions:
    case rDiffs:
    case rTest:
        //music = global.bgmTitle;
        if music_loaded
            music = musTitle;
        break;
        
    case rMiku:
        //music = global.bgmAvoidance;
        if music_loaded
        {
            music = musBoss;
            loop = false;
            global.restartMusic = true;
        }
        break;
        
    default: music = -1; break;
}

if (music != -2) {
    scrPlayMusic(music, loop);
}
