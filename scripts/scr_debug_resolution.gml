/// toggle resolution

num += 1

if num = 5 // native - adaptable
{
    base_w = display_get_width()
    base_h = display_get_height()
}

if num = 4 // default 16:9
{
    base_w = 1024
    base_h = 576
}

if num = 3 // iphone X and up 19.5:9
{
    base_w = 2436 / 2 // dividing so it can fit on my screen
    base_h = 1125 / 2
}

if num = 1 // old devices 3:2
{
    base_w = 960
    base_h = 640
}

if num = 2 // iPad/tablet 4:3
{
    base_w = 1024
    base_h = 768
}


// show_message(string(num)+" = "+string(base_w)+"x"+string(base_h)) // debug
text = 'Display ' + string(num) + ' (' + string(WIDTH) + 'x' + string(HEIGHT) + ')'

print_debug(text)

if num == 5 {num = 0}

surface_resize(application_surface, base_w, base_h)

window_set_size(base_w, base_h) // temp - windows only

// this centers the view of the room for any given room_size / ratio size
offset_x = (room_width - base_w) / 2 
offset_y = (room_height - base_h) / 2

view_enabled = true
view_visible[0] = true

view_xport[0] = 0
view_yport[0] = 0
view_wport[0] = base_w
view_hport[0] = base_h

view_xview[0] = offset_x
view_yview[0] = offset_y
view_wview[0] = base_w
view_hview[0] = base_h

