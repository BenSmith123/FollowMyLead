/// uses player distance/line of sight to shoot at an enemy

target_locked = false
target_enemy = 0

if instance_exists(parent_ai)
{
    if distance_to_object(parent_ai) < player_sight // if there is any enemy within player distance
    {
        target_enemy = instance_nearest(x+lengthdir_x(len+player_sight,image_angle2),y+lengthdir_y(len+player_sight,image_angle2), parent_ai);
    
        // temp = image_angle2-point_direction(x, y, target_enemy.x, target_enemy.y) // TODO - is this used for particles or should be removed?
        
        // line of sight
        if image_angle2 >= point_direction(x, y, target_enemy.x, target_enemy.y)-28 and image_angle2 <= point_direction(x, y, target_enemy.x, target_enemy.y)+28
        {
            if (collision_line(x, y, target_enemy.x, target_enemy.y, parent_block, false, true) == noone) // if there isn't a wall in the way
            {
                target_locked = true // change the reticle
                shoot()
                dir = point_direction(x,y,target_enemy.x,target_enemy.y)
            }
        }
    }
}
