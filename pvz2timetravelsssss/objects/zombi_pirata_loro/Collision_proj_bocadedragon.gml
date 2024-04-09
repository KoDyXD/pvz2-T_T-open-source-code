// @description choque con guisantes
var i = instance_place(x,y,proj_bocadedragon);
if (i != noone)
{
	var _inst = instance_create_layer(x,y,"npcs",efect_zombi_loro_morir);
	_inst.depth = depth;
	instance_destroy();
}