/// @description dibujar texto
draw_set_font(fnt_zombi);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if audio_is_playing(duracion)
{
	if audio_sound_get_track_position(duracion) > 1.1
	{
		if texto = "LISTOS" {scala = 1.75;}
		texto = "A PLANTAR";
	}
	else
	{
		if audio_sound_get_track_position(duracion) > 0.6
		{
			if texto = "PREPARADOS" {scala = 1;}
			texto = "LISTOS";
		}
	}
}

var _x = display_get_gui_width()/2;
var _y = display_get_gui_height()/2;
draw_text_outline_transformed(_x,_y,texto,5,5,c_red,c_black,scala,scala,0);
draw_set_font(fnt_menu);