/// @description crear los botones izquierdos de los niveles
global.editor_nivel_elegido = noone;
instance_destroy(menu_editor_izq_nivel_crear);
instance_destroy(menu_editor_izq_nivel_cual);

if array_length(global.editor_nivel_cantidad) > 1
{
	for (var i = 1; i < array_length(global.editor_nivel_cantidad); ++i) {
		var _index = 0;
		var _ini = instance_create_depth(608,428+340*(i-1),-1,menu_editor_izq_nivel_cual);	//crear boton del nivel
		if i mod 2 == 0	//si el numero de i es par
		{
			_index = 1;
		}
		if i mod 2 == 1	//si el numero de i es impar
		{
			_index = 0;
		}
		
		_ini.cual_numb = i;
		_ini.cual = global.editor_nivel_cantidad[i];
		_ini.image_index = _index;
		with(_ini)
		{
			ini_open(cual);
			nivel_info[0] = ini_read_string("info","nombre","Nivel nuevo");
			nivel_info[1] = ini_read_string("info","desc","Nivel recien creado");
			nivel_info[2] = ini_read_string("info","desc_level","Editor");
			ini_close();
		}
		if i >= array_length(global.editor_nivel_cantidad)-1	//crear boton para crear niveles
		{
			instance_create_depth(608,428+340*(i),-1,menu_editor_izq_nivel_crear);
		}
	}
}
else
{
	instance_create_depth(608,428,-1,menu_editor_izq_nivel_crear);	//crear boton para crear niveles
}
/*
instance_destroy(menu_editor_izq_nivel_mover);
instance_create_depth(0,0,0,menu_editor_izq_nivel_mover);	//crear el objeto para hacer scrolls vertical