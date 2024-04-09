//crear tumbas rapido
function instance_create_tumba(x,y,tumba){
	if !collision_rectangle((x+5)*166,(y+2)*186,(x+6)*166,(y+3)*186,casillas_no_plantable,1,0)
	{
		casillas();
		instance_create_layer(cas_x[x],cas_y[y],"npcs",tumba);
	}
}

//con este script se crea una tumba especifica