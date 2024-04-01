/// @description Inserte aquí la descripción
if instance_exists(pala_usable) or instance_exists(guia_debug)
{
	var mouse_grid_x = mouse_x div 166;
	var mouse_grid_y = mouse_y div 186;

	if mouse_grid_x >= 6 and mouse_grid_x <= 14 and mouse_grid_y >= 3 and mouse_grid_y <= 7
	{
		draw_set_color(c_white);
		draw_set_alpha(0.35);
		draw_rectangle(6*166,mouse_grid_y*186,14*166+166,mouse_grid_y*186+186,0);
		draw_rectangle(mouse_grid_x*166,3*186,mouse_grid_x*166+166,7*186+186,0);
		draw_set_alpha(1);
	}
}