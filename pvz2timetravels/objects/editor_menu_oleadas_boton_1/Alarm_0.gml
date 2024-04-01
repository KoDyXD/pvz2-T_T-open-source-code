/// @description Insert description here
xx = -1;
yy = -1;

_fuego = 0;

	var _x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2;
	var _yy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2+250;
	
	if editor_oleadas <= 10 {_yy = camera_get_view_y(view_camera[0])+(camera_get_view_height(view_camera[0])/2)+250;}
	if editor_oleadas <= 20 and editor_oleadas > 10 {_yy = camera_get_view_y(view_camera[0])+(camera_get_view_height(view_camera[0])/2)+125+62.5;}
	if editor_oleadas <= 30 and editor_oleadas > 20 {_yy = camera_get_view_y(view_camera[0])+(camera_get_view_height(view_camera[0])/2)+125;}
	if editor_oleadas <= 40 and editor_oleadas > 30 {_yy = camera_get_view_y(view_camera[0])+(camera_get_view_height(view_camera[0])/2)+62.5;;}
	if editor_oleadas <= 50 and editor_oleadas > 40 {_yy = camera_get_view_y(view_camera[0])+(camera_get_view_height(view_camera[0])/2);}

	instance_create_layer(_x,camera_get_view_y(view_camera[0])+240,"hud",editor_menu_oleadas_boton_2_1);

	//este loop permite identificar las oleadas con banderas
	for (var i = 0; i < editor_banderas; ++i) {
		_fuego[i] = abs(((editor_oleadas)/(i-editor_banderas)));
		if _fuego[i] = (editor_oleadas)/editor_banderas {_ajustar = true; _a = _fuego[i]}
	}

	//este loop solo ajusta las banderas si es necesario
	if _ajustar = true
	{
		for (var i = 0; i < array_length(_fuego); ++i) {
		    _fuego[i] = _a*(i+1);
		}
		_ajustar = false;
		_a = 0;
	}


//comenzar a crear el boton de cada oleada
for (var i = 0; i < editor_oleadas; ++i) {
	if xx = 9 {xx = -1; yy += 1;}
	xx += 1;

	for (var ii = 0; ii < array_length(_fuego); ++ii) {
		if _fuego[ii] == i+1 {identificar = true;}
	}

	if editor_oleadas <= 10 {var _x2 = _x-(125*(editor_oleadas/2))+62.5;}else{var _x2 = _x-(125*(10/2))+62.5;}
	
	var iii = instance_create_layer(_x2+125*xx,_yy+125*yy,"hud",editor_menu_oleadas_boton_2_2);
	iii.cual = i+1;
	if identificar == true
	{
		iii.masiva = true;
		identificar = false;
	}
}