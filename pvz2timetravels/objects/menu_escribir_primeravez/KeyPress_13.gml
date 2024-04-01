/// @description confirmar nombre
var i = combinacion+".ini"
var ii = string_copy(combinacion,1,1);
var iii = string_copy(combinacion,string_length(combinacion,),1);

if string_length(combinacion) > 0
{
	if ii != " " and iii != " "
	{
		if string_pos("#",combinacion) = 0 and string_pos(chr(34),combinacion) = 0 and string_pos(chr(92),combinacion) = 0
		{
			global.usuarios[0] = i;
			global.nombre = i;
			global.primeravez2 = true;
			global.perfiles += 1;
			ini_open("general.ini");
			ini_write_string("usuarios","slot1",global.usuarios[0]);
			ini_write_string("usuarios","nombre",global.nombre);
			ini_write_string("primera","vez",global.primeravez2);
			ini_write_real("usuarios","perfiles",global.perfiles);
			ini_close();

			ini_open(global.nombre);
			ini_write_string("debug","debug","Hey sientete libre de modificar lo que quieras :p /Hey feel free to modify whatever you want :p");
			ini_close();

			menu_boton_creditos.click2 = false;
			menu_boton_iniciar_salir.click2 = false;
			menu_boton_perfil.click2 = false;
			menu_boton_noticias.click2 = false;
			if instance_exists(menu_boton_graficos_pantalla_completa) {menu_boton_graficos_pantalla_completa.click2 = false;}
			instance_destroy(menu_boton_perfil_primeravez_aceptar);
			instance_destroy();
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
		instance_create_depth(0,yy-40,depth-1,menu_adv_noespacios);
		audio_play_sound(sound_menu_boton_perfil_negar,5,0);
	}
}
else
{
	instance_create_depth(0,yy-40,depth-1,menu_adv_sintexto);
	audio_play_sound(sound_menu_boton_perfil_negar,5,0);
}