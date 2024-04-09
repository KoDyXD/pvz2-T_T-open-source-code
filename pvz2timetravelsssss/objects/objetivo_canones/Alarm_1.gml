/// @description crear balas
var _lista = ds_list_create();
collision_rectangle_list(min_x*166,3*186,11*166,8*186,oPlantaGeneral,false,true,_lista,false);
var _cual = ds_list_find_value(_lista,irandom_range(0,ds_list_size(_lista)-1));

if !is_undefined(_cual) and instance_exists(_cual)
{
	audio_play_sound(choose(sound_zombi_garg_pirata_lanzar_1,sound_zombi_garg_pirata_lanzar_2),5,0);
	
	var _camX = (_cual.x div 166)*166+83;
	var _camY = (_cual.y div 186)*186+93;
	
	var _i = instance_create_layer(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])+250,_camY-372,"npcs",proj_bala_canon);

	_i.objetivo = _cual;
	_i.x1 = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])+250;	//punto x inicial
	_i.y1 = _camY-372;	//punto y inicial
	_i.x2 = _camX;	//punto x objetivo
	_i.y2 = _camY;	//punto y objetivo
}

ds_list_destroy(_lista);