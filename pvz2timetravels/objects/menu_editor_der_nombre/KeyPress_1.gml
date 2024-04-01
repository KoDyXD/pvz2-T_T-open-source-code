/// @description guardar el nombre con cada tecleada
if instance_exists(padre)
{
	if keyboard_check_pressed(20)
	{
		if mayus = false{mayus = true;}else{mayus = false;}
	}

	ini_open(padre.cual);
	var _nombre = ini_read_string("info","nombre","Nivel Nuevo");
	if padre.nivel_info[0] != _nombre
	{
		ini_write_string("info","nombre",padre.nivel_info[0]);
	}
	ini_close();
}