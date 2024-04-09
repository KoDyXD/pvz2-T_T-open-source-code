/// @description Inserte aquí la descripción
fuego = false;
y_pos_selector = 0;	//posicion respecto a la wea que permite el desplazamiento
if instance_exists(menu_selector)
{
	y_pos_selector = y-menu_selector.y;
}
nivel_id_last = false;

depth = -2;

skeleton_animation_set("tranquilo/der/1");
skeleton_skin_set("normal");