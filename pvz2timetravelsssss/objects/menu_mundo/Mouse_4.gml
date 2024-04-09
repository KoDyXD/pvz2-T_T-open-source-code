/// @description pasar al siguiente area
var _x = point_distance(x,room_height/2,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,room_height/2)/camera_get_view_width(view_camera[0])/2;
if click = true and !instance_exists(obj_transicion) and collision_rectangle(x-(350-_x*455),y-(575-_x*747.5),x+(350-_x*455),y+(575-_x*747.5),obj_click,0,1)
{
	click2 = camera_get_view_x(view_camera[0]);
}