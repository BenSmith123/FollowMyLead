
if can_shoot
{
    // idd = instance_create(x+lengthdir_x(len,angle+image_angle),y+lengthdir_y(len,angle+image_angle),obj_bullet_player)
    //instance_create(x+lengthdir_x(len,image_angle),y+lengthdir_y(len,image_angle),obj_bullet_spark)
    
    last_shot = global.counter // the count of the last shot fired
    has_fired = true
    
    print_debug("current shot at: "+string(global.counter))
    
    idd = instance_create(x+lengthdir_x(len,image_angle2),y+lengthdir_y(len,image_angle2),obj_bullet_player)
    idd.direction = image_angle2
    idd.image_angle = image_angle2
    idd.speed = bullet_speed
    idd.image_index = 1
    
    muzzle_fx = instance_create(x,y,obj_fx_muzzle_flare)
    muzzle_fx.obj = id
    
    alarm[1] = reload_time
    can_shoot = false
}

