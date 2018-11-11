/// @description 

// Inherit the parent event
event_inherited();

anglePerFrame = choose(-1,1)*irandom_range(5,10);

audioEmitter = audio_emitter_create()
audio_emitter_falloff(audioEmitter,display_get_gui_width(),display_get_gui_width()*3,1)
audio_emitter_position(audioEmitter,x,y,0);
audio_play_sound_on(audioEmitter,asset_get_index("snd_badaBot_explosion1"/* + string(choose(1,2,3))*/),false,1);