// @description choque con guisantes
if accion = "normal"
{
	var i = instance_place(x,y,proj_bonkchoy);
	if (i != noone)
	{
		if i.instz = id
		{
				//iluminar zombi
				brillo = 0.13;
			if escudo > 0 {escudo -= i.dano;}else{hp -= i.dano;}
			with(i)
			{
				if instance_exists(instp) and instance_exists(instz)
				{
					if other.hp <= 80 {instp.fuerte = true;}else{instp.fuerte = false;}
				}
				instance_destroy();
			}
		}
	}
}