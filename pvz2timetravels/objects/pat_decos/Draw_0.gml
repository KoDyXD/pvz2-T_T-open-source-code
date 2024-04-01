/// @description decoraciones
//decoracion del patio que cubren a zombis y plantas
switch(patio)
{
	case spr_patio_tutorial:
		draw_sprite(spr_patio_tutorial_detalle,0,2858,1183);
	break;
	case spr_patio_egipto:
		draw_sprite(spr_patio_egipto_detalle,0,2594,1224);
	break;
	case spr_patio_pirata:
		draw_sprite(spr_patio_pirata_detalle,0,273,1089);
		draw_sprite(spr_patio_pirata_detalle,1,1740,1518);
	break;
}

//bolos
if instance_exists(pat_decos_extras) and pat_decos_extras.bolera != -1
{
	switch(pat_decos_extras.bolera)
	{
		case 4:
			draw_sprite_ext(spr_detail_bolos_1,0,1655,1545,0.6,0.6,0,c_white,1);
		break;
		case 3:
			draw_sprite_ext(spr_detail_bolos_1,0,1499,1545,0.6,0.6,0,c_white,1);
		break;
		case 2:
			draw_sprite_ext(spr_detail_bolos_1,0,1333,1545,0.6,0.6,0,c_white,1);
		break;
	}
}