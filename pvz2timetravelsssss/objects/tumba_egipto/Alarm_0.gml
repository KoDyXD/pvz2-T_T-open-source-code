/// @description comer tumba
if instance_exists(inst)
{
	if inst.hp > 0
	{
		instance_destroy();
	}
	else
	{
		var i = instance_create_layer(x,y,"npcs",tumba_egipto);
		i.hp = hp;
		i.alarm[1] = 1;
		instance_destroy();
	}
	inst.morir = true;
}