// @description choque con guisantes
var i = instance_place(x,y,proj_pinchohierba);
if (i != noone) and ds_list_find_index(projs,i) = -1
{
		//iluminar zombi
		brillo = 0.13;
	hp = 0;
	ds_list_add(projs,i);
}