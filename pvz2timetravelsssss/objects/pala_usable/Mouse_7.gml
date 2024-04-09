/// @description Inserte aquí la descripción
var i = instance_place(x,y,oPlantaGeneral)
if i != noone
{
	if i.pala = true
	{
		if !place_meeting(x,y,pala_base)
		{
			with(i)
			{
				if pala = true
				{
					audio_play_sound(sound_pala_desplantar,1,0);
					instance_create_layer(x,y,"npcs",efect_tierra_plantar);
					global.pala = true;
					instance_destroy();
				}
			}
		}
	}
}