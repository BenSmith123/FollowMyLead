// get the closest player, if the player is seen, face the player, move towards the player and shoot

if is_alive = true
{
    ai_get_closest_player()

    if target_player != 0
    {
        if seen == true
        {           
            dir = point_direction(x,y,target_player.x,target_player.y)
            
            image_angle = (image_angle+(sin(degtorad(dir-image_angle)) * aiming_speed))
        
            if distance_to_object(target_player) < view_distance
            {
                if distance_to_object(target_player) > 50 
                {move_towards_point(target_player.x,target_player.y,3)}
                else
                {
                    hspeed = 0
                    vspeed = 0
                }
                
                gun_image_angle = image_angle // ai_shoot uses gun_image_angle (for turrets etc) so have to make this compatible
                ai_shoot()
            }
        }
    }
    else
    {
        hspeed = 0
        vspeed = 0
    }
    
}


