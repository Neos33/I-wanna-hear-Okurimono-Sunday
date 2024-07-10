///scrAvoidanceSync(MusicID);
// Credits to Redire
var musId = argument0;

// Correct the game time if it desyncs from real time.
if( room_speed < 100 ) {
    var deltaTimeStep = realTime - t;
    if( abs( deltaTimeStep ) > 5 ) {
        // A big lag spike, adjust music to game time.
       audio_sound_set_track_position( musId, t / 50 );
       realTime = t;   
    } else if( deltaTimeStep > 0 ) {
        room_speed = 51;
    } else {
        // All is good.
        room_speed = 50;
    }
}

realTime += 50 * delta_time / 1000000; 
t++;
