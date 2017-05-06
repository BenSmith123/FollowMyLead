

// idd = instance_create(x+lengthdir_x(len,angle+image_angle),y+lengthdir_y(len,angle+image_angle),obj_bullet_player)
idd = instance_create(x+lengthdir_x(len,image_angle),y+lengthdir_y(len,image_angle),obj_bullet_player)
idd.direction = image_angle
idd.image_angle = image_angle
idd.speed = 16

