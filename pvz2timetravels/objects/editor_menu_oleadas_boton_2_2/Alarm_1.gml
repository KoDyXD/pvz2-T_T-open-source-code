/// @description Crear los botones de los grupos de la oleada
	click = true;
	instance_destroy(editor_menu_oleadas_grupo_debug);
	
	var _yyy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2+125;
	
	if array_length(oleadas) <= 10 {_yy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2+125;}
	if array_length(oleadas) <= 20 and array_length(oleadas) > 10 {_yyy = camera_get_view_y(view_camera[0])+(camera_get_view_height(view_camera[0])/2)+62.5;}
	if array_length(oleadas) <= 30 and array_length(oleadas) > 20 {_yyy = camera_get_view_y(view_camera[0])+(camera_get_view_height(view_camera[0])/2)}
	if array_length(oleadas) <= 40 and array_length(oleadas) > 30 {_yyy = camera_get_view_y(view_camera[0])+(camera_get_view_height(view_camera[0])/2)-62.5;}
	if array_length(oleadas) <= 51 and array_length(oleadas) > 40 {_yyy = camera_get_view_y(view_camera[0])+(camera_get_view_height(view_camera[0])/2)-125;}
	
	var _x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2;
	var _array_oleadas = array_length(oleadas);
	if _array_oleadas > 1
	{
		var _xx = -1;
		var _yy = -1;
		
		for (var i = 1; i < _array_oleadas; ++i) {
			if _xx = 9 {_xx = -1; _yy += 1;}
		    _xx += 1;
			if _array_oleadas <= 10 {var _x2 = _x-(125*(_array_oleadas/2))+62.5;}else{var _x2 = _x-(125*(10/2))+62.5;}
			var _inst = instance_create_layer(_x2+125*_xx,(_yyy+125*_yy)+125,"hud",editor_menu_oleadas_boton_grupos_existente);	//boton de grupo de zombis creados
			_inst.grupo_datos = oleadas[i];
			_inst.padre = id;
			_inst.cual = i;
			if (i = _array_oleadas-1) and _array_oleadas <= 50
			{
				if _xx >= 9 {_xx = -1; _yy += 1;}
				_xx += 1;
				var _inst = instance_create_layer(_x2+125*_xx,(_yyy+125*_yy)+125,"hud",editor_menu_oleadas_boton_grupos_crear);	//boton para crear grupo de zombis
				_inst.padre = id;
				_inst.cual = cual;
			}
		}
	}
	else
	{
		var _inst = instance_create_layer(_x,_yyy,"hud",editor_menu_oleadas_boton_grupos_crear);
		_inst.padre = id;
		_inst.cual = cual;
	}

	//boton para cerrar ventana
	if !instance_exists(editor_menu_oleadas_boton_grupos_cerrar)
	{
		var _boton = instance_create_layer(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-150,"hud",editor_menu_oleadas_boton_grupos_cerrar);
		_boton.padre = id;
	}