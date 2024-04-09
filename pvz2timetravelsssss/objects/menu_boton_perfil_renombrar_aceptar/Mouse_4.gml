/// @description Inserte aquí la descripción
with(inst)
{
	var i = combinacion+".ini";
	var ii = string_copy(combinacion,1,1);
	var iii = string_copy(combinacion,string_length(combinacion,),1);
	
	if string_length(combinacion) > 0
	{
		if ii != " " and iii != " "
		{
			if i != global.usuarios[0] and i != global.usuarios[1] and i != global.usuarios[2] and i != global.usuarios[3]
			{
				if string_pos("#",combinacion) = 0 and string_pos(chr(34),combinacion) = 0 and string_pos(chr(92),combinacion) = 0
				{
					var aa = global.usuarios[cual];
					if global.nombre = global.usuarios[cual]
					{
						global.usuarios[cual] = i;
						global.nombre = global.usuarios[cual];
					}
					global.usuarios[cual] = i;
	
					var j = "slot"+string(cual+1);
					ini_open("general.ini");
					ini_write_string("usuarios",j,global.usuarios[cual]);
					ini_write_string("usuarios","nombre",global.nombre);
					ini_close();

					file_rename(aa,global.usuarios[cual]);
		
					instance_destroy(menu_escribir_renombrar);
					instance_destroy(menu_boton_perfil_renombrar_cancelar);
					instance_destroy(menu_boton_perfil_renombrar_aceptar);
					menu_boton_perfil.click2 = false;
					menu_boton_perfil_cambiar.click2 = false;
					menu_boton_perfil_renombrar.click2 = false;
					menu_boton_perfil_renombrar.image_index = 0;
					menu_boton_perfil_eliminar.click2 = false;
					menu_boton_perfil_cerrar.click2 = false;
					if instance_exists(menu_boton_perfil_crear) {menu_boton_perfil_crear.click2 = false;}
					audio_play_sound(sound_menu_boton_perfil_aceptar,5,0);
					if os_type = os_android {keyboard_virtual_hide();}
				}
				else
				{
					instance_create_depth(0,yy-40,depth-1,menu_adv_caracter);
					audio_play_sound(sound_menu_boton_perfil_negar,5,0);
				}
			}
			else
			{
				instance_create_depth(0,yy-40,depth-1,menu_adv_repetido);
				audio_play_sound(sound_menu_boton_perfil_negar,5,0);
			}
		}
		else
		{
			instance_create_depth(0,yy-40,depth-1,menu_adv_noespacios);
			audio_play_sound(sound_menu_boton_perfil_negar,5,0);
		}
	}
	else
	{
		instance_create_depth(0,yy-40,depth-1,menu_adv_sintexto);
		audio_play_sound(sound_menu_boton_perfil_negar,5,0);
	}
}