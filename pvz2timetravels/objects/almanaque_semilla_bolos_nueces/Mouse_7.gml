/// @description crear descripcion
if !instance_exists(prev) and semilla = true and click2 == true
{
	audio_play_sound(sound_semillero_select,5,0);
	instance_destroy(prev_debug);
	var i = instance_create_depth(room_width/2+739,775,0,prev);
	with(i)
	{
		skeleton_animation_set("*1.7");
		image_xscale = 1.7;
		image_yscale = 1.7;
	}
	global.name = "Nuez de bolera";
	global.desc = texto;
	global.fondo = 1;
	
	global.stat1.valor = 25;
	global.stat2.valor = 5;
	global.stat3.valor = 300;
	scr_almanaque_stats(4,almanaque_stat_planta_ataque,500);
	scr_almanaque_stats(5,almanaque_stat_planta_rango,"Recto y en Zig Zag");
	scr_almanaque_stats(6,almanaque_stat_planta_random,0);
}