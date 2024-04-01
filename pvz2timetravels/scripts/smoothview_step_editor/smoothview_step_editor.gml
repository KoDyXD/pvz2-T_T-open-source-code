/// @function smoothview_step()
///
/// @description	Handles the movement of the view
/// @date			2021-08-25
/// @copyright		Appsurd
/// modificado por kody
function smoothview_step_editor() {

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
			if (y <= limite_y1 or y >= 0) then drag_speed = 0;
			drag_speed += (-drag_speed*smooth);
	    }
		
	    // Keep the screen within the room
		y = round(max(limite_y1,min(y,0)));
}