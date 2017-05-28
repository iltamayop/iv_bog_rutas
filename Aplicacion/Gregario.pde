

class Gregario extends Usuario{
  

  
private int id,coordenada;
private float resultado,cxx,cyy;
private String nombre;
  int current1, graficar1;
 Puntos puntos;

  
  Gregario(){
  current1 = 1;
  graficar1 = 2;
}

float punto_inicio(){
return cxx;
}

float punto_final(float p){
    if ((p<4.655225)&&(p>4.5958157)) {
      cyy=1;  
  }
return cyy;
}
void p_encuentro(){
    
  color col = 0;

}

int  identificacion(){
  return id;
}
String nombre(){
return nombre;
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
