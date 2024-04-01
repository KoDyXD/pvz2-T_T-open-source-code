/// @description mover la pantalla
var _x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2;

if destino = noone
{
	inst = collision_rectangle(_x-350,0,_x+350,room_height,menu_mundo,0,1);
}
if instance_exists(inst)
{
	if !mouse_check_button(mb_left) and abs(mund_espiral2.drag_speed) < 0.5
	{
		if point_distance(inst.x-camera_get_view_width(view_camera[0])/2,0,camera_get_view_x(view_camera[0]),0) > abs(vel)+10
		{
			mund_espiral2.drag_speed = 0;
			if inst.x-camera_get_view_width(view_camera[0])/2 < camera_get_view_x(view_camera[0])
			{
				vel += 5;
				camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0])-vel,0);
			}
			else
			{
				vel -= 5;
				camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0])-vel,0);
			}
		}
		else
		{
			destino = noone;
			camera_set_view_pos(view_camera[0],abs(inst.x-camera_get_view_width(view_camera[0])/2),0);
			vel = 0;
		}
	}
}
else
{
	vel = 0;
}

if os_type = os_windows
{
	global.xx = mouse_x;
	global.yy = mouse_y;
}