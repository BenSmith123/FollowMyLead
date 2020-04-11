/// get the closest player thats alive

target_player = 0 // refreshes when a player has died for the AI to target another player

// get the closest player object
if instance_exists(parent_player)
{
    // go through array of players
    for(i = 1; i <= instance_number(parent_player); i++) // number of players alive minus the recording one
    {
        if instance_exists(global.player_array[i]) //global.player_array[i] != 0
        {
            if global.player_array[i].is_alive == true // if player is alive
            {
                if distance_to_object(global.player_array[i]) < distance_to_object(target_player) // if player is closer than the current closest player
                {
                    if (collision_line(x, y, global.player_array[i].x, global.player_array[i].y, parent_block, false, true) == noone)
                    {
                        target_player = global.player_array[i] // target the closest player
                        
                        // if seen == false { alarm[0] = SHOOT_TIME } // don't shoot instantly when first seeing an enemy
                        seen = true
                    }
                }
            }
        }
    }
}

