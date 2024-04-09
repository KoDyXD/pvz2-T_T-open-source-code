/// @description mover en y
curvePos += curveMove;
curvePos = curvePos mod 1;

var _canal = animcurve_get_channel(animC_mundo, 0);
var _valor = animcurve_channel_evaluate(_canal, curvePos);
y = ystart + _valor*1.1;

if nivel_id_last = true
{
	image_blend = c_white;
	seleccionar = true;
}
else
{
	image_blend = c_gray;
	seleccionar = false;
}

var _x = point_distance(x,room_height/2,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,room_height/2)/camera_get_view_width(view_camera[0])/2;

if global.xx > x-(350-_x*455) and global.xx < x+(350-_x*455) and global.yy > y-(575-_x*747.5) and global.yy < y+(575-_x*747.5)
{
	brillo = 0.13;
}