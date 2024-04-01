/// @description mover proyectil
depth = instance_depth_proj(y);
if recorrer < recorrido
{
	recorrer++;
}
else
{
	recorrer = recorrido;
}
x = lerp(x1,x2,recorrer/recorrido);
y = lerp(y1,y2,recorrer/recorrido);
z = scr_proj_arco(0,altura,0,recorrer/recorrido,0.8);

if recorrer >= recorrido	//destruir el proyectil una vez llegue al punto destino
{
	if !collision_rectangle(x-5,y-10,x+5,y-5,casillas_no_pasarela,0,1)
	{
		var _inst = instance_create_layer(x,y2,"npcs",zombi_pirata_zombidito);
		if instance_exists(recom_sem_debug)
		{
			_inst.hp = 0;
		}
	}
	else
	{
		collision_rectangle(x-5,y-10,x+5,y-5,casillas_no_pasarela,0,0);
		instance_create_depth(x,(y div 186)*186+166,depth,efect_caer_agua);
		instance_destroy();
	}
	instance_destroy();
}