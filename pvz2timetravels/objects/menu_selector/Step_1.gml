/// @description que hacer si hay un desafio activo
if instance_exists(objetivo_no_solares)
{
	if instance_exists(selector_girasol) {selector_girasol.usar = false;}
	if instance_exists(selector_birasol) {selector_birasol.usar = false;}
}
if global.mover_menu == true
{
	if global.mover_destruir == false	//se debe poner el menu para escoger las plantas
	{
		var _y = camera_get_view_y(view_camera[0]);
		if y > _y+725
		{
			global.mover_movY += 0.35;
		}
		else
		{
			if y > _y+625
			{
				global.mover_movY -= 2.2
			}
			else
			{
				global.mover_movY = 0;
				global.mover_menu = false;
			}
		}
	}
	else	//ya se han seleccionado las plantas y se debe comenzar la partida
	{
		if y <= 3200 {global.mover_movY -= 0.35;}else{global.mover_menu = false; global.mover_movY = 0;}
	}
	y -= global.mover_movY;
}