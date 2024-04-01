// @description choque con guisantes
var i = instance_place(x,y,planta_bolos_giganuez);
if (i != noone) and ds_list_find_index(projs,i) = -1 and i.alarm[1] = -1 and skeleton_animation_get() = "tranquilo" and alarm[0] = -1
{
		//iluminar zombi
		brillo = 0.13;
		audio_play_sound(sound_bolos_choque,5,0);
	i.aa = true;
	hp -= i.dano;
	ds_list_add(projs,i);
}