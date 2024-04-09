/// @description eventos al crearse
image_speed = 0;
image_index = fondo;
depth = -5;

//disponible = false;			//controla si la semilla ya esta disponible
//disp_especial = true;		//controla si la semilla ya esta disponible en casos especiales
//restaurar = false;			//reinicia la semilla
//mover = 2;					//movimiento de la semilla en cinta transportadora
//sol = 100;					//costo en soles
//tipo = 4;					//sprite que usara
//guia = guia_lanzaguisantes	//que guia detectara y creara
//inst = noone;	//guia
//tap = false;	//accion tras plantar la planta
recarga = recarga*60;				//tiempo de recarga en alarma

if aumentar = 0	//recargar semilla
{
	alarm_set(0,recarga);
}
else
{
	alarm_set(0,1);
}
if instance_exists(spawn_UB_debug)	//si esta en un nivel de ultimo batallon
{
	alarm_set(0,1);			//recarga instantanea
	global.semillas += 1;	//aumentar el limite semillas en cinta transportadora
	sol = 0;				//costo en soles
}

/*IMPORTANTE

Este objeto es un padre, esto significa que todos los objetos hijos que tenga tendran los mismos eventos
a excepcion del create.
Si este objeto es eliminado todos los semilleros dejaran de funcionar