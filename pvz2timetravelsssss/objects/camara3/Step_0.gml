/// @description Inserte aquí la descripción
/*
#region mover camara
if mover >= 7 {mover = 7;}
if mover <= -7 {mover = -7;}

x += mover;

if giro = true
{
	if x >= 2400 {mover -= 0.3;}
	if mover < 0 and x <= xstart+75 {mover += 0.3;}
	if x < xstart {instance_create_depth(0,0,0,nivel_ready_set_plant);}
}
else
{

	if x >= 2400 {mover -= 0.3;}
	if mover <= 0 {mover = 0;}
}

if mover = 0 and global.selector = false
{
	global.selector = true;
}
#endregion
#region alpha de la frase
if intensidad < 1 and alarm[0] != -1 and !instance_exists(obj_transicion)
{
	intensidad += 0.03;
}
if intensidad > 0 and alarm[0] = -1
{
	intensidad -= 0.03;
}
#endregion