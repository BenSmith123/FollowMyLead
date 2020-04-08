/// handles all pause menu logic - ran when clicking any pause menu object

if text = 'Resume'
{
    with (parent_button_pause) instance_destroy()
    instance_activate_all()
}

if text = 'Exit' // exit to main menu
{
    instance_activate_all()
    room_goto(room_menu)
}

