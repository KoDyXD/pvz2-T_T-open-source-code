/// @description dibujar hud
draw_sprite_ext(spr_menu_fondo,0,room_width/2,975,9,4.25,0,c_white,1);
draw_sprite_ext(spr_almanaque_etiqueta,0,room_width/2,218,9,1.1,0,c_white,1);
draw_sprite_ext(spr_almanaque_fondo,0,room_width/2+739,275,5,1,0,c_white,1);
draw_sprite_ext(spr_menu_fondo2,0,room_width/2-1459,250,4.47,5.55,0,c_white,1);
draw_sprite_ext(spr_menu_fondo2,1,room_width/2-1459,250,4.47,5.55,0,c_white,1);
draw_sprite_ext(spr_menu_fondo_almanaque,0,room_width/2+739,1303,5.55,3.145,0,c_white,1);
draw_sprite_ext(spr_almanaque_fondo_seccion,0,room_width/2+739,999,10.5,1.25,0,c_white,1);
draw_sprite_ext(spr_almanaque_fondo_seccion,1,room_width/2+739,1159,10.5,1.25,0,c_white,1);

draw_sprite_part(spr_menu_patio_almanaque,global.fondo,0,0,554,442,room_width/2+462,415);	//fondo de patio

draw_set_font(fnt_menu_3);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_text_outline_transformed(room_width/2,142,"Sección de Plantas",2.5,2.5,$68DCFD,c_black,1,1,0);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_menu);
draw_set_color($003E48);
draw_text_ext_transformed(room_width/2+70,1246,desc[global.desc],47,890,1.5,1.5,0);