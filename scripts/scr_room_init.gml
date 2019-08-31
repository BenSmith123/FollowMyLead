// called in the first room of the games creation code
// ^^ initialises the games room settings for scaling (16:9 ratio)

var base_w = WIDTH;
var base_h = HEIGHT;
var aspect = base_w / base_h ; // get the GAME aspect ratio
    
//landscape
var hh = min(base_h, HEIGHT);
var ww = hh * aspect;
    
surface_resize(application_surface, ww, hh);
