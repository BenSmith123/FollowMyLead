/// handles all pause menu logic - ran when clicking any pause menu object

if text = 'Resume'
{
    instance_activate_all()

    if instance_exists(obj_player_current)
    {
         view_xview = obj_player_current.x
         view_yview = obj_player_current.y
    }
    
    instance_destroy(parent_button_pause)
}


if text = 'Restart'
{
    room_restart()
}


if text = 'Exit' // exit to main menu
{
    room_goto(room_menu)
}



