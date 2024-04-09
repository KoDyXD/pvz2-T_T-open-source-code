/// @description recolectar soles
if os_type = os_android
{
	if click = true and place_meeting(x,y,obj_click)
	{
		if !instance_exists(spawn_UB_debug)
		{
			speed = 0;	//detener el movimineto
			move_towards_point(sol_contador_solar.x,sol_contador_solar.y,vel);	//mover al contador
			global.soles += valor;		//aumentar soles
			image_alpha = 1;	//restaurar alpha
			desvanecer = false;	//no desaparecer sol
		}
		else
		{
			desvanecer = true;	//desaparecer sol
		}
		audio_play_sound(sound_sol,0,0);	//reproducior sonido
		skeleton_skin_set("amarillo");	//poner color en la normalidad
		click = false;	//desactivar click
		alarm_set(0,-1);	//desactivar la destruccion del sol
		mov = false;	//desactivar la animC
		rojo = false;	//no perimitir el sol rojo
		rojo2 = false;	//lo mismo de arriba xd
		inst = noone;	//vaciar la inst para que no lo siga
		caer = 0;	//hacer que el sol no cambie su Y
	}
}