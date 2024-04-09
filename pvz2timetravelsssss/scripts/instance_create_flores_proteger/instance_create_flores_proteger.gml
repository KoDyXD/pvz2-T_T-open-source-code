//este instance_create sirve para crear plantas en peligro 
function instance_create_flores_proteger(x){
	
	instance_create_layer((x+5)*166,(3*186)+(186/2),"npcs",npc_desafio_flor);
	instance_create_layer((x+5)*166,(4*186)+(186/2),"npcs",npc_desafio_flor);
	instance_create_layer((x+5)*166,(5*186)+(186/2),"npcs",npc_desafio_flor);
	instance_create_layer((x+5)*166,(6*186)+(186/2),"npcs",npc_desafio_flor);
	instance_create_layer((x+5)*166,(7*186)+(186/2),"npcs",npc_desafio_flor);
}