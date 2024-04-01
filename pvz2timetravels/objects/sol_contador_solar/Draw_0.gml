/// @description dibujar el contador solar
draw_sprite(spr_contadorsolar_fondo,0,x,y);
if place_meeting(x,y,sol_debug) {image_index = 1;}else{image_index = 0;}
draw_self();
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_text_outline(x+50,y+3,text_sol,2,4,c_white,c_black);