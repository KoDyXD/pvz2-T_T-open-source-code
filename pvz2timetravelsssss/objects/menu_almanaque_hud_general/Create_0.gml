/// @description Inserte aquí la descripción
var _x = room_height/display_get_height();
_x = display_get_width()*_x;
room_width = _x;

camera_set_view_size(view_camera[0],_x,room_height);

instance_create_depth((room_width/2)-800,1506,0,menu_boton_almanaque_plantas);
instance_create_depth((room_width/2)+800,1506,0,menu_boton_almanaque_zombis);

var i = instance_create_depth((room_width/2)-800,1100,0,prev_lanzaguisantes);
with(i)
{
	nivel_id_last = true;
	skeleton_animation_set("*1.7");
	image_xscale = 1.7;
	image_yscale = 1.7;
}

var ii = instance_create_depth((room_width/2)+832,1200,0,zombi_tipo_general);
with(ii)
{
	image_xscale = 1.7;
	image_yscale = 1.7;
}