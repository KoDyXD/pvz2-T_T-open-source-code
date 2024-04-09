/// @description controlar el movimiento y extras
//evitar que la global ecceda los limites
if global.posi <= 0 {global.posi = 0;}
if global.posi >= global.semilla_cantidad_usable {global.posi = global.semilla_cantidad_usable;}