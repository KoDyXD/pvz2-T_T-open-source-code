/// @description perder si no hay la planta
if !place_meeting(x,y,oPlantaGeneral) and !place_meeting(x,y,tumba_egipto)
{
	instance_create_layer(x,y,"npcs",planta);
	instance_destroy();
}