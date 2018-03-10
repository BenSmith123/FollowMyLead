// called by a playable room in its creation code

view_enabled = true
view_visible[0] = true

view_xport[0] = 0
view_yport[0] = 0
view_wport[0] = WIDTH
view_hport[0] = HEIGHT

view_xview[0] = 0
view_yview[0] = 0
view_wview[0] = WIDTH
view_hview[0] = HEIGHT

if IS_WINDOWS 
{
    window_set_fullscreen(true) // debug
    window_set_size(WIDTH,HEIGHT)
}

display_set_gui_size(WIDTH,HEIGHT)
