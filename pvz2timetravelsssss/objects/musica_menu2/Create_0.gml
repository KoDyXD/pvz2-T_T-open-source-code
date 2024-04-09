/// @description Inserte aquí la descripción
audio_stop_all();
duracion = audio_play_sound(music_menu_2, 1000, 0);
duracion2 = audio_play_sound(ambiente_menu,1000,1);
audio_sound_gain(duracion2,0,0);
audio_sound_gain(duracion2,0.5,3000);