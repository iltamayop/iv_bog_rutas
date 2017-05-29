
 class Puntos  {
 int pi,pf;
   
   Puntos(){
     pi=0;
     pf=0;
 }

void punto_inicio(){

               Location location = map.getLocation(mouseX, mouseY);
 // text(location.getLat() + ", " + location.getLon(), mouseX, mouseY);

   

 
 Location berlinLocation = new Location(location.getLat(),location.getLon());
  if(count==0){

 count=1;
// }
 SimplePointMarker berlinMarker = new SimplePointMarker(berlinLocation);
 map.addMarker(berlinMarker);

 }
 
       
      for (Marker marker : map.getMarkers()) {   // elemento del arreglo : nombre elemento para obtener marcadores del mapa.
         marker.setSelected(false);//borra el marcador seleccionado
         }


  Marker marker = map.getFirstHitMarker(mouseX, mouseY);//método unfolding getfirsthitmarker: Comprueba si un marcador ha sido alcanzado con las coordenadas dadas por el mouse.
  if ((marker != null)) {//

    marker.setSelected(true);//se selecciona el marcador

    String ads=marker.getStringProperty("NOMBRE");//del archivo local.geojson se identifica el nombre del marcador seleccionado (localidad)

if(ads.equals("BOSA")){
  println(ads);
  Location bomba = new Location(4.603875,-74.187035);
  SimplePointMarker bombaMarker = new SimplePointMarker(bomba);
       
point_draw();
ScreenPosition berlinPos = bombaMarker.getScreenPosition(map);
  ellipse(berlinPos.x, berlinPos.y, 36, 36);
  map.addMarker(bombaMarker);
   text("punto de encuentro: bomba de la 86 sur", berlinPos.x , berlinPos.y + 4);
}
if(ads.equals("KENNEDY")){
  println(ads);
  Location bomba = new Location(4.630356,-74.138145);
  SimplePointMarker bombaMarker = new SimplePointMarker(bomba);
       ScreenPosition berlinPos = bombaMarker.getScreenPosition(map);
point_draw();
  ellipse(berlinPos.x, berlinPos.y, 36, 36);
  map.addMarker(bombaMarker);
   text("punto de encuentro: av.boyacá con 1ra de mayo", berlinPos.x , berlinPos.y + 4);
}
if(ads.equals("CIUDAD BOLIVAR")){
  println(ads);
  Location bomba = new Location(4.5971,-74.177414);
  SimplePointMarker bombaMarker = new SimplePointMarker(bomba);
       ScreenPosition berlinPos = bombaMarker.getScreenPosition(map);
  noFill();
  ellipse(berlinPos.x, berlinPos.y, 36, 36);
  map.addMarker(bombaMarker);
  text("punto de encuentro: el apogeo", berlinPos.x , berlinPos.y + 4);

}
  }

}

float punto_final(){
return pf;
}
////
//
//

     void p_encuentro(){



    }
         void point_draw(){

 strokeWeight(16);
  stroke(67, 211, 227, 100);
   noFill();


    }
    

  

}
