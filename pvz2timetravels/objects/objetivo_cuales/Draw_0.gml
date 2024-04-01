/// @description dibujar cuadro
if dibujar = true
{
	draw_set_alpha(intensidad);
	draw_set_color(c_black);
	draw_rectangle(0,0,room_width,room_height,0);
	draw_set_alpha(1);

	if alarm[1] = -1
	{
		var _x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2;
		var _y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2;
		
		draw_sprite_ext(spr_menu_fondo,0,_x,_y,2.85,1.75,0,c_white,1);	//fondo principal
		draw_sprite_ext(spr_objetico_menu,0,_x,_y+70,3.1,3.1,0,c_white,1);	//fondo donde estara la imagen del objetivo

		frame += 1;
		if frame > 218 {frame = 0;}
		draw_skeleton(spr_menu_pausa_anims,"cesped","girasol",frame,_x,_y-283,0.75,0.75,0,c_white,1);

		draw_set_valign(fa_middle);
		draw_set_halign(fa_center);
	
		draw_text_outline_transformed(_x,camera_get_view_y(view_camera[0])+90,"OBJETIVOS DEL NIVEL",1,1,c_white,c_black,1.75,1.75,0);	//texto de encima
		draw_text_outline_trans_ext(_x,_y-155,frase[cual][0],1,1,$68DCFD,c_black,45,550,1.4,1.4,0);	//dibujar frase
		draw_sprite_ext(spr_objetivos145,frase[cual][1],_x,_y+70,1,1,0,c_white,1);	//dibujar icono
	}
}