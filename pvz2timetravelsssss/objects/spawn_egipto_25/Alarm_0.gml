/// @description crear semillas aleatorias
var _x = camera_get_view_x(view_camera[0])+150;
var _y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])+200;

if instance_exists(menu_boton_pausar)
{
	generar = true;
	var _cual = irandom_range(0,20);
	if _cual <= 7
	{
		if instance_number(planta_hielaguisantes)+instance_number(semillero_hielaguisantes) < 4
		{
			var i = instance_create_depth(_x,_y,-4,semillero_hielaguisantes);
			i.sol = 0;
		}
		else
		{
			if global.semillas <= 7
			{
				alarm_set(0,1);
			}	
		}
	}
	else
	{
		if _cual <= 11
		{
			if instance_number(planta_repetidora)+instance_number(semillero_repetidora) < 5
			{
				var i = instance_create_depth(_x,_y,-4,semillero_repetidora);
				i.sol = 0;
			}
			else
			{
				if global.semillas <= 7
				{
					alarm_set(0,1);
				}	
			}
		}
		else
		{
			if _cual <= 16
			{
				if instance_number(planta_boomerang)+instance_number(semillero_boomerang) < 3
				{
					var i = instance_create_depth(_x,_y,-4,semillero_boomerang);
					i.sol = 0;
				}
				else
				{
					if global.semillas <= 7
					{
						alarm_set(0,1);
					}	
				}
			}
			else
			{
				if instance_number(planta_nuez)+instance_number(semillero_nuez) < 8
				{
					var i = instance_create_depth(_x,_y,-4,semillero_nuez);
					i.sol = 0;
				}
				else
				{
					if global.semillas <= 7 
					{
						alarm_set(0,1);
					}	
				}
			}
		}
	}
}