/// movement controls

// SHOOTING

if move_attack
{
    shoot()
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

