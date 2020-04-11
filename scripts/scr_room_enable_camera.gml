// called by a PLAYABLE room in its creation code

view_enabled = true
view_visible[0] = true

view_xport[0] = 0
view_yport[0] = 0
view_wport[0] = WIDTH / global.view_zoom
view_hport[0] = HEIGHT / global.view_zoom

//view_xview[0] = 0 // camera starts on the leave_room object
//view_yview[0] = 0 // ^^ this also causes the camera to reset when pausing
view_wview[0] = WIDTH / global.view_zoom
view_hview[0] = HEIGHT / global.view_zoom

//display_set_gui_size(WIDTH,HEIGHT)

