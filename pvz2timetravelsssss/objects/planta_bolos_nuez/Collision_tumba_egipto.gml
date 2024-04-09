// @description choque con guisantes
/*
var i = instance_place(x,y,tumba_egipto);
if (i != noone) and ds_list_find_index(choque,i) = -1 and alarm[1] = -1 and aa = true
{
	audio_play_sound(sound_bolos_choque,5,0);
	if yy = 0 {yy = choose(7,-7);}
	if yy = -7 {yy = 7;}else{if yy = 7 {yy = -7;}}
	ds_list_add(choque,i);
	alarm_set(1,14);
	aa = false;
}