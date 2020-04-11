/// handles all pause menu logic - ran when clicking any pause menu object

if text = 'Resume'
{
    instance_activate_all()
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



