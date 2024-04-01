// @description choque con guisantes
var i = instance_place(x,y,sol_rojo);
if (i != noone) and ds_list_find_index(soles,i) = -1
{
	if i.idr = id
	{
		ds_list_add(soles,i);
		with(i) {instance_destroy();}
	}
}