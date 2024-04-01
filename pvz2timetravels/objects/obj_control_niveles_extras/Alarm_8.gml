/// @description ajustar camara
if !instance_exists(mund_espiral2)
{
	var _y = 1325;
	var _x = _y/display_get_height();
	_x = display_get_width()*_x;
	if instance_exists(nivel_editor_0_0)
	{
		if _x < 2525
		{
			_x = 2525;
			_y = _x/display_get_width();
			_y = display_get_height()*_y;
		}
	}
	camera_set_view_size(view_camera[0],_x,_y);
}
else
{
	if room_height <= camera_get_view_height(view_camera[0])
	{
		var _x = room_height/display_get_height();
		_x = display_get_width()*_x;
		
		camera_set_view_size(view_camera[0],_x,room_height);
	}
	else
	{
		var _y = room_width/display_get_width();
		_y = display_get_height()*_y;

		camera_set_view_size(view_camera[0],room_width,_y);
	}
	//reiniciar editor de niveles
	global.editor_nivel_base = [spr_patio_tutorial,musica_patiofrontal,1,1];

	//reiniciar oleada en la que se crearan los zombis en el modo editor
	global.editor_oleada_cual =
	[
		[0,"zombi",0,0,"nulo",1,1],
	];
}