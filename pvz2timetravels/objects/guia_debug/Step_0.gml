/// @description hacer que el objeto siga al mouse
x = mouse_x;
y = mouse_y+50;

if place_meeting(x,y,inst) and mouse_check_button_pressed(mb_left) and alarm[0] = -1
{
	with(inst)
	{
		restaurar = false;
		alarm_set(0,1);
	}
	instance_destroy();
}