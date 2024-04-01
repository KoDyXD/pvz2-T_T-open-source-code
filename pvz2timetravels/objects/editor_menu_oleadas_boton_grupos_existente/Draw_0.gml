draw_self();
draw_sprite_ext(sprite,dibujar,x,y,image_xscale,image_yscale,0,c_white,1);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_outline_transformed(x,y,cual,1,1,c_white,c_black,image_xscale,image_yscale,0);

if instance_exists(editor_menu_oleadas_grupos_debug)
{
	if image_index = 0 and editor_menu_oleadas_grupos_debug.padre == id {image_index = 1;}
}
else if image_index = 1
{
	image_index = 0;
}