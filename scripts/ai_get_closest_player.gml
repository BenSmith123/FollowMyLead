/// get the closest player thats alive

closest_player = 0 // refreshes when a player has died for the AI to target another player

// get the closest player object
if instance_exists(obj_player_current)
{
    // go through array of players
    for(i = 1; i <= instance_number(obj_player_current); i++)
    {
        if global.player_array[i].state = PLAYER_STATE.is_alive // if player is alive
        {
            if distance_to_object(global.player_array[i]) < distance_to_object(closest_player) // if player is closer than the current closest player
            {
                //if global.player_array[i] = temp2 // TEMP if the player is spotted
                {
                    closest_player = global.player_array[i] // target the closest player
                }
            }
        }
    }
}

