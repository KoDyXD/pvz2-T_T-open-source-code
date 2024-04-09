/// @description que hacer cuando lo pisa un zombi
if estado == "perder"
{
	if skeleton_animation_get() == "sin florecer idle"
	{
		skeleton_animation_set("perdiendo");
		image_index = 0;
	}
	if skeleton_animation_get() == "perdiendo" and image_index >= 34
	{
		skeleton_animation_set("perder idle");
		image_index = 0;
	}
	
	if instance_exists(menu_perder)
	{
		menu_perder.frase = "La...\nHe...\nPizadO...";
	}
}
if estado == "idle"
{
	if !collision_rectangle(x-23,y-50,x+23,y+50,oPlantaVisible,0,1) and collision_rectangle(x-23,y-50,x+23,y+50,zombi_tipo_tierra,0,1)
	{
		mask_index = spr_vacio;
		estado = "perder";
		global.perder = true;
	}
	if instance_exists(recom_sem_debug) and global.perder == false
	{
		estado = "ganar";
		mask_index = spr_vacio;
	}	
}
if estado == "ganar"
{
	if skeleton_animation_get() == "sin florecer idle" and image_index >= 49
	{
		skeleton_animation_set("florecer");
		image_index = 0;
	}
	if skeleton_animation_get() == "florecer" and image_index >= 70
	{
		skeleton_animation_set("florecido idle");
		image_index = 0;
	}
}