/// uses player distance/line of sight to shoot at an enemy

if instance_exists(parent_ai)
{
    target_enemy = instance_nearest(x,y,parent_ai) // get the closest enemy object

    if distance_to_object(target_enemy) < 300
    {
        // temp = image_angle2-point_direction(x, y, target_enemy.x, target_enemy.y) // TODO - is this used for particles or should be removed?
    
        // line of sight
        if image_angle2 >= point_direction(x, y, target_enemy.x, target_enemy.y)-20 and image_angle2 <= point_direction(x, y, target_enemy.x, target_enemy.y)+20
        {
            draw_sprite(spr_reticle, 0, target_enemy.x, target_enemy.y)
        
            if (collision_line(x, y, target_enemy.x, target_enemy.y, parent_block, false, true) == noone)
            {
                shoot()
                dir = point_direction(x,y,target_enemy.x,target_enemy.y)
            }
        }
    }
   
}

