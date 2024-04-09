/// @description Insert description here
xx = xstart div 166;
yy = ystart div 186;

xx += irandom_range(-2,2);
yy += irandom_range(-2,2);

if xx < 6 {xx = 6;}
if yy < 3 {yy = 3;}
if xx > 14 {xx = 14;}
if yy > 7 {yy = 7;}
	
x = (xx*166)+68;
y = (yy*186)+143;

depth = instance_depth_proj(y);

skeleton_animation_set(choose("anubis/1","anubis/2"));

tumba = true
inst = noone;	//el zombi anubis del que se genero