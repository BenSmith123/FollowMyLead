/// movement controls

//stick_multiplier = 1 // on mobile, this effects the player speed based on how far the stick was pulled


// WINDOWS AND JOYSTICK
if IS_WINDOWS
{
    if keyboard_check(ord('A')) {move_left = true} // left
    if keyboard_check(ord('D')) {move_right = true} // right
    if keyboard_check(ord('W')) {move_up = true}
    if keyboard_check(ord('S')) {move_down = true}
    if mouse_check_button_pressed(mb_left) {move_attack = true}
    
    // ALTERNATE KEYS
    if keyboard_check(vk_left) {move_left = true}
    if keyboard_check(vk_right) {move_right = true}
    if keyboard_check(vk_up) {move_up = true}
    if keyboard_check(vk_down) {move_down = true}
    if keyboard_check_pressed(vk_space) {move_attack = true}
}


// Movement for MOBILE is handled by obj_virtual_joystick

// SHOOTING

if move_attack = true
{
    shoot()
    //array_shoot[counter] = true
    move_attack = false
}

vs_dir = vstick_get_direction(2) // joystick move direction

player_speed = 0; //This is our wanted speed, and it would be set depending on which key is pressed. We set it to zero here in case no keys are pressed
player_speed_y = 0

//// LEFT / RIGHT MOVEMENT ////
//if(move_left)
    //{player_speed -= max_speed} //Wanted speed is to the left, so negative. Since the wanted speed is 0 at the beginning of each step, we can subtract the max speed.
                        //By doing this, if the user is pressing both keys the values will cancel out and give 0.
//if(move_right)
    {player_speed += max_speed} //Moving right, so adding max speed now
    
SpeedX += (player_speed - SpeedX) * accel //This will smoothly add to our movement speed each step until we reach the wanted speed

// collision
if(place_meeting(x + SpeedX, y, parent_block))
{
    while(!place_meeting(x + sign(SpeedX), y, parent_block)) {x += sign(SpeedX)} //Basically move to contact
    SpeedX = 0 // Stop movement
}

//// UP / DOWN MOVEMENT ////
//if(move_up)
    {player_speed_y -= max_speed} //Wanted speed is to the left, so negative. Since the wanted speed is 0 at the beginning of each step, we can subtract the max speed.
                        //By doing this, if the user is pressing both keys the values will cancel out and give 0.
//if(move_down)
   // {player_speed_y += max_speed} //Moving right, so adding max speed now
    
SpeedY += (player_speed_y - SpeedY) * accel //This will smoothly add to our movement speed each step until we reach the wanted speed

// collision
if(place_meeting(x , y + SpeedY, parent_block))
{
    while(!place_meeting(x, y + sign(SpeedY) ,parent_block)) {y += sign(SpeedY)} //Basically move to contact
    SpeedY = 0 // Stop movement
}



if vstick_check(2)
{
    x += lengthdir_x(abs(SpeedX),vs_dir)
    y += lengthdir_y(abs(SpeedY),vs_dir)
}

SpeedX = 0
SpeedY = 0

////////////////////////////


// player will stop moving when key is released
move_left = false
move_right = false
move_up = false
move_down = false
// move_attack = false


