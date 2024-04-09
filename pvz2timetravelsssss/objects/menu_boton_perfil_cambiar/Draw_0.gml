/// @description Inserte aquí la descripción
draw_self();
if global.nombre = global.usuarios[cual] {image_index = 1;}else{image_index = 0;}

//caja de texto
draw_sprite_ext(spr_menu_perfil_nombre,0,x+320,y-10,1,1,0,c_white,1);

draw_sprite_ext(spr_menu_perfil_cantidad,0,x+140,y+80,5.75,1,0,c_white,1);
draw_sprite_ext(spr_menu_perfil_cantidad,0,x+140,y+170,5.75,1,0,c_white,1);
draw_sprite_ext(spr_menu_perfil_cantidad,0,x+140,y+260,5.75,1,0,c_white,1);

//iconos
draw_sprite(spr_menu_perfil_iconos,0,x+140,y+80);	//niveles
draw_sprite(spr_menu_perfil_iconos,1,x+140,y+170);	//plantas
draw_sprite(spr_menu_perfil_iconos,2,x+140,y+260);	//monedas


//nombre
var nombre = string_replace(global.usuarios[cual],".ini","");

draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_color($003E48);
draw_text_transformed(x+320,y-7,nombre,1.15,1.15,0);	//nombre

ini_open(global.usuarios[cual]);
var _niveles = ini_read_real("Nivel","completados",0);
var _plantas = real(ini_read_real("Semilla","cuantas",0))+1;
var _monedas = ini_read_real("Extra","monedas",0);
ini_close();

draw_set_halign(fa_left);
draw_text_outline(x+215,y+80,_niveles,3,3,c_white,c_black);
draw_text_outline(x+185,y+170,_plantas,3,3,c_white,c_black);
draw_text_outline(x+195,y+260,_monedas,3,3,c_white,c_black);