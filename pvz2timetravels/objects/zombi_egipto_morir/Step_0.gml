/// @description destruir cuerpo
if image_index > 20 and golpe = true  {golpe = false; audio_play_sound(sound_zombi_muerte,1,0);}
if image_index >= 32 {image_speed = 0; image_alpha -= 0.02;}
if image_alpha <= 0 {instance_destroy();}