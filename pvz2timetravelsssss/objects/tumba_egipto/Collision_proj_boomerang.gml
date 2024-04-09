// @description choque con guisantes
var i = instance_place(x,y,proj_boomerang);
if (i != noone) and ds_list_find_index(projs,i) = -1 and skeleton_animation_get() = "tranquilo" and alarm[0] = -1
{
	if i.cantidad < 3
	{
			//iluminar zombi
			brillo = 0.13;
			audio_play_sound( choose( sound_impacto_1, sound_impacto_2, sound_impacto_3), 1, 0);
		hp -= i.dano;
		i.cantidad += 1;
		ds_list_add(projs,i);
	}
}