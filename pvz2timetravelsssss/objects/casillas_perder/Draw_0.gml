/// @description oscurecer escenario
if global.perder = true
{
	draw_set_alpha(intensidad);
	draw_set_color(c_black);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_alpha(1);
}