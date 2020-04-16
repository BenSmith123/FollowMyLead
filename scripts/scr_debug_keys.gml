
debug_info = "P = Show debug controls
I = Toggle invincibility
D = Toggle debug mode
M = Move to mouse
"

if keyboard_check_pressed(ord("P")) { show_message(debug_info) }

if keyboard_check_pressed(ord('I')) { global.debug_invincible = !global.debug_invincible }

if keyboard_check_pressed(ord('D')) { global.debug = !global.debug }

if keyboard_check_pressed(ord('M')) 
{ 
    if instance_exists(obj_player_current)
    {
        obj_player_current.x = mouse_x
        obj_player_current.y = mouse_y
    }
}

// function keys
if keyboard_check_pressed(vk_escape) {game_end()}
if keyboard_check_pressed(vk_f11) {room_goto_next()}
if keyboard_check_pressed(vk_f12) {game_restart()}

