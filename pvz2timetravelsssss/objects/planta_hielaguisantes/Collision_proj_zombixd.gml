/// @description recibir daño
var morder = instance_place(x,y,proj_zombixd);
if (morder != noone)
{
		//iluminar zombi
		image_blend = c_silver;
		alarm_set(5,10);
		audio_play_sound( choose( sound_comiendo_1, sound_comiendo_2, sound_comiendo_3), 2, 0);
	hp -= 50;
	with(morder) {instance_destroy();}
}