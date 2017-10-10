// get the closest player, if the player is seen, face the player, move towards the player and shoot

if is_alive = true
{
    //ai_get_closest_player()

    //if not closest_player = 0
    {
        // go through array of players
        for(i = 1; i <= instance_number(obj_player_current); i++)
        {
            //if global.player_array[i].state = PLAYER_STATE.is_alive // if player is alive
            {
                //if ai_vision(global.player_array[i],300,image_angle,350) // if the player is seen
                if ai_vision(obj_player_current,300,image_angle,350) // if the player is seen
                {seen = true}
                else
                {
                    seen = false
                    hspeed = 0
                    vspeed = 0
                }
            }
        }

        if seen = true
        {
            dir = point_direction(x,y,temp2.x,temp2.y)
            
            image_angle = (image_angle+(sin(degtorad(dir-image_angle))*10))
        
            if distance_to_object(temp2) < 300
            {
                move_towards_point(temp2.x,temp2.y,3)
                ai_shoot()
            }
        }
    }
}




/***


// get the closest player, if the player is seen, face the player, move towards the player and shoot

ai_get_closest_player()

if is_alive = true
{
    if instance_exists(obj_player_current)
    {
        if ai_vision(closest_player,300,100,300)
        {
            dir = point_direction(x,y,closest_player.x,closest_player.y)
            
            image_angle = (image_angle+(sin(degtorad(dir-image_angle))*10))
        
            if distance_to_object(closest_player) < 300
            {
                move_towards_point(closest_player.x,closest_player.y,3)
        
                ai_shoot()
            }
        }
        else
        {
            hspeed = 0
            vspeed = 0
        }
    }
}
