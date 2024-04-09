/// @description Insert description here
if expulsado = false
{
	if direccion = "irse"	//salir de la pantalla con la planta robada
	{
		if speed != 0 {speed = 0;}
		y -= 10;
		if y < camera_get_view_y(view_camera[0])-objetivo_valores[4]-50
		{
			if instance_exists(padre)
			{
				direccion = "zombi";
				alarm_set(0,2.5*60);
				x = padre.x;
				objetivo_valores[0] = noone;	//sprite
				objetivo_valores[1] = 0;		//frame
				objetivo_valores[2] = noone;	//animacion
				objetivo_valores[3] = noone;	//skin
				objetivo_valores[4] = 0;	//tamano vertical
			}
			else if morir == true
			{
				instance_destroy();
			}
		}
	}
	if direccion = "planta"	//dirigirse a la planta objetivo
	{
		if instance_exists(objetivo) and (objetivo.accion == "normal")
		{
			if x >= objetivo.x {image_xscale = 1;}else{image_xscale = -1;}
			if point_distance(x,y,objetivo.x,objetivo.y-objetivo.sprite_height+25) > 4
			{
				move_towards_point(objetivo.x,objetivo.y-objetivo.sprite_height+25,4);
			}
			else
			{
				with(objetivo)
				{
					other.objetivo_valores[0] = sprite_index;	//sprite
					other.objetivo_valores[1] = image_index;		//frame
					other.objetivo_valores[2] = skeleton_animation_get();	//animacion
					other.objetivo_valores[3] = skeleton_skin_get();	//skin
					other.objetivo_valores[4] = sprite_height;	//tamano vertical del sprite
					instance_destroy();
				}
				direccion = "irse";
			}
		}
		else
		{
			objetivo = noone;
			if instance_exists(padre) {direccion = "zombi";}else{direccion = "irse";}
		}
	}
	if direccion = "zombi" and alarm[0] = -1	//regresar al zombi
	{
		if instance_exists(padre)
		{
			if x >= padre.x-72.8 {image_xscale = 1;}else{image_xscale = -1;}
			if point_distance(x,y,padre.x-72.8,padre.y-220.5) > 4
			{
				move_towards_point(padre.x-72.8,padre.y-220.5,4);
			}
			else
			{
				padre.alarm[4] = 5*60;
				padre.loro = false;
				instance_destroy();
			}
		}
		else
		{
			direccion = "irse";
		}
	}
}
else
{
	speed = 0;
	x += 39;
	if x > camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])+50
	{
		instance_destroy();
	}
}

if instance_exists(proj_trebolador) and expulsado = false {expulsado = true;}