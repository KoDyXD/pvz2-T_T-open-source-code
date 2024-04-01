/// @description cambiar nombre
if click2 = false
{
	image_index = 1;
	menu_boton_perfil.click2 = true;
	menu_boton_perfil_cambiar.click2 = true;
	menu_boton_perfil_renombrar.click2 = true;
	menu_boton_perfil_eliminar.click2 = true;
	menu_boton_perfil_cerrar.click2 = true;
	if instance_exists(menu_boton_perfil_crear) {menu_boton_perfil_crear.click2 = true;}
	var j = global.usuarios[cual];	//recoger nombre del usuario
	j = string_replace(j,".ini","");	//quitar el .ini
	var i = instance_create_depth(0,0,0,menu_escribir_renombrar);
	i.combinacion = j;	//asignarle el nombre del usuario
	i.cual = cual;	//a que perfil modificara
	var a = instance_create_depth(room_width/2-140,855,0,menu_boton_perfil_renombrar_aceptar);
	a.inst = i;
	instance_create_depth(room_width/2+140,855,0,menu_boton_perfil_renombrar_cancelar);
	audio_play_sound(sound_menu_boton_perfil_opciones,5,0);
}