/// @description comprobaciones
#region//comprobar si ya se planto una planta
if comenzar = true
{
	if instance_number(oPlantaGeneral) <= 0
	{
		instance_create_layer(0,0,"hud", sol_spawn);
		alarm_set(0,1800);
		comenzar = false;
		if instance_exists(semillero_debug) {semillero_debug.disp_especial = true;}
	}
	else
	{
		if instance_exists(semillero_debug) {semillero_debug.disp_especial = false;}
	}
}
#endregion
#region//crear recompensa
if recompensa = true and not instance_exists(zombi_tipo_general)
{
	global.nivel_cual = nivel_tutorial_1_4;	//siguiente nivel
	if global.trucos == false	//los trucos estan desactivados
	{
		if global.nivel_tutorial[3] = false	//si es la primera vez que se completa el nivel
		{
			//guardar el progreso del nivel
			global.cuentaniveles += 1;
			global.nivel_tutorial[3] = true;
			ini_open(global.nombre);
			ini_write_real("Nivel","completados",global.cuentaniveles);
			ini_write_real("Nivel","tut_1_3", global.nivel_tutorial[3]);
			ini_close();
			instance_create_layer(global.xz, global.yz, "hud", recom_sem_nuez);
		}
		else	//si el nivel ya habia sido completado
		{
			instance_create_layer(global.xz, global.yz, "hud", recom_monedas);
		}
	}
	else	//los trucos estan activos
	{
		instance_create_layer(global.xz, global.yz, "hud", recom_monedas);
	}
	if instance_exists(semillero_debug) {semillero_debug.disp_especial = false;}	//desactivar la recarga de las semillas
	instance_destroy(menu_boton_pausar);	//destruir el boton de pausa
	recompensa = false;
}
#endregion

scr_nivel_esqueleto();	//cosas que son iguales en casi todos los niveles