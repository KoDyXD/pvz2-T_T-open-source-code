/// @description perder si no hay la planta
if !place_meeting(x,y,oPlantaGeneral) and planta = true and global.perder = false
{
	global.perder = true;
	planta = false;
}

if instance_exists(menu_perder) and planta = false
{
	menu_perder.frase = "Noh...\nLa...\nProtegizte...";
}