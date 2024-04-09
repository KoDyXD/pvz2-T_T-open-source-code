/// @description explosion con bala de canon
var i = instance_place(x,y,expl_balacanon);
if (i != noone) and ds_list_find_index(projs,i) = -1
{
	var _inst = instance_create_layer(x,y,"npcs",efect_zombi_loro_morir);
	_inst.depth = depth;
	instance_destroy();
}