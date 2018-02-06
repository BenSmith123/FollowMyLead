/// get the closest player thats alive

// get the closest player object
if instance_exists(parent_ai)
{
    target_enemy = instance_nearest(x,y,parent_ai)

    if distance_to_object(target_enemy) < 300
    {
        temp = image_angle2-point_direction(x, y, target_enemy.x, target_enemy.y)
    
        if image_angle2 >= point_direction(x, y, target_enemy.x, target_enemy.y)-20 and image_angle2 <= point_direction(x, y, target_enemy.x, target_enemy.y)+20
        {
            if (collision_line(x, y, target_enemy.x, target_enemy.y, parent_block, false, true) == noone)
            {
                shoot()
                dir = point_direction(x,y,target_enemy.x,target_enemy.y)
            }
        }
    }
   
}

