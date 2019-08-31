///scr_show_menu_item(object_index)

pressed_index = argument0

// reset the menu 
instance_destroy(object89)

//if obj_menu_controller.menu_state == 0
if pressed_index == obj_menu_button_play.object_index
{
    show_message("reee")
}

/*
obj_menu_button_store
obj_menu_button_instuctions
obj_menu_button_about
obj_menu_button_settings

