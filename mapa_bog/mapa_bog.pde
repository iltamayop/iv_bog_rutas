import de.fhpotsdam.unfolding.*;
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


 
void setup() {
        size(800, 600);
          map = new UnfoldingMap(this,new Microsoft.RoadProvider());
          MapUtils.createDefaultEventDispatcher(this, map);
          Location bogotaLocation = new Location(4.6f, -74.08f);
          map.zoomAndPanTo(bogotaLocation, 13);
         float maxPanningDistance = 31; // in km
         map.setPanningRestriction(bogotaLocation, maxPanningDistance);
         map.setZoomRange(10, 15);
         
           List<Feature> transitLines = GeoJSONReader.loadData(this,"data/local.geojson");
           List<Marker> transitMarkers = new ArrayList<Marker>();
                       for (Feature feature : transitLines) {
    ShapeFeature lineFeature = (ShapeFeature) feature;

    SimpleLinesMarker m = new SimpleLinesMarker(lineFeature.getLocations());
    String lineColor = lineFeature.getStringProperty("NOMBRE");
    color col = 0;
    // Original MBTA colors
 if (lineColor.equals("SUBA")) {
      col = color(44, 91, 167);
      
    }
    m.setColor(col);
    m.setStrokeWeight(5);
    transitMarkers.add(m); 
  }
  map.addMarkers(transitMarkers);
          List<Feature> countries = GeoJSONReader.loadData(this, "107B-1.geojson");
  List<Marker> countryMarkers = MapUtils.createSimpleMarkers(countries);
//  SimplePointMarker paradaMarker = new SimplePointMarker(PointFeature.getLocations());
 map.addMarkers(countryMarkers);

 }


     //       berlinMarker = new SimplePointMarker(berlinLocation);



 
void draw() {
  
    map.draw();

 

}
