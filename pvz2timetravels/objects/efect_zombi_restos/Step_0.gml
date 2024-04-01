/// @description mover proyectil
if recorrer < recorrido
{
	recorrer++;
}
else
{
	//recorrer = recorrido;
      recorrer=recorrido;
      if(rebotar>0)
      {
        rebotar--;
        var _dir=point_direction(x1,y1,x2,y2);
        var _dist=point_distance(x1,y1,x2,y2)/2;
        x2=x+(lengthdir_x(_dist,_dir)/rebote_div);
        y2=y+(lengthdir_y(_dist,_dir)/rebote_div);
        x1=x;
        y1=y;
        recorrido*=.75;
        altura/=2;
        recorrer=0;
      }
}
z = scr_proj_arco(0,altura,0,recorrer/recorrido,0.8);
x = lerp(x1,x2,recorrer/recorrido);
y = lerp(y1,y2,recorrer/recorrido)-z;

if image_alpha <= 0 {instance_destroy();}

if recorrer >= recorrido
{
	if rebotar <= 0
	{
		image_alpha -= 0.025;
	}
	if collision_rectangle(x-5,y-5,x+5,y+5,casillas_no_pasarela,0,0)
	{
		var i = collision_rectangle(x-5,y-5,x+5,y+5,casillas_no_pasarela,0,0);
		
		instance_create_depth(x,i.pos*186,depth,efect_caer_agua);
		instance_destroy();
	}
}