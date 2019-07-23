require("chartkick");
require("chart.js");

import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';

$(document).ready(function(){
  $(".category-choice").click(function(){
  $(".category-choice.active").removeClass("active");
    $(this).addClass("active");
  });
});

$(document).ready(function(){
  $(".participant-box").click(function(){
    $(this).toggleClass("active");
  });
});

initMapbox();
