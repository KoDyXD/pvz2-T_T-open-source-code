/// @description Inserte aquí la descripción
draw_sprite_ext(spr_menu_fondo,0,room_width/2,992,9,4,0,c_white,1);
draw_sprite_ext(spr_almanaque_etiqueta,2,room_width/2,280,9,1.1,0,c_white,1);
draw_sprite_ext(spr_almanaque_fondo,0,(room_width/2)-800,573,5.25,1.25,0,c_white,1);
draw_sprite_ext(spr_almanaque_fondo,1,(room_width/2)+800,573,5.25,1.25,0,c_white,1);
draw_sprite_ext(spr_menu_patio_almanaque,0,(room_width/2)-1077,721,1,1,0,c_white,1);
draw_sprite_ext(spr_menu_patio_almanaque,0,(room_width/2)+523,721,1,1,0,c_white,1);

draw_set_font(fnt_menu_3);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);

draw_text_outline_transformed((room_width/2)+800,649,"Sección de Zombis",2.5,2.5,$68DCFD,c_black,0.75,0.75,0);
draw_text_outline_transformed((room_width/2)-800,649,"Sección de Plantas",2.5,2.5,$68DCFD,c_black,0.75,0.75,0);

draw_text_outline_transformed(room_width/2,205,"Almanaque",2.5,2.5,$68DCFD,c_black,0.95,0.95,0);