// Script detectar el objetivo mas cercano con collision line
function collision_line_first(x,y,x2,y2,object,prec,notme){
	
    var _sx = x2 - x;
    var _sy = y2 - y;
	
    var _inst = collision_line(x,y,x2,y2,object,prec,notme);
    if (_inst != noone) {
        while ((abs(_sx) >= 1) || (abs(_sy) >= 1)) {
            _sx /= 2;
            _sy /= 2;
            var _i = collision_line(x,y,x2,y2,object,prec,notme);
            if (_i) {
                x2 -= _sx;
                y2 -= _sy;
                _inst = _i;
            }else{
                x2 += _sx;
                y2 += _sy;
            }
        }
    }
    return _inst;
}