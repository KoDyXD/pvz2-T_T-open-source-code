/// @description Insert description here
if instance_exists(menu_editor_izq_nivel_mover)
{
	y = menu_editor_izq_nivel_mover.y+ystart;
}

//crear archivo evitando que se repita el nombre
if click == true and alarm[0] = -1
{
	global.editor_nivel_cantidad[array_length(global.editor_nivel_cantidad)] = _nivel_nombre;
	global.editor_nivel_cant_tamano = array_length(global.editor_nivel_cantidad)-1;

	ini_open("general.ini");
	ini_write_real("Editor","lvl cantidad",global.editor_nivel_cant_tamano);
	for (var i = 0; i < array_length(global.editor_nivel_cantidad); ++i) {
		ini_write_string("Editor","lvleditor "+string(array_length(global.editor_nivel_cantidad)-1),string(global.editor_nivel_cantidad[i]));
	}
	ini_close();
	ini_open(_nivel_nombre);
	ini_write_string("debug","debug","ESTE ARCHIVO PUEDE QUEDAR DESACTUALIZADO ENTRE UPDATES");
	ini_write_string("info","nombre","Nivel nuevo");
	ini_write_string("info","desc","Nivel recien creado");
	ini_write_string("info","desc_level","Editor");

	//crear y guardar datos generales del nivel
	var _oleada_general = ["spr_patio_tutorial","musica_patiofrontal",1,1];
	var _list = ds_list_create();

	for (var i = 0; i < array_length(_oleada_general); ++i) {
	    ds_list_add(_list,_oleada_general[i]);
	}

	var _listaguardar = ds_list_write(_list);
	ini_write_string("editor_nivel_base","datos",_listaguardar);

	ds_list_destroy(_list);

	//crear y guardar datos de las oleadas
	var _oleada =
	[
		[0,"zombi",0,0,"nulo",1,1],
		[-1,"cesped",1],
		
	];

	var _list = ds_list_create();
	for (var i = 0; i < array_length(_oleada); ++i) {
	    ds_list_add(_list,_oleada[i]);
	}

	var _listaguardar = ds_list_write(_list);
	ini_write_string("editor_oleada_cual","oleadas",_listaguardar);
	ds_list_destroy(_list);

	ini_close();

	global.editor_nivel_elegido = _nivel_nombre;

	instance_destroy(menu_editor_izq_nivel_crear);
	instance_destroy(menu_editor_izq_nivel_cual);
	menu_editor_hud_general.alarm[0] = 1;
}