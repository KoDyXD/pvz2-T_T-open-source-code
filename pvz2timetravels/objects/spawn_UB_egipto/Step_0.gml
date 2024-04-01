/// @description mover semillas
if global.semillas >= 8 {alarm_set(0,-1);}

if instance_exists(nivel_debug_xd)
{
	if global.semillas <= 7 and generar = true
	{
		if nivel_debug_xd.oleada <= 8
		{
			alarm_set(0,random_range(180,300));	//semillas iniciales
		}
		if nivel_debug_xd.oleada >= 9 and nivel_debug_xd.oleada <= 16
		{
			alarm_set(1,random_range(300,480));	//semillas intermedias
		}
		if nivel_debug_xd.oleada >= 17 and nivel_debug_xd.oleada <= 23
		{
			alarm_set(2,random_range(480,660));	//semillas mezcladas
		}
		generar = false;
	}
}