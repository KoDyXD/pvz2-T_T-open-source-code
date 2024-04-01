/// @description
if !instance_exists(hijo)
{
	hijo = noone;
}

if global.click == true and hijo != noone
{
	instance_destroy(hijo);
	hijo = noone;
}

if destruir == true
{
	array_delete(global.editor_oleada_cual,pos,1);
	
	nivel_editor_0_0.alarm[2] = 1;
	
	instance_destroy(hijo);
	instance_destroy();
}