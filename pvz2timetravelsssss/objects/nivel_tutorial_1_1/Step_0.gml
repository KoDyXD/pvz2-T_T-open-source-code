/// @description comprobaciones
#region//comprobar si ya se planto una planta
if comenzar = true and instance_number(oPlantaGeneral) >= 1
{
	instance_create_layer(0,0,"casillas", sol_spawn);
	alarm_set(0,120);
	comenzar = false;
}
#endregion
#region//crear recompensa
if recompensa = true and not instance_exists(zombi_tipo_general)
{
	global.nivel_cual = nivel_tutorial_1_2;	//siguiente nivel
	if global.trucos == false	//los trucos estan desactivados
	{
		if global.nivel_tutorial[1] = false	//si es la primera vez que se completa el nivel
		{
			//guardar el progreso del nivel
			global.cuentaniveles += 1;
			global.nivel_tutorial[1] = true;
			ini_open(global.nombre);
			ini_write_real("Nivel","completados",global.cuentaniveles);
			ini_write_real("Nivel","tut_1_1", global.nivel_tutorial[1]);
			ini_close();
			instance_create_layer(global.xz, global.yz, "hud", recom_sem_girasol);
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
	//guardar el progreso del nivel
	global.nivel_tutorial[1] = true;
}
#endregion

scr_nivel_esqueleto();	//cosas que son iguales en casi todos los niveles