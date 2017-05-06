/*
if active = true
{
    //if global.type = 'Secondary' {exit}
    
    if global.ammo > 0
    {
        if reload = false
        {
            if canshoot = true
            { 
                obj_mouse.image_index = 1
                
                repeat(global.bullet_num[global.weapon])
                {
                
                    if dir = 1 {bullet_case_dir = aim +90+random(+20)}
                    if dir = -1 {bullet_case_dir = aim -90-random(-20)}
                
                    idd = instance_create(x+lengthdir_x(Len,Angle+image_angle),y+lengthdir_y(Len,Angle+image_angle),bullet_type)
                    
                    bul = instance_create(x,y,obj_bullet_case)
                    if bullet_type = obj_grenade_bullet {bul.scare = 1}
                    bul.speed = 6
                    bul.direction = bullet_case_dir
                    
                    idd.speed = global.bullet_speed[global.weapon]
                    idd.sprite_index = global.bullet_spr[global.weapon]
                    
                    canshoot = false
                    alarm[0] = global.rate[global.weapon]
                    
                    // rocket and grenade bullets
                    if global.weapon = 8 {idd.owner = 'Player'}
                    if global.weapon = 9 {idd.owner = 'Player'}
                    
                    idd.direction = image_angle+random(global.accuracy[global.weapon])-random(global.accuracy[global.weapon])
                    
                    if global.weapon = 3 // if weapon is shotgun
                    {idd.alarm[0] = global.shotgun_range} // delete the bullet after __ steps
                    
                    global.ammo -= 1
                    
                    part_system_depth(global.p_general,-85)
                    part_particles_create(global.p_general,x+lengthdir_x(Len,Angle+image_angle),y+lengthdir_y(Len,Angle+image_angle),global.s_smoke_fx,1)
                    
                    
                    is_shooting = 1 // for shooting effect (draw)
                    muzzel_alpha = 2
                    muzzel_sprite += irandom_range(1,5)
                    
                    
                    part_particles_create(global.p_general,x+lengthdir_x(Len,Angle+image_angle),y+lengthdir_y(Len,Angle+image_angle),global.shooting_flash,1)
                    
                    
                    aim += (random(8)-8/2)
                    
                }
                
            }
            
        }
        
    }

}

        
