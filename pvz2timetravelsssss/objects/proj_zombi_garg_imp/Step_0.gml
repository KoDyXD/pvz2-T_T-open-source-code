/// @description mover proyectil
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
	var _inst = instance_create_layer(x,sombra_y-z,"npcs",zombi);
	if instance_exists(recom_sem_debug)
	{
		_inst.hp = 0;
	}
	instance_destroy();
}