/// @description Insert description here
if instance_number(menu_editor_izq_nivel_cual) > 3
{
	limite_y1 = -(abs(340*(instance_number(menu_editor_izq_nivel_cual)-3)));
	smoothview_step_editor();
}
else if y != 0
{
	y = 0;
}