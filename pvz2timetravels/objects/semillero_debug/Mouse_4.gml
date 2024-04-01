/// @description seleccionar semilla
if global.soles >= sol and disponible = true and disp_especial = true// and !instance_exists(pala_usable)
{
	restaurar = true;
	disponible = false;
	audio_play_sound(sound_semillero_select,5,0);
	if instance_exists(guia_debug) {var _i = guia_debug.inst; _i.alarm[0] = 1; _i.restaurar = false; instance_destroy(guia_debug);}
	if instance_exists(pala_usable)
	{
		instance_destroy(pala_usable);
		pala_base.image_index = 0;
		pala_base.click = true;
		global.pala = false;
	}
	inst = instance_create_depth(mouse_x, mouse_y,-5,guia);
	inst.sol = sol;
	inst.inst = id;	
}
else
{
	if inst = noone {audio_play_sound(sound_semillero_insuficiente,5,0);}else{audio_play_sound(sound_semillero_select,5,0);}
}