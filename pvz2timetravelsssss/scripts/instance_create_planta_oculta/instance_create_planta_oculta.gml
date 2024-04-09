//sirve para crear plantas en el patio automaticamente
function instance_create_planta_oculta(x,y,planta){

	casillas();
	instance_create_layer(cas_x[x],cas_y[y],"npcs",tumba_egipto);
	var i = instance_create_layer(cas_x[x],cas_y[y],"npcs",npc_desafio_planta_oculta);
	i.planta = planta;
}