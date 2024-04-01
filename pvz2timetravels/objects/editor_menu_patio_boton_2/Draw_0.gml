draw_self();

draw_sprite_ext(sprite_index,14,x,y,image_xscale,image_yscale,0,c_white,1);

if global.editor_nivel_base[0] = editor_patio
{
	draw_sprite_ext(sprite_index,13,x,y,image_xscale,image_yscale,0,c_white,1);
}

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_outline_transformed(x,y-(124*image_yscale)/2-25,cual,1,1,c_white,c_black,image_xscale,image_yscale,0);