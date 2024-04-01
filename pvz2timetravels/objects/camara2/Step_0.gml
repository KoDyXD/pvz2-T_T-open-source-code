/// @description Inserte aquí la descripción
if funcionar == true
{
	x -= velocidad;
		
	if velocidad > 7 {velocidad = 7;}
	if velocidad < -7 {velocidad = -7;}
	if x <= 1600 and velocidad >= -7 and columpio == 0 {velocidad -= 0.2;}
	if x >= 2200 and velocidad <= 7 {velocidad += 0.11;}
		
	if x >= 2200 and velocidad != 7 and alarm[0] = -1 {columpio += 1; alarm[0] = 120;}
	if (camera_get_view_x(view_camera[0]) <= 0) or (camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0]) <= 2500) {if columpio != 0 {instance_create_depth(0,0,0,nivel_ready_set_plant);}}
}

if !instance_exists(obj_transicion) and !instance_exists(menu_boton_nivel_continuar) and !instance_exists(oNivelTutorialSaltar) and alarm[2] = -1
{
	if intensidad < 1 and intensidad1 = false
	{
		intensidad += 0.03;
	}
	else if intensidad1 = false {intensidad1 = true; alarm_set(1,180);}
	if intensidad > 0 and intensidad1 = true and alarm[1] = -1
	{
		intensidad -= 0.03;
	}
}
