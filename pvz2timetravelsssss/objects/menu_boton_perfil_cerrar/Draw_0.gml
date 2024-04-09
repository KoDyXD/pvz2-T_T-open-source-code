/// @description dibujar boton y fondo
/*
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_rectangle(0,0,room_width,room_height,0);
draw_set_alpha(1);

draw_sprite_ext(spr_menu_fondo,0,room_width/2,room_height/2,2.5,1.3,0,c_white,1);

draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_text_outline_transformed(room_width/2,390,"ELIMINAR PERFIL",1,1,c_white,c_black,1.75,1.75,0);

draw_set_valign(fa_top);
draw_text_outline_trans_ext(room_width/2,500,"¿Quieres eliminar este perfil?\nEl perfil será inaccesible por toda la eternidad.\n¡Eso es mucho tiempo¡",1,1,$68DCFD,c_black,45,450,1.5,1.5,0);
*/
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_self();
draw_text_outline(x,y,"cerrar",1,1,c_white,c_black);