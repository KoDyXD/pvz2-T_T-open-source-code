/// @description crear perfil
if click2 = false
{
	image_index = 1;
	menu_boton_perfil.click2 = true;
	menu_boton_perfil_cambiar.click2 = true;
	menu_boton_perfil_renombrar.click2 = true;
	menu_boton_perfil_eliminar.click2 = true;
	menu_boton_perfil_cerrar.click2 = true;
	if instance_exists(menu_boton_perfil_crear) {menu_boton_perfil_crear.click2 = true;}
	var i = instance_create_depth(0,0,0,menu_escribir_nuevo);
	i.cual = cual;
	if cual = 0 {i.combinacion = "USUARIO DAVE";}
	if cual = 1 {i.combinacion = "USUARIO DAVE 2";}
	if cual = 2 {i.combinacion = "USUARIO DAVE 3";}
	if cual = 3 {i.combinacion = "USUARIO DAVE 4";}
	var a = instance_create_depth(room_width/2-140,855,0,menu_boton_perfil_nuevo_aceptar);
	a.inst = i;
	a.cual = cual;
	instance_create_depth(room_width/2+140,855,0,menu_boton_perfil_nuevo_cancelar);	
	audio_play_sound(sound_menu_boton_perfil_opciones,5,0);
}