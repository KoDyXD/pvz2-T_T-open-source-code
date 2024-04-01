/// @description destruir si sale del escenario
if x > camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])+150 or x < camera_get_view_x(view_camera[0]) or y > room_height or y < camera_get_view_y(view_camera[0])
{
	instance_destroy();
}