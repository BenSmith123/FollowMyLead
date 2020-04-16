 // get the closest player, if the player is seen, face the player, shoot

// limit gun_image_angle to be the same as image_angle (0~360) degrees
if gun_image_angle >= 360 { gun_image_angle = 0 }
if gun_image_angle < 0 { gun_image_angle = 360 }
 
if is_alive = true
{
    ai_get_closest_player()

    if target_player != 0
    {
        if distance_to_object(target_player) < 300
        {
            dir = point_direction(x,y,target_player.x,target_player.y)
            gun_image_angle = (gun_image_angle+(sin(degtorad(dir-gun_image_angle)) * aiming_speed))
        
            if seen
            {
                // wait until target locked, don't shoot while gun isn't facing target
                if abs(dir - gun_image_angle) < 10 // 10 being the difference between the angles - this way the gun doesn't have to be perfectly on the player  
                { ai_shoot() }
            }
        }
    }
}

