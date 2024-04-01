// @description choque con guisantes
var i = instance_place(x,y,proj_carnivora);
if (i != noone)
{
	if i.instz = id
	{
			//iluminar zombi
			brillo = 0.13;
		if escudo > 0 {escudo = 0;}else{hp-= i.dano;}
		anim_nada = true;
		alarm_set(3,2);
		i.instz = id;
		with(i)
		{
			if instance_exists(instp) and instance_exists(instz)
			{
				if instz.hp <= 0
				{
					instp.comer = true;
				}
				else
				{
					instp.comer = false;
				}
			}
			instance_destroy();
		}
	}
}