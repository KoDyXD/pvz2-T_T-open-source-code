/// @description eventos
depth = -8;

randomize();
var i = irandom_range(1,15);	//seleccionar la nuez a crear
if i <= 6
{
	planta = planta_bolos_nuez;
}
else if i <= 11
{
	planta = planta_bolos_explotonuez;
}
else
{
	planta = planta_bolos_giganuez;
}

alarm_set(0,2);	//alarma que evita que la planta se deselecciona

limite = room_width;	//hasta donde se plantara

skeleton_animation_set("tranquilo3");
skeleton_skin_set("normal");