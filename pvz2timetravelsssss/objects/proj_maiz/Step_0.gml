/// @description mover proyectil
if recorrer < recorrido
{
	recorrer++;
}
else
{
	recorrer=recorrido;
}
x = lerp(x1,x2,recorrer/recorrido);

z = scr_proj_arco(0,altura,0,recorrer/recorrido,0.8);

y = lerp(y1,y2,recorrer/recorrido)-z;

if recorrer >= recorrido	//destruir el proyectil una vez llegue al punto destino
{
	if !collision_rectangle(x-5,y-5,x+5,y+5,casillas_no_pasarela,0,1)
	{
		audio_play_sound(choose(sound_coltapulta_impacto_1,sound_coltapulta_impacto_2),1,0);
		var i = instance_create_layer(x,y-z,"npcs",efecto_choque_maiz);
		i.depth = depth;
		instance_destroy();
	}
	else
	{
		collision_rectangle(x-5,y-5,x+5,y+5,casillas_no_pasarela,0,0);
		instance_create_depth(x,(y div 186)*186+166,depth,efect_caer_agua);
		instance_destroy();
	}
}

if instance_exists(idr)
{
	if point_distance(x,y,idr.bbox_left,bbox_top) < sprite_height
	{
		if mask_index != spr_proj_col {mask_index = spr_proj_col;}
	}
	else
	{
		if mask_index != spr_vacio {mask_index = spr_vacio;}
	}
}
else if mask_index != spr_vacio
{
	mask_index = spr_vacio;
}