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
  $(".urgency-choice").click(function(){
  $(".urgency-choice.active").removeClass("active");
    $(this).addClass("active");
  });
});

$(document).ready(function(){
  $(".category-choice-edit").click(function(){
  $(".category-choice-edit.active").removeClass("active");
    $(this).addClass("active");
  });
});

$(document).ready(function(){
  $(".participant-box").click(function(){
    $(this).toggleClass("active");
  });
});

import { initSweetalert } from '../plugins/init_sweetalert';

initSweetalert('#sweet-alert-demo', {
  title: "Task saved",
  icon: "success"
});

initSweetalert('#inventory-alert', {
  title: "Task to replace item has been created",
  icon: "success"
});

initMapbox();
