/// @description explosion con papapum
var i = instance_place(x,y,expl_cococanon);
if (i != noone)
{
	var _inst = instance_create_layer(x,y,"npcs",efect_zombi_loro_morir);
	_inst.depth = depth;
	instance_destroy();
}