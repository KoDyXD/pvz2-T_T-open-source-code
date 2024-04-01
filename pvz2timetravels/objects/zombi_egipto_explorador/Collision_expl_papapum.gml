/// @description explosion con papapum
var i = instance_place(x,y,expl_papapum);
if (i != noone) and ds_list_find_index(projs,i) = -1
{
	if i.image_index < 15
	{
			//iluminar zombi
			if image_blend = c_white or image_blend = c_silver {image_blend = c_silver; alarm_set(5,10);}
		if escudo > 0 {escudo -= i.dano;}else{hp -= i.dano;}
		ds_list_add(projs,i);
	}
}