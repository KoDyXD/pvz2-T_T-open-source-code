/// @description parpadeo
image_speed = 1;
if hp > 3000 {skeleton_animation_set(choose("parpadear","no sonreir","sonriendo"));}
if hp > 2000 and hp <= 3000 {skeleton_animation_set("danada 1");}
if hp > 1000 and hp <= 2000 {skeleton_animation_set("danada 2");}
if hp <= 1000 {skeleton_animation_set("danada 3");}