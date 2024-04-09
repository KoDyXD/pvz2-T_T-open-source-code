/// @description pasar al siguiente area
var _x = point_distance(x,room_height/2,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,room_height/2)/camera_get_view_width(view_camera[0])/2;
if click = true and !instance_exists(obj_transicion) and collision_rectangle(x-(350-_x*455),y-(575-_x*747.5),x+(350-_x*455),y+(575-_x*747.5),obj_click,0,1)
{
	if seleccionar == true
	{
		if (1-_x*1.3) >= 0.86 and point_distance(x,y,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,y) <= 10 and mund_camara_extra.inst = id and mund_camara_extra.destino = noone
		{
			click = false;
			seleccionar = false;
			instance_create_depth(0,0,-10, obj_transicion);
			alarm_set(0,60);
		}
		else if point_distance(camera_get_view_x(view_camera[0]),0,click2,0) < 10
		{
			mund_camara_extra.vel = 0;
			mund_camara_extra.destino = id;
			mund_camara_extra.inst = id;
		}
	}
	else if point_distance(camera_get_view_x(view_camera[0]),0,click2,0) < 10
	{
		mund_camara_extra.vel = 0;
		mund_camara_extra.destino = id;
		mund_camara_extra.inst = id;
	}
}