/// @description detecciones
x += 11;
y += yy

if y > 1445 {yy = -7;}
if y < 700 {yy = 7;}

//profundidad
depth = instance_depth_proj(y-100);

//morir si no tiene vida
if hp <= 0
{
	instance_destroy();
}

//mover diagonalmente
////esto se activa en la colision del zombi o la tumba
if aa = true
{
	audio_play_sound(sound_bolos_choque,5,0);
	if yy = 0 {yy = choose(7,-7);}	//si se mueve recto elegira uma dreccion entre arriba y abajo
	if yy = -7 {yy = 7;}else{if yy = 7 {yy = -7;}}	//si se meueve diagonalmente elegira la direccion contraria
	alarm_set(1,15);	//tiempo para volver a chocar
	aa = false;
}