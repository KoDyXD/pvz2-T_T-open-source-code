/// @description choque
var i = instance_place(x,y,proj_guisante);
if (i != noone)
{
	if escudo > 0 {escudo -= i.dano;}else{hp -= i.dano;}
	if escudo > 0 {audio_play_sound( choose( sound_impacto_cono_1, sound_impacto_cono_2), 1, 0);}else{audio_play_sound( choose( sound_impacto_1, sound_impacto_2, sound_impacto_3), 1, 0);}
		//iluminar zombi
		brillo = 0.13;
		with(i) {var j = instance_create_layer(x,y,"npcs",efecto_choque_guisante);j.depth = depth; instance_destroy();}
}