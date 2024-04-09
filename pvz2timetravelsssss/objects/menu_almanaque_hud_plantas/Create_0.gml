/// @description Inserte aquí la descripción
var _x = room_height/display_get_height();
_x = display_get_width()*_x;
room_width = _x;

camera_set_view_size(view_camera[0],_x,room_height);

depth = 0;

alarm_set(0,1);

global.fondo = 0;
global.name = "Lanzaguisantes";
global.desc = 1;
scr_almanaque_descripcion_planta();

//crear descripcion incial
instance_destroy(prev_debug);
var i = instance_create_depth(room_width/2+739,775,0,prev_lanzaguisantes);
i.nivel_id_last = true;
with(i)
{
	skeleton_animation_set("*1.7");
	image_xscale = 1.7;
	image_yscale = 1.7;
}

//stats permanentes
global.stat1 =  instance_create_depth(room_width/2+150,999,0,almanaque_stat_planta_costo);	//stat 1
global.stat2 = instance_create_depth(room_width/2+595,999,0,almanaque_stat_planta_recarga);	//stat 2
global.stat3 = instance_create_depth(room_width/2+1045,999,0,almanaque_stat_planta_vida);	//stat 3
global.stat4 = instance_create_depth(room_width/2+150,1159,0,almanaque_stat_planta_ataque);	//stat 4
global.stat5 = instance_create_depth(room_width/2+595,1159,0,almanaque_stat_planta_rango);	//stat 5
global.stat6 = instance_create_depth(room_width/2+1045,1159,0,almanaque_stat_planta_random);	//stat 6