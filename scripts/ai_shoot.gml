
if can_shoot = true
{
    bullet = instance_create(x+lengthdir_x(len,gun_image_angle),y+lengthdir_y(len,gun_image_angle),obj_bullet_ai)
    bullet.direction = gun_image_angle
    bullet.image_angle = gun_image_angle
    bullet.speed = bullet_speed
    
    instance_create(x+lengthdir_x(len,gun_image_angle),y+lengthdir_y(len,gun_image_angle),obj_fx_shoot_flash)
    
    can_shoot = false
    alarm[0] = SHOOT_TIME
}

