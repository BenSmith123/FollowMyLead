/// initialize all global functions

global.user = "GM"

global.debug = false
global.debug_performance = false
global.debug_array_output = false // log data to gamemaker console
global.debug_invincible = false

// persistent debug controls - delete later
if global.debug { instance_create(0, 0, obj_controller_debug) } 

global.overall_view = true
global.version = 0.0

global.server_message = ""

global.error_msg[0] = ""
global.error_log_size = 0

global.instant_aim = false // TODO - this work and/or is a debug?


//alarm[0] = 600 // turn off debug mode

global.player_number = 0 // start off as the first player

// gameplay options
global.auto_target = true
global.view_zoom = 2 // 1 is the native pixel scale

global.show_player_number = true



particle_effects()
/*
if os_is_network_connected()
{
    instance_create(x,y,obj_online_message)
}

//surface_resize(application_surface,WIDTH,HEIGHT)

/*
// get each player name before starting
instance_create(x,y,obj_get_name)
