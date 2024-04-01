/// @description Insert description here
y = 0;
x = room_width/2;

depth = -11;

smoothview_init(0,0.08,0.08,2);

my = mouse_y;

_y = 0;

limite_y1 = 0;
/*
if instance_exists(menu_editor_izq_nivel_cual)
{
	limite_y1 = -(abs(340*(instance_number(menu_editor_izq_nivel_cual)-3)));
}