
if can_shoot = true
{
    idd = instance_create(x+lengthdir_x(len,image_angle),y+lengthdir_y(len,image_angle),obj_bullet_player)
    idd.direction = image_angle
    idd.image_angle = image_angle
    idd.speed = 14
    
    can_shoot = false
    alarm[0] = SHOOT_TIME
}

