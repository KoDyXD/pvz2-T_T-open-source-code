/// @description crear descripcion
if !instance_exists(prev) and semilla = true and click2 == true
{
	audio_play_sound(sound_semillero_select,5,0);
	instance_destroy(prev_debug);
	var i = instance_create_depth(room_width/2+739,775,0,prev);
	i.image_xscale = 1.7;
	i.image_yscale = 1.7;
	global.name = "Nuez";
	global.desc = texto;
	global.fondo = 0;
	
	global.stat1.valor = 50;
	global.stat2.valor = 20;
	global.stat3.valor = 4000;
	scr_almanaque_stats(4,almanaque_stat_planta_random,0);
	scr_almanaque_stats(5,almanaque_stat_planta_random,0);
	scr_almanaque_stats(6,almanaque_stat_planta_random,0);
}