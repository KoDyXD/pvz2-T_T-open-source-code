/// @description mover proyectil
depth = instance_depth_proj(y);
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
        x2=x+lengthdir_x(_dist,_dir);
        y2=y+lengthdir_y(_dist,_dir);
        x1=x;
        y1=y;
        recorrido*=.75;
        altura/=2;
        recorrer=0;
      }
}
x = lerp(x1,x2,recorrer/recorrido);
y = lerp(y1,y2,recorrer/recorrido);
z = scr_proj_arco(0,altura,0,recorrer/recorrido,0.8);
/*
if recorrer >= recorrido	//destruir el proyectil una vez llegue al punto destino
{
	instance_create_layer(x,y,"npcs",zombi_egipto_zombidito);
	instance_destroy();
}