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

z = scr_proj_arco(0,altura,0,recorrer/recorrido,0.8);

y = lerp(y1,y2,recorrer/recorrido)-z;

if recorrer >= recorrido	//destruir el proyectil una vez llegue al punto destino
{
	if !collision_rectangle(x-5,y-5,x+5,y+5,casillas_no_pasarela,0,1)
	{
		audio_play_sound(sound_expl_papapum,5,0);
		audio_play_sound(sound_cococanon_explotar,5,0);
		instance_create_layer(x2,y2+30,"npcs",expl_balacanon);
		if instance_exists(objetivo) {objetivo.hp -= dano;}
	}
	else
	{
		instance_create_depth(x,(y div 186)*186+166,depth,efect_caer_agua);
	}
	instance_destroy();
}