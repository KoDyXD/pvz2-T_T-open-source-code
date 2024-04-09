// @description choque con guisantes
var i = instance_place(x,y,proj_bocadedragon);
if (i != noone) and ds_list_find_index(projs,i) = -1
{
		//iluminar zombi
		brillo = 0.13;
		audio_play_sound(choose(sound_impacto_1,sound_impacto_2,sound_impacto_3),1,0);
	if escudo > 0 {escudo -= i.dano;}else{hp -= i.dano;}
	anim_nada = true;
	anim_expl = true;
	alarm_set(3,2);
	if alarm[7] != -1 {alarm_set(7,1);}	//quitar relantizacion
	
	if loro = false
	{
		alarm_set(4,-1);
		loro = true;
		var _inst = instance_create_layer(x-72.8,y-220.5,"npcs",efect_zombi_loro_morir);
		_inst.depth = instance_depth_proj(y-35);
	}
	ds_list_add(projs,i);
}