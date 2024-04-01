///depth de las plantas y zombis y objetos varios
//pasarelas y extras
function instance_depth_pasarela(y){
if y <= 744 {return 55;}
if y <= 930 and y > 744 {return 44;}
if y <= 1116 and y > 930 {return 33;}
if y <= 1302 and y > 1116 {return 22;}
if y > 1302 {return 11;}
}

//salpicaduras de agua
function instance_depth_agua_salpicadura(y){
if y <= 744 {return 54;}
if y <= 930 and y > 744 {return 43;}
if y <= 1116 and y > 930 {return 32;}
if y <= 1302 and y > 1116 {return 21;}
if y > 1302 {return 10;}
}

//desafio 2 (por ejemplo casillas de proteger)
function instance_depth_desafio_2(y){
if y <= 720 {return 53;}
if y <= 900 and y > 720 {return 42;}
if y <= 1100 and y > 900 {return 31;}
if y <= 1300 and y > 1100 {return 20;}
if y > 1300 {return 9;}
}
//desafio 1 {por ejemplo flores en peligro}
function instance_depth_desafio_1(y){
if y <= 720 {return 52;}
if y <= 900 and y > 720 {return 41;}
if y <= 1100 and y > 900 {return 30;}
if y <= 1300 and y > 1100 {return 19;}
if y > 1300 {return 8;}
}
//tumbas
function instance_depth_tumba(y){
if y <= 720 {return 51;}
if y <= 900 and y > 720 {return 40;}
if y <= 1100 and y > 900 {return 29;}
if y <= 1300 and y > 1100 {return 18;}
if y > 1300 {return 7;}
}
//plantas
function instance_depth_plant(y){
if y <= 720 {return 50;}
if y <= 900 and y > 720 {return 39;}
if y <= 1100 and y > 900 {return 28;}
if y <= 1300 and y > 1100 {return 17;}
if y > 1300 {return 6;}
}

//objetos como barriles
function instance_depth_barril(y){
if y <= 750 {return 49;}
if y <= 930 and y > 750 {return 38;}
if y <= 1130 and y > 930 {return 27;}
if y <= 1330 and y > 1130 {return 16;}
if y > 1330 {return 5;}
}
//zombis
function instance_depth_zombi(y){
if y <= 750 {return 48;}
if y <= 930 and y > 750 {return 37;}
if y <= 1130 and y > 930 {return 26;}
if y <= 1330 and y > 1130 {return 15;}
if y > 1330 {return 4;}
}

//proyectiles
function instance_depth_proj(y){
if y <= 720 {return 47;}
if y <= 900 and y > 720 {return 36;}
if y <= 1100 and y > 900 {return 25;}
if y <= 1300 and y > 1100 {return 14;}
if y > 1300 {return 3;}
}
//podadoras
function instance_depth_podar(y){
var _y = y-50;
if _y <= 720 {return 46;}
if _y <= 900 and _y > 720 {return 35;}
if _y <= 1100 and _y > 900 {return 24;}
if _y <= 1300 and _y > 1100 {return 13;}
if _y > 1300 {return 2;}
}
//explosiones
function instance_depth_expl(y){
if y <= 720 {return 45;}
if y <= 900 and y > 720 {return 34;}
if y <= 1100 and y > 900 {return 23;}
if y <= 1300 and y > 1100 {return 12;}
if y > 1300 {return 1;}
}