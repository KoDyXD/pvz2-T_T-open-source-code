//sirve para crear plantas en el patio automaticamente
function instance_create_planta(x,y,planta,invertir){

	casillas();
	var i = instance_create_layer(cas_x[x],cas_y[y],"npcs",planta);
	if invertir = true
	{
		i.image_xscale = -1;
	}
}