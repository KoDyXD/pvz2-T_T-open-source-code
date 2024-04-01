/// @description crear semillas
for (var i = 0; i < array_length(sem);i++)
{
	xx += 1;
	var ii = instance_create_depth((x-510)+(238*xx),yy,0,sem[i]);
	ii.visible = false;
	ii.texto = i;
	if i = 3 {yy += 151; xx = 0;}
	if i = 7 {yy += 151; xx = 0;}
	if i = 11 {yy += 151; xx = 0;}
	if i = 15 {yy += 151; xx = 0;}
	if i = 19 {yy += 151; xx = 0;}
}