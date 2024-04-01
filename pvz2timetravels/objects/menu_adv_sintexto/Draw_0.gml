/// @description texto de advertencia
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_alpha(image_alpha);
draw_text_outline_transformed(room_width/2,y,"Tu nombre debe tener al menos un carácter.",1,1,c_red,c_black,1.3,1.3,0);
draw_set_alpha(1);