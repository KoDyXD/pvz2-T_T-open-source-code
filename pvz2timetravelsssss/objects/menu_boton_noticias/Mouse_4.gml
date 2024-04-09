/// @description Inserte aquí la descripción
if click2 = false and !instance_exists(obj_transicion) and !instance_exists(obj_transicion_inicio)
{
	if click = false
	{
		image_index = 1;
		click = true;
		menu_boton_iniciar_salir.click2 = true;
		menu_boton_perfil.click2 = true;
		menu_boton_creditos.click2 = true;
		if instance_exists(menu_boton_graficos_pantalla_completa) {menu_boton_graficos_pantalla_completa.click2 = true;}
		audio_play_sound(sound_menu_boton_perfil,5,0);
		
		var _i = instance_create_depth(room_width/2+365,room_height/2,depth,menu_boton_noticias_cual);
		_i.direccion = "izquierda";
		var _i = instance_create_depth(room_width/2-365,room_height/2,depth,menu_boton_noticias_cual);
		_i.direccion = "derecha";
		_i.image_xscale = -1;
	}
	else
	{
		cual = array_length(texto)-1;
		menu_boton_noticias_mover.limite_y1 = (string_height_ext(texto[cual],40,620)+string_height_ext(fecha[cual],40,620))-730;
		menu_boton_noticias_mover.drag_speed = 0;
		menu_boton_noticias_mover.drag = mouse_y;
		menu_boton_noticias_mover._y = y-mouse_y;
		menu_boton_noticias_mover.y = ystart;
	
		image_index = 0;
		click = false;
		if instance_exists(menu_boton_graficos_pantalla_completa) {menu_boton_graficos_pantalla_completa.click2 = false;}
		menu_boton_iniciar_salir.click2 = false;
		menu_boton_perfil.click2 = false;
		menu_boton_creditos.click2 = false;
		
		instance_destroy(menu_boton_noticias_cual);
	}
}