/// @description mover y escalar
//hacer que la semilla salte al spawnear
if click = true
{
	curvePos += curveMove;
	var _curveSt = animcurve_get(animC_semilleros);
	var _canal = animcurve_get_channel(_curveSt, curveDireccion);
	var _valor = animcurve_channel_evaluate(_canal, curvePos);
	x = xstart + _valor*vel;

	var _canal = animcurve_get_channel(_curveSt, 1);
	var _valor = animcurve_channel_evaluate(_canal, curvePos);
	y = ystart + _valor*vel;
}

//hacer que la recompensa se valla a la mitad de la pantalla
if click = false
{
	var _x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2;
	var _y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2;
	
	if image_xscale < 2 {image_xscale += 0.002;}
	if image_yscale < 2 {image_yscale += 0.002;}
	if image_xscale >= 1.5 and !instance_exists(obj_transicion) {instance_create_depth(0,0,0,obj_transicion);}
	if point_distance(x,y,_x,_y) > 5 {move_towards_point(_x,_y,3.5)}else{speed = 0;}
}