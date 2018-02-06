

var rkey = keyboard_check(vk_right);
var lkey = keyboard_check(vk_left);
var jkey = keyboard_check_pressed(vk_up);

if (place_meeting(x, y+1, obj_solid)) {
    airjump = 1
    vspd = 0;
    
    if (jkey) {
        vspd = -jspd;
        }
} else {

    if (vspd < 10){
        vspd += grav;
        }
        

        if (airjump > 0){
            if (jkey){
                vspd = -jspd;
                airjump -= 1
            }
        }
}


if (rkey){
    hspd = spd;
    

    if (place_meeting(x-1, y, obj_solid) && !place_meeting(x, y+1, obj_solid) && !lkey)
        vspd = -jspd;
}


if (lkey){
    hspd = -spd;
    

    if (place_meeting(x+1, y, obj_solid) && !place_meeting(x, y-1, obj_solid) && !rkey)
        vspd = -jspd
        
}


if ((!rkey && !lkey) || (rkey && lkey)){
    hspd = 0;
}


if (place_meeting(x+hspd, y, obj_solid)){
    while (!place_meeting(x+sign(hspd), y, obj_solid)){
        x+= sign(hspd);
    }
    hspd = 0;
}

x += hspd;


if (place_meeting(x, y+vspd, obj_solid)){
    while (!place_meeting(x, y+sign(vspd), obj_solid)){
        y += sign(vspd)
    }
    vspd = 0;
}

y += vspd;
  
    
