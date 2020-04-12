// get the closest player, if the player is seen, face the player, shoot

if is_alive = true
{
    ai_get_closest_player()

    if target_player != 0
    {
        if distance_to_object(target_player) < 300
        {
            dir = point_direction(x,y,target_player.x,target_player.y)
            
            gun_image_angle = (gun_image_angle+(sin(degtorad(dir-gun_image_angle)) * aiming_speed))
        
            if seen == true
            {
                if round(dir) == round(gun_image_angle) // wait until target locked, don't shoot while gun isn't facing target
                { ai_shoot() }
            }
        }
    }
}

