/// @description Inserte aquí la descripción
var _x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2;
var _y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2;

if parte = false
{
	//espiral
	draw_sprite_ext(spr_mund_fondo,0,_x,_y,3.25,3.25,image_angle,image_blend,image_alpha);
	draw_sprite_ext(spr_mund_fondo,0,_x,_y,3.25,3.25,image_angle-90,image_blend,image_alpha);
	draw_sprite_ext(spr_mund_fondo,0,_x,_y,-3.25,-3.25,image_angle,image_blend,image_alpha);
	draw_sprite_ext(spr_mund_fondo,0,_x,_y,-3.25,-3.25,image_angle-90,image_blend,image_alpha);

	//brillo interior
	draw_sprite_ext(spr_mund_fondo,2,_x,_y,image_xscale,image_yscale,0,c_aqua,image_alpha);
	draw_sprite_ext(spr_mund_fondo,2,_x,_y,image_xscale,image_yscale,-90,c_aqua,image_alpha);
	draw_sprite_ext(spr_mund_fondo,2,_x,_y,image_xscale,image_yscale,180,c_aqua,image_alpha);
	draw_sprite_ext(spr_mund_fondo,2,_x,_y,image_xscale,image_yscale,90,c_aqua,image_alpha);

	if fondo_mundo = true
	{
		draw_sprite_ext(mundo,1,_x,_y,1,1,0,c_white,1);	//mundo
	}

	var _x = camera_get_view_width(view_camera[0])/330;
	var _y = camera_get_view_height(view_camera[0])/201;
	draw_sprite_ext(spr_mund_fondo,1,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),_x,_y,0,c_aqua,1);	//mancha
}
if parte = true
{
	//bordes
	draw_sprite_ext(spr_mund_fondo,3,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),30,5.25,0,c_black,1);
	draw_sprite_ext(spr_mund_fondo,3,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0]),30,-5.25,0,c_black,1);
}