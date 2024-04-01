/// @description activar nivel
if global.editor_nivel_elegido != cual
{
	global.editor_nivel_elegido = cual;	//seleccionar el nivel
	
	//leer toda la info necesaria del nivel
	ini_open(cual);
	//cargar datos generales del nivel
	var _list = ds_list_create();
	ds_list_read(_list,ini_read_string("editor_nivel_base","datos",""));	//leer datos generales como cantidad de oleadas y banderas
	
	for (var i = 0; i < ds_list_size(_list); ++i) {
		nivel_base[i] = ds_list_find_value(_list,i);	//asignarle los datos de la ds_list a una variable normal
	}
	ds_list_destroy(_list);	//borrar la ds_list
	//cargar info del nivel
	nivel_info[0] = ini_read_string("info","nombre","Nivel nuevo");
	nivel_info[1] = ini_read_string("info","desc","Nivel recien creado");
	nivel_info[2] = ini_read_string("info","desc_level","Editor");
	
	//cargar datos de las oleadas
	var _lista = ds_list_create();
	ds_list_read(_lista,ini_read_string("editor_oleada_cual","oleadas",""));	//leer los datos de las oleadas
	
	for (var i = 0; i < ds_list_size(_lista); ++i) {
		oleada_cual[i] = ds_list_find_value(_lista,i);	//asignarle los datos de la ds_list a una variable normal
	}
	ds_list_destroy(_lista);
	ini_close();
	switch(nivel_base[0])	//escoger el patio correcto
	{
		case "spr_patio_editor":
			patio = 0;
		break;
		case "spr_patio_tutorial":
			patio = 1;
		break;
		case "spr_patio_egipto":
			patio = 2;
		break;
		case "spr_patio_pirata":
			patio = 3;
		break;
		case "spr_patio_vaquero":
			patio = 4;
		break;
		case "spr_patio_cuevas":
			patio = 5;
		break;
		case "spr_patio_medieval":
			patio = 6;
		break;
		case "spr_patio_selva":
			patio = 7;
		break;
		case "spr_patio_jurasico":
			patio = 8;
		break;
		case "spr_patio_playa":
			patio = 9;
		break;
		case "spr_patio_futuro":
			patio = 10;
		break;
		case "spr_patio_neon":
			patio = 11;
		break;
		case "spr_patio_roma":
			patio = 12;
		break;
	}
	switch(nivel_base[1])	//escoger la musica correcta
	{
		case "musica_patiofrontal":
			music_cual = "Patio frontal/Normal";
		break;
		case "musica_patiofrontal_clasico":
			music_cual = "Patio frontal/Clasico";
		break;
		case "musica_patiofrontal_UB":
			music_cual =  "Patio frontal/Normal";
		break;
		case "musica_egipto":
			music_cual = "Antiguo Egipto/Normal";
		break;
		case "musica_egipto_special_1":
			music_cual = "Antiguo Egipto/Demostration Minigame";
		break;
		case "musica_egipto_special_2":
			music_cual =  "Antiguo Egipto/Ultimate Battle";
		break;
		case "musica_pirata":
			music_cual = "Mares Piratas/Normal";
		break;
		case "musica_pirata_special_1":
			music_cual = "Mares Piratas/Demostration Minigame";
		break;
		case "musica_pirata_special_2":
			music_cual = "Mares Piratas/Ultimate Battle";
		break;
		case "musica_vaquero":
			music_cual = "Salvaje Oeste/Normal";
		break;
		case "musica_vaquero_special_1":
			music_cual = "Salvaje Oeste/Demostration Minigame";
		break;
		case "musica_vaquero_special_2":
			music_cual = "Salvaje Oeste/Ultimate Battle";
		break;
		case "musica_cuevas":
			music_cual = "Cuevas Congeladas/Normal";
		break;
		case "musica_cuevas_special_1":
			music_cual = "Cuevas Congeladas/Demostration Minigame";
		break;
		case "musica_cuevas_special_2":
			music_cual = "Cuevas Congeladas/Ultimate Battle";
		break;
		case "musica_medieval":
			music_cual = "Edad Oscura/Normal";
		break;
		case "musica_medieval_special_1":
			music_cual = "Edad Oscura/Demostration Minigame";
		break;
		case "musica_medieval_special_2":
			music_cual = "Edad Oscura/Ultimate Battle";
		break;
		case "musica_selva":
			music_cual = "Ciudad Perdida/Normal";
		break;
		case "musica_selva_special_1":
			music_cual = "Ciudad Perdida/Demostration Minigame";
		break;
		case "musica_selva_special_2":
			music_cual = "Ciudad Perdida/Ultimate Battle";
		break;
		case "musica_jurasico":
			music_cual = "Pantano del Jurasico/Normal";
		break;
		case "musica_jurasico_special_1":
			music_cual = "Pantano del Jurasico/Demostration Minigame";
		break;
		case "musica_jurasico_special_2":
			music_cual = "Pantano del Jurasico/Ultimate Battle";
		break;
		case "musica_playa":
			music_cual = "Playa de la Gran Ola/Normal";
		break;
		case "musica_playa_special_2":
			music_cual = "Playa de la Gran Ola/Ultimate Battle";
		break;
		case "musica_futuro":
			music_cual = "Futuro Lejano/Normal";
		break;
		case "musica_futuro_special_1":
			music_cual = "Futuro Lejano/Demostration Minigame";
		break;
		case "musica_futuro_special_2":
			music_cual = "Futuro Lejano/Ultimate Battle";
		break;
		case "musica_moderno":
			music_cual = "Tiempos Modernos/Normal";
		break;
		case "musica_moderno_special_1":
			music_cual = "Tiempos Modernos/Demostration Minigame";
		break;
		case "musica_moderno_special_2":
			music_cual = "Tiempos Modernos/Ultimate Battle";
		break;
		case "musica_neon":
			music_cual = "Vueltacasete de Neon/Normal";
		break;
	}
}