/// movement controls


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

player_speed_x = 0 // the wanted speed - use this to control the how fast the player CAN when moving
player_speed_y = 0

player_speed_x += max_speed // moving right, so adding max speed now
player_speed_y -= max_speed

SpeedX += (player_speed_x - SpeedX) * accel // smoothly increase the speed until the max speed is reached
SpeedY += (player_speed_y - SpeedY) * accel

projected_x = x + lengthdir_x(abs(SpeedX), vs_dir) // the next x position (calculated from the length-direction, current x and player speed)
projected_y = y + lengthdir_y(abs(SpeedY), vs_dir)

// collision X
if (place_meeting(projected_x, y, parent_block))
{
    while (!place_meeting(projected_x, y, parent_block)) { x += sign(SpeedX) } // basically move to contact
    SpeedX = 0
}

// collision Y
if(place_meeting(x, projected_y, parent_block))
{
    while(!place_meeting(x, projected_y, parent_block)) { y += sign(SpeedY) }
    SpeedY = 0
}


// do the actual movement!
if vstick_check(2)
{
    x += lengthdir_x(abs(SpeedX), vs_dir)
    y += lengthdir_y(abs(SpeedY), vs_dir)
}

SpeedX = 0
SpeedY = 0

////////////////////////////

if IS_WINDOWS
{
    // player will stop moving when key is released
    move_left = false
    move_right = false
    move_up = false
    move_down = false
    // move_attack = false
}


