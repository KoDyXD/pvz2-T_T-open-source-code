/// @description eliminar perfil
if global.usuarios[cual] != noone and global.perfiles > 0
{
	global.perfiles -= 1;
	for (var i = 0; i < 4; ++i) {
		file_delete(global.usuarios[cual]);
		var ia = global.usuarios[cual];
		global.usuarios[cual] = noone;

		var _slot = "slot"+string(cual+1);
		ini_open("general.ini");
		ini_write_string("usuarios",_slot,noone);
		ini_write_real("usuarios","perfiles",global.perfiles);
		ini_close();

		if global.nombre = ia
		{
			for (var ii = 4; ii > 0; --ii) {
			    var j = ii-1;
				if global.usuarios[j] != noone
				{
					global.nombre = global.usuarios[j];
					ini_open("general.ini");
					ini_write_string("usuarios","nombre",global.nombre);
					ini_close();
					scr_perfil_extras(global.nombre);
					scr_perfil_niveles(global.nombre);
					scr_perfil_plantas(global.nombre);
					continue;
				}
			}
		}
		instance_destroy(menu_boton_perfil_eliminar_cancelar);
		instance_destroy(menu_boton_perfil_eliminar_aceptar);
		menu_boton_perfil.click2 = false;
		instance_destroy(menu_boton_perfil_cambiar);
		instance_destroy(menu_boton_perfil_renombrar);
		instance_destroy(menu_boton_perfil_eliminar);
		instance_destroy(menu_boton_perfil_crear);
		menu_boton_perfil_cerrar.click2 = false;
		scr_perfiles(global.usuarios[0],global.usuarios[1],global.usuarios[2],global.usuarios[3]);
	}
	audio_play_sound(sound_menu_boton_perfil_aceptar,5,0);
}
else
{
	audio_play_sound(sound_menu_boton_perfil_negar,5,0);
}