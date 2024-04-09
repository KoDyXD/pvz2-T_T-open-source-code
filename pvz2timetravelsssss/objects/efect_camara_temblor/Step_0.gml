/// @description Insert description here
if alarm[1] != -1
{
	if camera_get_view_x(view_camera[0]) > xx+2
	{
		velocidad_x = -1;
	}
	if camera_get_view_x(view_camera[0]) < xx-2
	{
		velocidad_x = 1;
	}
	if camera_get_view_y(view_camera[0]) > yy+2
	{
		velocidad_y = -1;
	}
	if camera_get_view_y(view_camera[0]) < yy-2
	{
		velocidad_y = 1;
	}

	camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0])+velocidad_x,camera_get_view_y(view_camera[0])+velocidad_y);
}