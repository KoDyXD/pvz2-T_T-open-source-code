/// @description confirmar nombre
var i = combinacion+".ini"
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
				global.usuarios[cual] = i;
				global.perfiles += 1;
	
				ini_open(global.usuarios[cual]);
				ini_write_string("debug","debug","Hey sientete libre de modificar lo que quieras :p /Hey feel free to modify whatever you want :p");
				ini_close();

				var j = "slot"+string(cual+1);
				ini_open("general.ini");
				ini_write_string("usuarios",j,global.usuarios[cual]);
				ini_write_real("usuarios","perfiles",global.perfiles);
				ini_close();

				instance_destroy(menu_boton_perfil_nuevo_aceptar);
				instance_destroy(menu_boton_perfil_nuevo_cancelar);
				instance_destroy();
				instance_destroy(menu_boton_perfil_cambiar);
				instance_destroy(menu_boton_perfil_renombrar);
				instance_destroy(menu_boton_perfil_eliminar);
				instance_destroy(menu_boton_perfil_crear);
				menu_boton_perfil.click2 = false;
				menu_boton_perfil_cerrar.click2 = false;
				scr_perfiles(global.usuarios[0],global.usuarios[1],global.usuarios[2],global.usuarios[3]);
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