///funciones para textos con borde
///texto con bordes simples
function draw_text_outline(x,y,string,borde1,borde2,colorcentral,colorborde){
///bordes
draw_set_color(colorborde);
draw_text(x-borde1,y,string);
draw_text(x+borde2,y,string);
draw_text(x,y-borde1,string);
draw_text(x,y+borde2,string);
draw_text(x-borde1,y+borde2,string);
draw_text(x+borde2,y+borde2,string);
draw_text(x-borde1,y-borde1,string);
draw_text(x+borde2,y-borde1,string);

///centro
draw_set_color(colorcentral);
draw_text(x,y,string);
}

///texto con bordes y escala
function draw_text_outline_transformed(x,y,string,borde1,borde2,colorcentral,colorborde,xscala,yscala,angulo){
///bordes
draw_set_color(colorborde);
draw_text_transformed(x-borde1,y,string,xscala,yscala,angulo);
draw_text_transformed(x+borde2,y,string,xscala,yscala,angulo);
draw_text_transformed(x,y-borde1,string,xscala,yscala,angulo);
draw_text_transformed(x,y+borde2,string,xscala,yscala,angulo);
draw_text_transformed(x-borde1,y+borde2,string,xscala,yscala,angulo);
draw_text_transformed(x+borde2,y+borde2,string,xscala,yscala,angulo);
draw_text_transformed(x-borde1,y-borde1,string,xscala,yscala,angulo);
draw_text_transformed(x+borde2,y-borde1,string,xscala,yscala,angulo);

///centro
draw_set_color(colorcentral);
draw_text_transformed(x,y,string,xscala,yscala,angulo);	
}

///texto con bordes, escala y salto de linea
function draw_text_outline_trans_ext(x,y,string,borde1,borde2,colorcentral,colorborde,sep,w,xscala,yscala,angulo){
///bordes
draw_set_color(colorborde);
draw_text_ext_transformed(x-borde1,y,string,sep,w,xscala,yscala,angulo);
draw_text_ext_transformed(x+borde2,y,string,sep,w,xscala,yscala,angulo);
draw_text_ext_transformed(x,y-borde1,string,sep,w,xscala,yscala,angulo);
draw_text_ext_transformed(x,y+borde2,string,sep,w,xscala,yscala,angulo);
draw_text_ext_transformed(x-borde1,y+borde2,string,sep,w,xscala,yscala,angulo);
draw_text_ext_transformed(x+borde2,y+borde2,string,sep,w,xscala,yscala,angulo);
draw_text_ext_transformed(x-borde1,y-borde1,string,sep,w,xscala,yscala,angulo);
draw_text_ext_transformed(x+borde2,y-borde1,string,sep,w,xscala,yscala,angulo);

///centro
draw_set_color(colorcentral);
draw_text_ext_transformed(x,y,string,sep,w,xscala,yscala,angulo);	
}