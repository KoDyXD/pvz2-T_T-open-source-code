/// @description Inserte aquí la descripción
var _x = point_distance(x,room_height/2,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,room_height/2)/camera_get_view_width(view_camera[0])/2;

if collision_rectangle(x-(350-_x*455),y-(575-_x*747.5),x+(350-_x*455),y+(575-_x*747.5),obj_click,0,1)
{
	if nivel_id_last = true {brillo = 0.13;}
}