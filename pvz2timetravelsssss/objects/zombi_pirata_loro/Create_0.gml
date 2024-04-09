/// @description Insert description here
skeleton_skin_set("loro/entero");
skeleton_animation_set("loro/volar");

morir = false;
sombra_y = y;
padre = noone;
objetivo = noone;
direccion = "irse";
expulsado = false;
objetivo_valores[0] = noone;	//sprite
objetivo_valores[1] = 0;		//frame
objetivo_valores[2] = noone;	//animacion
objetivo_valores[3] = noone;	//skin
objetivo_valores[4] = 0;	//tamano vertical del sprite
/*
if instance_exists(oPlantaSuperficie)
{
	objetivo = instance_find(oPlantaSuperficie,irandom(instance_number(oPlantaSuperficie)-1));
	direccion = "planta";
}
*/
alarm_set(1,30);