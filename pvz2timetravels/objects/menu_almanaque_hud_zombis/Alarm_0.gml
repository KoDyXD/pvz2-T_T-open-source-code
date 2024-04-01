/// @description crear semillas
var xx = 0;
var yy = 385;

for (var i = 0; i < array_length(sem)-1; ++i) {
	
	xx += 1;
	
	var _sem = instance_create_depth((room_width/2-1263)+337*(xx-1),yy,0,sem[i+1]);
	_sem.texto = i+1;
	
	if i = 3 {yy += 214.2; xx = 0;}
	if i = 7 {yy += 214.2; xx = 0;}
	if i = 11 {yy += 214.2; xx = 0;}
	if i = 15 {yy += 214.2; xx = 0;}
	if i = 19 {yy += 214.2; xx = 0;}
	if i = 23 {yy += 214.2; xx = 0;}
}