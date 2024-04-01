/// @description destruir tumba si choca con una planta o tumba
if place_meeting(x,y,oPlantaGeneral) or place_meeting(x,y,tumba_egipto) {instance_destroy();}