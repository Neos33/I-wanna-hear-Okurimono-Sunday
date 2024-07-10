///scrKillPlayer()
if (!global.debugGodMode) {
    if (global.gameStarted) {
        if !global.hitMode
        {
            if (instance_exists(objPlayer)) {
                with (objPlayer) {
                    instance_create(x, y, objBloodEmitter);
                    instance_destroy(objPlayerRotation);
                    instance_destroy();
                }
                
                audio_play_sound(sndDeath, 0, false);
                audio_stop_sound(global.currentMusic);
                
                if global.gameoverOption
                    audio_play_sound(musGameover, 0, false);
                
                instance_create(0, 0, objGameOver);
                if room != rGameClear
                    global.deaths++; 
            }
        }
        else // Hit Mode Enabled ?
        {
            if global.Kid_iFrames == 0
            {
                global.hitCount++; // Increment
                global.hitCountSegment[global.currentSegment]++; // Increment for the current segment as well
                audio_play_sound(sndDeath, 0, false);
                global.Kid_iFrames = 50;

                with (objPlayer) { image_alpha = 0.5; }
                with (objPlayerRotation) { image_alpha = 0.5; }
            }
        }
    } else {
        instance_destroy(objPlayer);
        room_restart();
    }
}

