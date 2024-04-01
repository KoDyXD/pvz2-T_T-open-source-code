/// @description mover proyectil
if giro = false
{
	if x > 2430 or cantidad >= 3 or !collision_line(x,y,2490,y,zombi_tipo_general,0,1)
	{
		if xx > 0
		{
			xx -= 1.5;
		}
		else
		{
			var i = instance_create_depth(x,y,depth,proj_boomerang);
			i.image_xscale = -1;
			i.giro = true;
			i.xx = 0;
			i.sombra_y = sombra_y;
			if instance_exists(pl)
			{
				i.pl = pl;
				pl.pr = i.id;
			}
			instance_destroy();
		}
	}
}
else
{
	if xx > -15 {xx -= 1.5;}
}
x += xx;