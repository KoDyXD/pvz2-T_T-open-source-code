/// @description perimitir hacerle click
//Click para iniciar el nivel
if click = true and global.posi >= global.semilla_cantidad_usable
{
	image_index = 1;
	camara.giro = true;
	click = false;
	nivel_debug_xd.activar = true;
	global.mover_menu = true;
	global.mover_destruir = true;
	audio_play_sound(sound_menu_boton,5,0);
	if instance_exists(menu_boton_pausar) {instance_destroy(menu_boton_pausar);}
	menu_selector_sems_mover.y_pos_selector = menu_selector.y-menu_selector_sems_mover.y;
}

//Click para indicar que aun faltan semillas por seleccionar
if global.posi < global.semilla_cantidad_usable {audio_play_sound(sound_semillero_insuficiente,5,0);}