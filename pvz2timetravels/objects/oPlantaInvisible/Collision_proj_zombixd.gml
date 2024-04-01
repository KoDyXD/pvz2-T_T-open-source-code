/// @description recibir daño
var i = instance_place(x,y,proj_zombixd);
if (i != noone)
{
		//iluminar zombi
		brillo = 0.13;
		if obj_control_niveles_extras.alarm[9] = -1
		{
			audio_play_sound(choose(sound_comiendo_1,sound_comiendo_2,sound_comiendo_3),2,0);
			 obj_control_niveles_extras.alarm[9] = 20;
		}
	hp -= i.dano;
	with(i) {instance_destroy();}
}