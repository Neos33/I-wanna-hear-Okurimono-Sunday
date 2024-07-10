///scrUnloadAudio();
if sfx_loaded and music_loaded
{
    audio_group_unload(ag_BGM);
    audio_group_unload(ag_SFX);
    
    show_debug_message("Music and SFX were unloaded");
}
