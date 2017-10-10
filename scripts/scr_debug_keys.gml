
debug_info = "P = Show debug controls
O = Show global.player array"

if keyboard_check_pressed(ord("P")) {show_message_async(debug_info)}

if keyboard_check_pressed(ord("O")) {show_message_async(global.player_array)}
