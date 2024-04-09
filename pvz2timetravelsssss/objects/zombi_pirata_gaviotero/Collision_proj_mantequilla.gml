// @description choque con guisantes
var i = instance_place(x,y,proj_mantequilla);
if (i != noone)
{
	if i.idr = id
	{
			//iluminar zombi
			brillo = 0.13;
			audio_play_sound(choose(sound_zombi_gaviota_morir_1,sound_zombi_gaviota_morir_2),5,0);
			audio_play_sound(choose(sound_coltapulta_impacto_1,sound_coltapulta_impacto_2),1,0);
		var i = instance_place(x+45,y,casillas_no_pasarela);
		if (i != noone)
		{
			instance_create_layer(x,(y div 186)*186+166,"npcs",efect_caer_agua);
			instance_destroy();
		}
		else
		{
		with(i)
		{
			var j = instance_create_layer(x,y,"npcs",efecto_choque_mantequilla);
			j.depth = depth;
			instance_destroy();
		}
		var _mo = instance_create_depth(x,y,0,zombi_tut_morir);
		with(_mo)
		{
			sprite_index = other.sprite_index;
			depth = other.depth;
			skeleton_animation_set("basico/muerte mantequilla");
			skeleton_skin_set("basico/muerto mantequilla");
		}
		var i = instance_create_layer(x-1.55,y-72.4,"npcs",efect_zombi_restos);
		with(i)
		{
			depth = instance_depth_proj(other.y-35);
			x1 = x;
			y1 = y;
			y2 = other.y-35;
			sombra_y = other.y-35;
			sprite_index = other.sprite_index;
			skeleton_skin_set("restos/cabeza");
		}
		instance_destroy();
		}
	}
}