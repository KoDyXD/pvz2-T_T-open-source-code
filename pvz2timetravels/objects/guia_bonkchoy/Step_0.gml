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

#region anims de movimiento tranquilo
//vista hacia la derecha
if skeleton_animation_get() = "tranquilo/der/3" and image_index >= 28
{
	skeleton_animation_set(choose("tranquilo/izq/1","tranquilo/izq/2","tranquilo/izq/3"));
	image_index = 0;
}
if skeleton_animation_get() = "tranquilo/der/1" or skeleton_animation_get() = "tranquilo/der/2" and image_index >= 28
{
	skeleton_animation_set(choose("tranquilo/der/1","tranquilo/der/2","tranquilo/der/3"));
	image_index = 0;
}
//vista hacia la izquierda
if skeleton_animation_get() = "tranquilo/izq/3" and image_index >= 28
{
	skeleton_animation_set(choose("tranquilo/der/1","tranquilo/der/2","tranquilo/der/3"));
	image_index = 0;
}
if skeleton_animation_get() = "tranquilo/izq/1" or skeleton_animation_get() = "tranquilo/izq/2" and image_index >= 28
{
	skeleton_animation_set(choose("tranquilo/izq/1","tranquilo/izq/2","tranquilo/izq/3"));
	image_index = 0;
}
#endregion