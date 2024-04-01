/// @description recibir daño
var i = instance_place(x,y,proj_fuegoxd);
if (i != noone)
{
	instance_destroy();
	var j = instance_create_layer(x,y,"npcs",planta_fuego);
	j.depth = depth;
}