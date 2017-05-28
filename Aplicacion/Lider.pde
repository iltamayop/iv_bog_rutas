class Lider extends Usuario{
private int id,coordenada;
private float resultado,cx,cy;
private String nombre;
  int current1, graficar1;
 Puntos puntos;
  Lider(){
      current1 = 1;
  graficar1 = 2;
}



int  identificacion(){
  return id;
}
String nombre(){
return nombre;
}
float punto_inicio(){
return cx;
}

float punto_final(float p){
return cy;
}
void p_encuentro(){
}
void keyPressed() {
  if (key == 'v' ){

 current1 = current1 <graficar1 ? current1+1 : 1;

  }
   switch(current1) {   
    case 1:
    background  (255,180,89);
   puntos.p_encuentro();
    break;
   case 2:
   background  (random(100));
 //   usuario=new Gregario();
    
    break;
     }

   

    }

}
