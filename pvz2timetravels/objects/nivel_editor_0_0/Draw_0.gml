/// @description Insert description here
//dibujar pasarelas de mares piratas
if instance_exists(editor_menu_pasarelas_boton_1)
{
	draw_sprite_ext(spr_patio_pirata_pasarela,1,1784,522,1,1,0,c_white,editor_menu_pasarelas_boton_1.pasarela_alpha[0]);	//1
	draw_sprite_ext(spr_patio_pirata_pasarela,0,1784,718,1,1,0,c_white,editor_menu_pasarelas_boton_1.pasarela_alpha[1]);	//2
	draw_sprite_ext(spr_patio_pirata_pasarela,1,1784,913,1,1,0,c_white,editor_menu_pasarelas_boton_1.pasarela_alpha[2]);	//3
	draw_sprite_ext(spr_patio_pirata_pasarela,0,1784,1105,1,1,0,c_white,editor_menu_pasarelas_boton_1.pasarela_alpha[3]);	//4
	draw_sprite_ext(spr_patio_pirata_pasarela,1,1784,1299,1,1,0,c_white,editor_menu_pasarelas_boton_1.pasarela_alpha[4]);	//5
}
if instance_exists(editor_menu_cesped_boton_1)
{
	draw_sprite_ext(spr_detail_cesped_1,1,971,879,1,1,0,c_white,editor_menu_cesped_boton_1.cesped_alpha[0]);
	draw_sprite_ext(spr_detail_cesped_2,1,1005,731,1,1,0,c_white,editor_menu_cesped_boton_1.cesped_alpha[1]);
	draw_sprite_ext(spr_detail_cesped_3,1,1005,537,1,1,0,c_white,editor_menu_cesped_boton_1.cesped_alpha[2]);
}
//dibujar fondo de los botones
draw_sprite_ext(spr_menu_fondo,0,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0]),1.8,1.12,0,c_white,1);