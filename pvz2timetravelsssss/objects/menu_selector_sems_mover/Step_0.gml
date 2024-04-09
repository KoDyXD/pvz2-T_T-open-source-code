/// @description Insert description here
if global.mover_menu == true	//mover junto al menu de seleccion
{
	y = menu_selector.y-y_pos_selector;
}
else
{
	if instance_exists(menu_selector)
	{
		if collision_rectangle(menu_selector.x-430,menu_selector.y-180,menu_selector.x+600,menu_selector.y+675,obj_click,0,1)
		{
			//smoothview_step_selector();
			// Initialise the movement by pressing using the left mouse button
			if (mouse_check_button_pressed(mb_left))
			{
				_y = y-mouse_y;
			    drag_speed = 0;
			    drag = mouse_y;
			}

				// Dragging
			    if mouse_check_button(mb_left)
			    {
					// get distance from fake mouse to real mouse
					var moving = point_distance(0,my,0,mouse_y);

					// update positions of fake mouse
					my = mouse_y;

					// if they are apart
					if (moving) {	//hacer que el objeto siga al mouse

					drag_speed = (drag - mouse_y) * speed_modifier;
					y = mouse_y+_y;
	    
					}
					else	//reiniciar los valores si el mouse no se mueve
					{
						_y = y-mouse_y;
						drag_speed = 0;
						drag = mouse_y;
					}
				}
				// Drag slow down effect
			    if (abs(drag_speed) > 0) and !mouse_check_button(mb_left)
			    {
					y = y-drag_speed;
					if (y <= menu_selector.y-y_pos_selector-limite_y1 or y >= menu_selector.y-y_pos_selector) then drag_speed = 0;
					drag_speed += (-drag_speed*smooth);
			    }
		
			    // Keep the screen within the room
				y = round(max(menu_selector.y-y_pos_selector-limite_y1,min(y,menu_selector.y-y_pos_selector)));
		}
		else
		{
			drag_speed = 0;
			drag = mouse_y;
			_y = y-mouse_y;
		}
	}
	else
	{
		instance_destroy();
	}
}