// creates a temporary object that will store the object index that created it, 
// to re-create the object again for the next iteration

obj = instance_create(x,y,obj_mark_death)
obj.death_sprite = sprite_index // create the new object and store the objectindex that called this
obj.image_index = 0
