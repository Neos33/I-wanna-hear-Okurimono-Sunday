///scrRestartGame()
if global.gameoverOption
{
    //audio_stop_sound(global.bgmDeath);
    audio_stop_sound(musGameover);
}

audio_resume_sound(global.currentMusic);

// Reset Hits
scrResetHitCount();

var deaths = global.deaths;
var time = global.time;
scrLoadGame(true);
global.deaths = deaths;
global.time = time;
