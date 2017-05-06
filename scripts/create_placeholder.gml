// creates a temporary object that will store the object index that created it, 
// to re-create the object again for the next iteration

obj = instance_create(x,y,obj_placeholder)
obj.placeholder_object = object_index // create the new object and store the objectindex that called this

