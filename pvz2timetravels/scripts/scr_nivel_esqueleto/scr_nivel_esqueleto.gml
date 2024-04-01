///Todas las cosas generales del nivel en el evento Step
//La recompensa se debe colocar manualmente en el evento Step
if instance_exists(nivel_debug_xd)
{
	#region//adelantar oleadas si no hay zombis
	if adelantado = true and not instance_exists(zombi_tipo_general) and oleada < oleada_max+1
	{
		alarm_set(0,60);
		adelantado = false;
	}
	#endregion
	#region//guardar ubicacion del ultimo zombi
	if recompensa  = true and oleada >= oleada_max
	{
		global.xz = zombi_tipo_general.x;
		global.yz = zombi_tipo_general.y;
	}
	#endregion
	#region//has perdido
	if global.perder = true
	{
		instance_destroy(sol_spawn);
		instance_destroy();
	}
	#endregion
	#region//crear selector de semillas
	if instance_exists(camara) and global.selector = true and camara.sel = true
	{
		instance_create_layer((camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0]))-100,camera_get_view_y(view_camera[0])+100,"hud",menu_boton_pausar);
		instance_create_depth(camera_get_view_x(view_camera[0])+735,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])+700,-20,menu_selector);
		global.selector = false;
		camara.sel = false;
	}
	#endregion
	#region//activar nivel
	if activar = true and not instance_exists(camara) {alarm_set(1,1); activar = false;}
	#endregion
	#region//ajustar el tamano de la barra de progreso
	if menorar = true and aumentar < limite
	{
		if aumentar2 < partes
		{
			aumentar += 0.4;
			aumentar2 += 0.4;
		}
		else
		{
			menorar = false;
			partes = limite/oleada_max+1;
			aumentar2 = 0;
		}
	}
	#endregion
	#region//seleccionar musica
	if music = true
	{
		for (var i = 0; i < array_length(fuego); ++i) {
		    if fuego[i] = oleada {global.m_oleada = true; music = false;}else{music = false;}
		}
	}
	#endregion
}