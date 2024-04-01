/// @description Inserte aquí la descripción
if click = true and click2 = false and !instance_exists(obj_transicion) and !instance_exists(obj_transicion_inicio)
{
	cual = array_length(texto)-1;
	menu_boton_noticias_mover.limite_y1 = (string_height_ext(texto[cual],40,620)+string_height_ext(fecha[cual],40,620))-730;
	menu_boton_noticias_mover.drag_speed = 0;
	menu_boton_noticias_mover.drag = mouse_y;
	menu_boton_noticias_mover._y = y-mouse_y;
	menu_boton_noticias_mover.y = ystart;
	
	image_index = 0;
	click = false;
	menu_boton_iniciar_salir.click2 = false;
	menu_boton_perfil.click2 = false;
	menu_boton_creditos.click2 = false;
	
	instance_destroy(menu_boton_noticias_cual);
}