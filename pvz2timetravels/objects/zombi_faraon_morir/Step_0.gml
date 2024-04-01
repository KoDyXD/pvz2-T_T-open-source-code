/// @description destruir cuerpo
if image_index > 25 and golpe = true  {golpe = false; audio_play_sound(sound_zombi_muerte,1,0);}
if image_index >= 79 {instance_destroy();}