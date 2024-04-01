/// @description dibujar contador
if !instance_exists(camara) and !instance_exists(menu_boton_nivel_continuar) and objetivo_cuales.alarm[1] = -1
{
	draw_set_alpha(alpha);
	draw_sprite(spr_objetivo_fondo,0,440+200*pos1,45);
	draw_sprite(spr_objetivos,0,440+200*pos1,45);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_text_outline_transformed(480+200*pos1,45,string(soles)+"/"+string(objetivo),2,2,color,c_black,0.75,0.75,0);
	draw_sprite(spr_objetivo_marcador,marcador,440+200*pos1,45);
	draw_set_alpha(1);
}