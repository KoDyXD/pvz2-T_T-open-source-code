// @description choque con guisantes
var i = instance_place(x,y,proj_boomerang);
if (i != noone) and ds_list_find_index(projs,i) = -1
{
	if i.cantidad < 3
	{
			//iluminar zombi
			brillo = 0.13;
		if escudo > 0 {var j = audio_play_sound(choose(sound_zombi_camello_caliza_choque_1,sound_zombi_camello_caliza_choque_2,sound_zombi_camello_caliza_choque_3), 1, 0); audio_sound_gain(j,0.5,0);}else{audio_play_sound(choose(sound_impacto_1,sound_impacto_2,sound_impacto_3),1,0);}
		if escudo > 0 {escudo -= i.dano;}else{hp -= i.dano;}
		i.cantidad += 1;
		ds_list_add(projs,i);
	}
}