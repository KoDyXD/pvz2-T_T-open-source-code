/// @description parpadeo
/*
image_speed = 1;
if normal = true
{
	skeleton_animation_set(choose("parpadear","no sonreir","sonriendo"));
	alarm_set(2, 95);
}

if parpadeo = true
{
	skeleton_animation_set("danada 1");
	alarm_set(2,75);
}

if parpadeo2 = true
{
	skeleton_animation_set("danada 2");
	alarm_set(2,75);
}

if parpadeo3 = true
{
	skeleton_animation_set("danada 3");
	alarm_set(2,75);
}*/
image_speed = 1;
if hp > 3000 {skeleton_animation_set(choose("parpadear","no sonreir","sonriendo"));}
if hp > 2000 and hp <= 3000 {skeleton_animation_set("danada 1");}
if hp > 1000 and hp <= 2000 {skeleton_animation_set("danada 2");}
if hp <= 1000 {skeleton_animation_set("danada 3");}