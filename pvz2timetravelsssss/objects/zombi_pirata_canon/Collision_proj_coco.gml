// @description choque con guisantes
var i = instance_place(x,y,proj_coco);
if (i != noone)
{
		//iluminar zombi
		brillo = 0.13;
	hp = 0;
	with(i)
	{
		var j = instance_create_layer(x,y,"npcs",efecto_choque_guisante);
		j.depth = depth;
		instance_create_layer(x,y+100,"npcs",expl_cococanon);
		instance_destroy();
	}
	producir = false;
	morir = true;
}