/// @description crear descripcion
if !instance_exists(prev) and semilla = true and click2 == true
{
	audio_play_sound(sound_semillero_select,5,0);
	instance_destroy(zombi_tipo_general);
	var i = instance_create_depth(room_width/2+749,835,0,prev);
	i.image_xscale = 1.4;
	i.image_yscale = 1.4;
	global.name = "Momia abanderado";
	global.fondo = 1;
	global.desc = texto;
	
	global.stat1.valor = "Alterado";
	global.stat2.valor = 400;
	global.stat3.valor = 0;
	scr_almanaque_stats(4,almanaque_stat_zombi_random,0);
	scr_almanaque_stats(5,almanaque_stat_zombi_random,0);
	scr_almanaque_stats(6,almanaque_stat_zombi_random,0);
}