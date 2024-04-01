/// @description cambiar a la descripcion siguiente
if direccion = "derecha"
{
	with(menu_boton_noticias)
	{
		if cual > 0
		{
			cual -= 1;
			menu_boton_noticias_mover.limite_y1 = (string_height_ext(texto[cual],40,620)+string_height_ext(fecha[cual],40,620))-730;
			menu_boton_noticias_mover.drag_speed = 0;
			menu_boton_noticias_mover.drag = mouse_y;
			menu_boton_noticias_mover._y = y-mouse_y;
			menu_boton_noticias_mover.y = ystart;
			
			image_index = 1;
			alarm_set(0,15);
			audio_play_sound(sound_menu_boton_perfil_aceptar,10,0);
		}
	}
}