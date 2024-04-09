/// @description dibujar boton y fondo
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_rectangle(0,0,room_width,room_height,0);
draw_set_alpha(1);

if os_type = os_android
{
	if keyboard_virtual_status() = false
	{
		draw_sprite_ext(spr_menu_fondo,0,room_width/2,room_height/2,2,1.25,0,c_white,1);
		draw_sprite(spr_menu_perfil_nombre,0,room_width/2,665);

		draw_set_valign(fa_middle);
		draw_set_halign(fa_center);
		draw_text_outline_transformed(room_width/2,400,"CREAR PERFIL",1,1,c_white,c_black,1.75,1.75,0);
		draw_text_outline_trans_ext(room_width/2,550,"Introduce tu nombre:",1,1,$68DCFD,c_black,45,450,1.5,1.5,0);
	}
	else
	{
		draw_sprite_ext(spr_menu_fondo,0,room_width/2,room_height/4,2,1.25,0,c_white,1);
		draw_sprite(spr_menu_perfil_nombre,0,room_width/2,328.75);

		draw_set_valign(fa_middle);
		draw_set_halign(fa_center);
		draw_text_outline_transformed(room_width/2,70,"CREAR PERFIL",1,1,c_white,c_black,1.75,1.75,0);
		draw_text_outline_trans_ext(room_width/2,218.75,"Introduce tu nombre:",1,1,$68DCFD,c_black,45,450,1.5,1.5,0);
	}
}
else
{
	draw_sprite_ext(spr_menu_fondo,0,room_width/2,room_height/2,2,1.25,0,c_white,1);
	draw_sprite(spr_menu_perfil_nombre,0,room_width/2,665);

	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_text_outline_transformed(room_width/2,400,"CREAR PERFIL",1,1,c_white,c_black,1.75,1.75,0);
	draw_text_outline_trans_ext(room_width/2,550,"Introduce tu nombre:",1,1,$68DCFD,c_black,45,450,1.5,1.5,0);
}

draw_set_valign(fa_middle);
draw_self();
draw_text_outline(x,y,"cancelar",1,1,c_white,c_black);