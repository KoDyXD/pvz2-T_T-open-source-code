/// @description dibujar el menu y los botones
//dibujar fondo oscuro
draw_set_alpha(intensidad);
draw_set_color(c_black);
draw_rectangle(0,0,room_width,room_height,0);
draw_set_alpha(1);

if intensidad >= 0.75	//dibujar el menu
{	
	var _xCam = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2;
	var _yCam = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2;
	draw_sprite_ext(spr_menu_fondo,0,_xCam,_yCam,3.5,2.35,0,c_white,1);

	draw_sprite(spr_menu_tutorial_saltar,0,_xCam,_yCam+75);

	draw_sprite(spr_menu_boton_2,boton_1,_xCam-250,_yCam+396);
	draw_sprite(spr_menu_boton,0,_xCam+250,_yCam+396);

	draw_set_font(fnt_menu);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_text_outline_trans_ext(_xCam,_yCam-275,"¿Quieres jugar el tutorial o quieres ir instantaneamente al ultimo nivel del tutorial?",1,1,$68DCFD,c_black,45,750,1.4,1.4,0);	//dibujar frase

	draw_text_outline(_xCam-250,_yCam+396,"Saltar",1,1,c_white,c_black);
	draw_text_outline(_xCam+250,_yCam+396,"Jugar",1,1,c_white,c_black);
}