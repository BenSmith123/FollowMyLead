/// movement controls

if (move_left = false) {hspeed = 0}
if (move_right = false) {hspeed = 0}
if (move_up = false) {vspeed = 0}
if (move_down = false) {vspeed = 0}

hspd = 4
collision_distance=speed


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

if IS_MOBILE // mobile virtual joystick!
{
    vs_dir = vstick_get_direction(2)
    
    if vstick_check(2) // checks if the vstick is being used
    {
    
        if place_free(x+lengthdir_x(5,vstick_get_direction(2)),y+lengthdir_y(5,vstick_get_direction(2)))
        {
            x+=lengthdir_x(10,vstick_get_direction(2))/3
            y+=lengthdir_y(10,vstick_get_direction(2))/3
        }
    
        /********
        if (vs_dir > 315 || vs_dir <= 45) {move_right = true}
        if (vs_dir > 225 && vs_dir <= 315) {move_down = true}
        if (vs_dir > 135 && vs_dir <= 225) {move_left = true}
        if (vs_dir > 45 && vs_dir <= 135) {move_up = true}
        ********/
    }
}
    
// SHOOTING
if move_attack = true
{
    shoot()
    array_shoot[counter] = true
    move_attack = false
}

// MOVEMENT
if move_left = true
{
    if !place_free(x-collision_distance,y) 
    {hspeed = 0}
    else
    {
        hspeed = -player_speed
    }
}

if move_right = true
{
    if !place_free(x+collision_distance,y) 
    {hspeed = 0}
    else
    {
        hspeed = player_speed
    }
}

if move_up = true
{
    if !place_free(x,y-collision_distance) 
    {vspeed = 0}
    else
    {
        vspeed = -player_speed
    }
}


if move_down = true
{
    if !place_free(x,y+collision_distance) 
    {vspeed = 0}
    else
    {
        vspeed = player_speed
    }
}


// player will stop moving when key is released
move_left = false
move_right = false
move_up = false
move_down = false
// move_attack = false

