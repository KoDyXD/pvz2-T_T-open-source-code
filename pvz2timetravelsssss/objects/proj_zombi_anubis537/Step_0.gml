/// @description Insert description here
if image_index >= 139 and tumba = true
{
	if !place_meeting(x,y,oPlantaGeneral) and !place_meeting(x,y,tumba_egipto)
	{
		if instance_exists(inst) {inst.huesos += 1;}
		var i = instance_create_layer(xx*166+68,yy*186+143,"npcs",tumba_egipto);
		i.alarm[1] = 1;
		tumba = false;
	}
}