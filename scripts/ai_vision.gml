///ai_vision(obj_player_current,field_of_vision,direction_facing,vision_length)
//argument0=player object
//argument1=the field of vision
//argument2=the direction of looking
//argument3=the length of vision

// if ai_view(enemy,view_width,idk,view_length) = true

//ai_get_closest_player()
if instance_exists(argument0)
{
    if collision_line(x,y,argument0.x,argument0.y,parent_block,true,false) < argument3
    {
        //spotted_player = ai_cone_vision(argument2,argument1,argument3,obj_player_current.x,obj_player_current.y)
        return ai_cone_vision(argument2,argument1,argument3,argument0)
    }
    //else
   // {ai_behaviour_move_towards_shoot()}
}







/*

if instance_exists(argument0)
{
    if argument0.state = PLAYER_STATE.is_alive
    {
        if collision_line(x,y,argument0.x,argument0.y,parent_block,true,false) < argument3
        {return ai_cone_vision(argument2,argument1,argument3,argument0.x,argument0.y)}
        else
        {seen = false}
    }
}
