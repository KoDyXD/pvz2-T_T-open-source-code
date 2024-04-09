// @description choque con guisantes
if accion = "normal"
{
	var i = instance_place(x,y,proj_carnivora);
	if (i != noone)
	{
		if i.instz = id
		{
				//iluminar zombi
				brillo = 0.13;
			hp -= i.dano;
			escudo = 0;
			anim_nada = true;
			alarm_set(3,2);
			with(i)
			{
				if instance_exists(instp) and instance_exists(instz)
				{
					if other.hp <= 0
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
}