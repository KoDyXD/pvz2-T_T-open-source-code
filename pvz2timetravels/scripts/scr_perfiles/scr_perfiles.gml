// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_perfiles(slot1,slot2,slot3,slot4){
	var _x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2;
	//perfil 1
	if slot1 != noone
	{
		var i = instance_create_depth(_x-651.5,292,0,menu_boton_perfil_cambiar);
		i.cual = 0;
		var i = instance_create_depth(_x-651.5,414,0,menu_boton_perfil_renombrar);
		i.cual = 0;
		var i = instance_create_depth(_x-651.5,538,0,menu_boton_perfil_eliminar);
		i.cual = 0;
	}
	else
	{
		var i = instance_create_depth(_x-393.75,415.25,0,menu_boton_perfil_crear);
		i.cual = 0;
	}
	//perfil 2
	if slot2 != noone
	{
		var i = instance_create_depth(_x+136,292,0,menu_boton_perfil_cambiar);
		i.cual = 1;
		var i = instance_create_depth(_x+136,414,0,menu_boton_perfil_renombrar);
		i.cual = 1;
		var i = instance_create_depth(_x+136,538,0,menu_boton_perfil_eliminar);
		i.cual = 1;
	}
	else
	{
		var i = instance_create_depth(_x+393.5,415.25,0,menu_boton_perfil_crear);
		i.cual = 1;
	}
	//perfil 3
	if slot3 != noone
	{
		var i = instance_create_depth(_x-651.5,786.5,0,menu_boton_perfil_cambiar);
		i.cual = 2;
		var i = instance_create_depth(_x-651.5,908.5,0,menu_boton_perfil_renombrar);
		i.cual = 2;
		var i = instance_create_depth(_x-651.5,1030.5,0,menu_boton_perfil_eliminar);
		i.cual = 2;
	}
	else
	{
		var i = instance_create_depth(_x-393.75,909.75,0,menu_boton_perfil_crear);
		i.cual = 2;
	}
	//perfil 4
	if slot4 != noone
	{
		var i = instance_create_depth(_x+136,786.5,0,menu_boton_perfil_cambiar);
		i.cual = 3;
		var i = instance_create_depth(_x+136,908.5,0,menu_boton_perfil_renombrar);
		i.cual = 3;
		var i = instance_create_depth(_x+136,1030.5,0,menu_boton_perfil_eliminar);
		i.cual = 3;
	}
	else
	{
		var i = instance_create_depth(_x+393.5,909.75,0,menu_boton_perfil_crear);
		i.cual = 3;
	}
}