/// @description Inserte aquí la descripción
/**
ini_open("general.ini");
var i = ini_read_real("extras","pantalla_completa",false);
ini_close();
window_set_fullscreen(i);*/
randomize();
audio_group_load(musica);
instance_destroy(musica_menu2);
if audio_is_playing(music_menu_2) {audio_stop_sound(music_menu_2);}
if audio_is_playing(ambiente_menu) {audio_stop_sound(ambiente_menu);}

alarm_set(0,2);