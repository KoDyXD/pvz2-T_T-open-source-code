/// @description Insert description here
if place_meeting(x,y,obj_click) and !place_meeting(x,y,editor_menu_oleadas_boton_grupos_existente) and !instance_exists(editor_menu_oleadas_grupos_debug) and !place_meeting(x,y,editor_menu_oleadas_boton_grupos_crear)
{
	agrandar = true;
}
else if !place_meeting(x,y,obj_click)
{
	agrandar = false;
}

if agrandar == true
{
	if image_xscale < 1.5
	{
		depth = -5;
		image_yscale += 0.1;
		image_xscale += 0.1;
	}
}
else if image_xscale > 1 and !instance_exists(editor_menu_oleadas_grupos_debug)
{
	depth = -4;
	image_yscale -= 0.1;
	image_xscale -= 0.1;
}

if grupo_datos[1] == "zombi"
{
	if grupo_datos[4] == "zombi_tut_basico" and dibujar != 0 {dibujar = 0;}
	if grupo_datos[4] == "zombi_tut_caracono" and dibujar != 1 {dibujar = 1;}
	if grupo_datos[4] == "zombi_tut_caracubo" and dibujar != 2 {dibujar = 2;}
	if grupo_datos[4] == "zombi_egipto_basico" and dibujar != 3 {dibujar = 3;}
	if grupo_datos[4] == "zombi_egipto_caracono" and dibujar != 4 {dibujar = 4;}
	if grupo_datos[4] == "zombi_egipto_caracubo" and dibujar != 5 {dibujar = 5;}
	if grupo_datos[4] == "zombi_egipto_ra" and dibujar != 6 {dibujar = 6;}
	if grupo_datos[4] == "zombi_egipto_camello" and dibujar != 7 {dibujar = 7;}
	if grupo_datos[4] == "zombi_egipto_explorador" and dibujar != 8 {dibujar = 8;}
	if grupo_datos[4] == "zombi_egipto_anubis" and dibujar != 9 {dibujar = 9;}
	if grupo_datos[4] == "zombi_egipto_faraon" and dibujar != 10 {dibujar = 10;}
	if grupo_datos[4] == "zombi_egipto_zombistein" and dibujar != 11 {dibujar = 11;}
	if grupo_datos[4] == "zombi_egipto_zombidito" and dibujar != 12 {dibujar = 12;}
	if grupo_datos[4] == "zombi_pirata_basico" and dibujar != 13 {dibujar = 13;}
	if grupo_datos[4] == "zombi_pirata_caracono" and dibujar != 14 {dibujar = 14;}
	if grupo_datos[4] == "zombi_pirata_caracubo" and dibujar != 15 {dibujar = 15;}
	if grupo_datos[4] == "zombi_pirata_gaviotero" and dibujar != 16 {dibujar = 16;}
	if grupo_datos[4] == "zombi_pirata_espadachin" and dibujar != 17 {dibujar = 17;}
	if grupo_datos[4] == "zombi_pirata_barrilero" and dibujar != 18 {dibujar = 18;}
	if grupo_datos[4] == "zombi_pirata_canon" and dibujar != 19 {dibujar = 19;}
	if grupo_datos[4] == "zombi_pirata_capitan" and dibujar != 20 {dibujar = 20;}
	if grupo_datos[4] == "zombi_pirata_zombidito" and dibujar != 21 {dibujar = 21;}
	if grupo_datos[4] == "zombi_pirata_zombistein" and dibujar != 22 {dibujar = 22;}
}
if grupo_datos[1] == "planta"
{
	if grupo_datos[4] == "planta_lanzaguisantes" and dibujar != 0 {dibujar = 0;}
	if grupo_datos[4] == "planta_girasol" and dibujar != 1 {dibujar = 1;}
	if grupo_datos[4] == "planta_nuez" and dibujar != 2 {dibujar = 2;}
	if grupo_datos[4] == "planta_papapum" and dibujar != 3 {dibujar = 3;}
	if grupo_datos[4] == "planta_coltapulta" and dibujar != 4 {dibujar = 4;}
	if grupo_datos[4] == "planta_boomerang" and dibujar != 5 {dibujar = 5;}
	if grupo_datos[4] == "planta_hielaguisantes" and dibujar != 6 {dibujar = 6;}
	if grupo_datos[4] == "planta_comepiedras" and dibujar != 7 {dibujar = 7;}
	if grupo_datos[4] == "planta_bonkchoy" and dibujar != 8 {dibujar = 8;}
	if grupo_datos[4] == "planta_repetidora" and dibujar != 9 {dibujar = 9;}
	if grupo_datos[4] == "planta_birasol" and dibujar != 10 {dibujar = 10;}
	if grupo_datos[4] == "planta_bolos_nuez" and dibujar != 11 {dibujar = 11;}
	if grupo_datos[4] == "planta_bolos_explotonuez" and dibujar != 12 {dibujar = 12;}
	if grupo_datos[4] == "planta_bolos_giganuez" and dibujar != 13 {dibujar = 13;}
	if grupo_datos[4] == "planta_carnivora" and dibujar != 14 {dibujar = 14;}
	if grupo_datos[4] == "planta_lanzamaiz" and dibujar != 15 {dibujar = 15;}
	if grupo_datos[4] == "planta_frijuelle" and dibujar != 16 {dibujar = 16;}
	if grupo_datos[4] == "planta_pinchohierba" and dibujar != 17 {dibujar = 17;}
	if grupo_datos[4] == "planta_cococanon" and dibujar != 18 {dibujar = 18;}
	if grupo_datos[4] == "planta_bocadedragon" and dibujar != 19 {dibujar = 19;}
	if grupo_datos[4] == "planta_petacereza" and dibujar != 20 {dibujar = 20;}
}