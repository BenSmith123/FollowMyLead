//argument0=the instance's id
//argument1=the field of vision
//argument2=the direction of looking
//argument3=the length of vision



// if ai_view(enemy,view_width,idk,view_length) = true

if instance_exists(argument0)
{
    if collision_line(x,y,argument0.x,argument0.y,parent_block,true,false) < argument3
    {return cone_vision(argument2,argument1,argument3,argument0.x,argument0.y)}
    else
    {seen = false}
}
