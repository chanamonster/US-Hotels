Map {
  background-color: #043a70;
}

#countries {
  ::outline {
    line-color: #85c5d3;
    line-width: 2;
    line-join: round;
  }
  polygon-fill: #5D5D5D;
}

#hotels1, #hotels2, #hotels3 { 
  marker-width:2;
  marker-fill:#f45;
  //marker-line-color:#813;
  marker-allow-overlap:true;
  
   	[stars >= -1]   { marker-fill: #F8DFC9; marker-fill:#F8DFC9} //cream
   	[stars >= 1] { marker-fill: #FF4D42; marker-fill:#FF4D42} //red
   	[stars >= 2]   { marker-fill: #FFC03A; marker-fill:#FFC03A} //orange
   	[stars >= 3] { marker-fill: #00CC83; marker-fill:#00CC83} //green
   	[stars >= 4]   { marker-fill: #00D8FF; marker-fill:#00D8FF} //light blue
   	[stars >= 5] { marker-fill: #0065E0; marker-fill:#0065E0} //dark blue
   	
  	[zoom >= 4][zoom <= 6]{
        marker-width: 6;
    }
    [zoom >= 2][zoom <= 3]{
      	marker-width: 4;
    }
    [zoom >= 7]{
      	marker-width: 7;
    }
  	[zoom > 2]{
    	marker-width: 2;
    }
 }

#popcities {
  
  [type >= 1]{ //big touristy
      point-file: url(icons/pointer.svg);
      point-allow-overlap:true;
      [zoom >= 4][zoom <= 6]{
        point-transform: "scale(0.06)";
      }
      [zoom >= 1][zoom <= 3]{
        point-transform: "scale(0.02)";
      }
      [zoom < 7]{
        point-transform: "scale(0.1)"; 
      }
  }
  
  [type <= 0]{ //population ranking
      point-file: url(icons/pointer-pop2.svg);
      point-allow-overlap:true;
      [zoom >= 4][zoom <= 6]{
        point-transform: "scale(0.5)"; 
      }
      [zoom >= 1][zoom <= 3]{
        point-transform: "scale(0.2)";
      }
      [zoom < 7]{
        point-transform: "scale(1)";
      }
    
      [zoom >= 3]{
        ::label{
          text-name: "[rank]";
          text-face-name: "Aller Bold";
          text-allow-overlap: true;
          text-size: 12%;
          text-fill: #FFF;
          text-dy: -1%;
        }
      }
      [zoom < 3]{
          ::label{
            text-name: "[rank]";
            text-face-name: "Aller Bold";
            text-allow-overlap: true;
            text-size: 7%;
            text-fill: #FFF;
            text-dy: -1%;
          }
      }
  }
  
  
}

#circle1, #circle2, #circle3, #circle4, #circle5 {
    width: 10px;
    height: 10px;
    -webkit-border-radius: 1px;
    -moz-border-radius: 1px;
    border-radius: 1px; 
}
#circle1{background-color: #FF4D42;}
#circle2{background-color: #FFC03A;}
#circle3{background-color: #00CC83;}
#circle4{background-color: #00D8FF;}
#circle5{background-color: #0065E0;}