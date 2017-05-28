
import de.fhpotsdam.unfolding.geo.*;
import de.fhpotsdam.unfolding.utils.*;
import de.fhpotsdam.unfolding.providers.*;
import de.fhpotsdam.unfolding.utils.*;
import de.fhpotsdam.unfolding.marker.*;
import de.fhpotsdam.unfolding.*;
import de.fhpotsdam.unfolding.data.*;
import de.fhpotsdam.unfolding.geo.*;
import java.util.List;

UnfoldingMap map;
SimplePointMarker berlinMarker;
Usuario usuario;
String nom,localidad;
float puntoi;
float cx,cy;
int current = 1, graficar = 2;
void setup() {
  size(800, 600);
                
           
          map = new UnfoldingMap(this,new Microsoft.RoadProvider());
          MapUtils.createDefaultEventDispatcher(this, map);
          Location bogotaLocation = new Location(4.6f, -74.08f);
          map.zoomAndPanTo(bogotaLocation, 13);
          float maxPanningDistance = 31; // in km
          map.setPanningRestriction(bogotaLocation, maxPanningDistance);
          map.setZoomRange(10, 15);
         usuario=new Gregario();
}


void draw() {
  
  //  usuario.p_encuentro( );
    map.draw();
             Location location = map.getLocation(mouseX, mouseY);
     if (mouseButton == LEFT) {
   puntoi = location.getLat();
   cx= usuario.punto_final(puntoi);
   println(puntoi);
            List<Feature> transitLines = GeoJSONReader.loadData(this,"data/local.geojson");
         List<Marker> transitMarkers = new ArrayList<Marker>();
          for (Feature feature : transitLines) {
         ShapeFeature lineFeature = (ShapeFeature) feature;
         SimpleLinesMarker m = new SimpleLinesMarker(lineFeature.getLocations());
   String lineColor = lineFeature.getStringProperty("NOMBRE");

    color col = 0;
    // Original MBTA colors
 if ((lineColor.equals("BOSA"))&&(cx==1)) {
      col = color(44, 91, 167);
         m.setColor(col);
    m.setStrokeWeight(5);
     transitMarkers.add(m);
    }
          }
           map.addMarkers(transitMarkers);
  } 
  
 // cx= usuario.punto_final(puntoi);
}


void keyPressed() {
  if (key == ' ' ){

 current = current <graficar ? current+1 : 1;

  }
   switch(current) {   
    case 1:
    background  (255,180,89);
    usuario=new Gregario();
    break;
   case 2:
   background  (random(100));
    usuario=new Gregario();
    
    break;
     }
}


