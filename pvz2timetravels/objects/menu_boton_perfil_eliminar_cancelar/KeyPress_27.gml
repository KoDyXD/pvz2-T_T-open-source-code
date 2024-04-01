/// @description cancelar
menu_boton_perfil.alarm[0] = 1;
instance_destroy(menu_escribir_renombrar);
instance_destroy(menu_boton_perfil_eliminar_aceptar);
instance_destroy();
audio_play_sound(sound_menu_boton_perfil_cancelar,5,0);