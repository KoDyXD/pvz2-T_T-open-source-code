/// @description que hara la semilla al hacerle click
//si esta dentro del menu de seleccion creara una semilla
if usar == true
{
	if click == true and desbloquear == true and click2 == true
	{
		if mover = false and global.posi < global.semilla_cantidad_usable and y > 750 and y < 1560
		{
			var _x = camera_get_view_x(view_camera[0])+150;
			var _y = camera_get_view_y(view_camera[0])+200;
			var _inst = instance_create_depth(_x,_y+(151*(global.posi+1)),0,selector);
			_inst.visible = true;
			_inst.mover = true;
			_inst.madre = id;
			_inst.texto = texto;
			global.posi += 1;
			click = false;
			//global.sprite = sprite;
			instance_destroy(global.sprite);
			global.sprite = noone;
			if !instance_exists(global.sprite) {var i = instance_create_depth(menu_selector.x-330+68,menu_selector.y-370+143,-1,sprite); global.sprite = i;}
			global.name = name;
			global.fondo = fondo;
			global.texto = texto;
			audio_play_sound(sound_semillero_select,5,0);
		}

		//si esta fuera del menu se destruira y activara la semilla madre
		if mover = true
		{
			global.posi -= 1;
			click = false;
			madre.click = true;
			//global.sprite = sprite;
			instance_destroy(global.sprite);
			global.sprite = noone;
			if !instance_exists(global.sprite) {var i = instance_create_depth(menu_selector.x-330+68,menu_selector.y-370+143,-1,sprite); global.sprite = i;}
			global.name = name;
			global.fondo = fondo;
			global.texto = texto;
			audio_play_sound(sound_semillero_select,5,0);
			instance_destroy();
		}
	}
}
else if global.name != name and global.posi < global.semilla_cantidad_usable
{
	instance_destroy(global.sprite);
	global.sprite = noone;
	if !instance_exists(global.sprite) {var i = instance_create_depth(menu_selector.x-330+68,menu_selector.y-370+143,-1,sprite); global.sprite = i;}
	global.name = name;
	global.fondo = fondo;
	global.texto = "No puedes usar esta planta en este nivel.";
	audio_play_sound(sound_semillero_select,5,0);
}