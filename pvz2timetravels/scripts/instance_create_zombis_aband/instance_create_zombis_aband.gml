//crear al zombi abanderado orrespondiente de cada mundo
function instance_create_zombis_aband(){
	var _zombi = zombi_tut_abanderado;
	_pos[0] = 0;
	
	var fondo_id = layer_get_id("Background");
	var back_id = layer_background_get_id(fondo_id);
	switch(layer_background_get_sprite(back_id))
	{
		case spr_patio_tutorial:
			_zombi = zombi_tut_abanderado;
		break;
		case spr_patio_egipto:
			_zombi = zombi_egipto_abanderado;
		break;
		case spr_patio_pirata:
			_zombi = zombi_pirata_abanderado;
		break;
	}
	//1._640
	//2._830
	//3._1010
	//4._1200
	//5._1385
	if !collision_line(0,640,room_width,640,casillas_no_plantable,0,1) {_pos[array_length(_pos)] = 1;}
	if !collision_line(0,830,room_width,830,casillas_no_plantable,0,1) {_pos[array_length(_pos)] = 2;}
	if !collision_line(0,1010,room_width,1010,casillas_no_plantable,0,1) {_pos[array_length(_pos)] = 3;}
	if !collision_line(0,1200,room_width,1200,casillas_no_plantable,0,1) {_pos[array_length(_pos)] = 4;}
	if !collision_line(0,1385,room_width,1385,casillas_no_plantable,0,1) {_pos[array_length(_pos)] = 5;}
	
		if array_length(_pos) > 1
		{
			instance_create_zombis(-1,_pos[irandom_range(1,array_length(_pos)-1)],1,1,_zombi);
		}
		else
		{
			instance_create_zombis(-1,choose(1,2,3,4,5),1,1,_zombi);
		}
}