
if can_shoot = true
{
    idd = instance_create(x+lengthdir_x(len,gun_image_angle),y+lengthdir_y(len,gun_image_angle),obj_bullet_player)
    idd.direction = gun_image_angle
    idd.image_angle = gun_image_angle
    idd.speed = bullet_speed
    
    can_shoot = false
    alarm[0] = SHOOT_TIME
}

