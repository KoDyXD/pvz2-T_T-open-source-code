/// @description planta guia
if !instance_place(x,y,pala_usable) and click = true
{
	if instance_exists(guia_debug)
	{
		with(guia_debug)
		{
			if global.mouse = true
			{
				with(inst)
				{
					inst = noone;
					restaurar = false;
					alarm_set(0,1);
				}
				instance_destroy();
			}
		}
	}
	image_index = 1;
	alarm_set(0,2);
	audio_play_sound(sound_pala_seleccionar,1,0);
	inst = instance_create_layer(mouse_x,mouse_y,"hud",pala_usable);
}

if instance_exists(pala_usable) and click = false
{
	image_index = 0;
	click = true;
	instance_destroy(inst);
	inst = noone;
	global.pala = false;
}