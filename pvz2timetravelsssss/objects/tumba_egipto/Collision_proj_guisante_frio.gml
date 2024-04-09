// @description choque con guisantes
var i = instance_place(x,y,proj_guisante_frio);
if (i != noone) and skeleton_animation_get() = "tranquilo" and alarm[0] = -1
{
		//iluminar zombi
		brillo = 0.13;
		audio_play_sound(choose(sound_hielaguisantes_impacto_1,sound_hielaguisantes_impacto_2,sound_hielaguisantes_impacto_3),1,0);
	hp -= i.dano;
	with(i) {var j = instance_create_layer(x,y,"npcs",efecto_choque_guisantefrio);j.depth = depth;instance_destroy();}
}