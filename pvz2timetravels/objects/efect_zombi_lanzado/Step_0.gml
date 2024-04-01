/// @description mover proyectil
if recorrer < recorrido
{
	recorrer++;
}
else
{
	recorrer = recorrido;
}

z = scr_proj_arco(0,altura,0,recorrer/recorrido,0.8);
x = lerp(x1,x2,recorrer/recorrido);
y = lerp(y1,y2,recorrer/recorrido)-z;

if recorrer >= recorrido
{
	if collision_rectangle(x-5,y-10,x+5,y-5,casillas_no_pasarela,0,0)
	{
		var i = collision_rectangle(x-5,y-10,x+5,y+10,casillas_no_pasarela,0,0);
		
		instance_create_depth(x,i.pos*186,depth,efect_caer_agua);
		instance_destroy(zombi);
		instance_destroy();
	}
	else
	{
		instance_activate_object(zombi);
		if instance_exists(recom_sem_debug)
		{
			if instance_exists(zombi) {zombi.hp = 0;}
		}
		if instance_exists(zombi)
		{
			zombi.image_index = frames;
			zombi.x = x;
			zombi.y = pos_y;
		}
	}
	if alarm[1] == -1 and destruir == false {alarm_set(1,1);}
	if destruir == true
	{
		instance_destroy();
	}
}