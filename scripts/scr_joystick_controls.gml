/// movement controls
/*
// WINDOWS AND VIRTUAL KEYS
if keyboard_check(ord('A')) {move_left = true} // left
if keyboard_check(ord('D')) {move_right = true} // right
if keyboard_check_pressed(ord('W')) {move_up = true}
if keyboard_check_pressed(ord('S')) {move_down = true}
if keyboard_check_pressed(vk_space) {move_attack = true}

// ALTERNATE KEYS
if keyboard_check(vk_left) {move_left = true}
if keyboard_check(vk_right) {move_right = true}
if keyboard_check_pressed(vk_up) {move_up = true}
if keyboard_check_pressed(vk_down) {move_down = true}


if move_left = true
{
    if place_meeting(x-5,y,obj_block) 
    {hspeed = 0}
    else
    {
        hspeed -= 4
    }
}

if move_right = true
{
    if place_meeting(x+5,y,obj_block) 
    {hspeed = 0}
    else
    {
        hspeed += 4
    }
}

if move_up = true
{
    if place_meeting(x,y-5,obj_block) 
    {vspeed = 0}
    else
    {
        vspeed -= 4
    }
}


if move_down = true
{
    if place_meeting(x,y+5,obj_block) 
    {vspeed = 0}
    else
    {
        vspeed += 4
    }
}


// player will stop moving when key is released
move_left = false
move_right = false
move_up = false
move_down = false
move_attack = false
