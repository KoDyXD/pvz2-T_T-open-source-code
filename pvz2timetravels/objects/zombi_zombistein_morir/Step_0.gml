/// @description destruir cuerpo
if image_index > 34 and golpe = true {golpe = false; audio_play_sound(sound_zombi_muerte,1,0);}
if image_index >= 94 {instance_destroy();}