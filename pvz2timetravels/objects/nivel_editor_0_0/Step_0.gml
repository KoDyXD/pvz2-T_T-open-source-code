/// @description
if array_tamano != array_length(global.editor_oleada_cual) and global.click == true
{
	alarm_set(2,1);
	array_tamano = array_length(global.editor_oleada_cual);
}