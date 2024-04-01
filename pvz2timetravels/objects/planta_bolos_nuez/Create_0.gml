/// @description weas utiles para que funcione
instance_create_layer(x,y,"npcs",planta_instakill);

skeleton_animation_set("rodar");
skeleton_skin_set("normal");

snd = audio_play_sound(sound_bolos_rodar,5,0);
aa = false;
yy = 0;
hp = 200;
dano = 500;