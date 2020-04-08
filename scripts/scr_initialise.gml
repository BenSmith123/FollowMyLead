/// initialize all global functions

global.user = "GM"

global.debug = true
global.debug_performance = false
global.debug_player = false
global.debug_array_output = false
global.debug_invincible = false
global.debug_zoom = 1

// persistent debug controls - delete later
if global.debug { instance_create(0, 0, obj_controller_debug) } 

global.overall_view = true
global.version = 1.0

if IS_MOBILE {global.system = "Mobile"}
else {global.system = "Windows"}

global.server_message = ""

global.error_msg[0] = ""
global.error_log_size = 0

global.instant_aim = false
global.show_player_number = true

//alarm[0] = 600 // turn off debug mode

global.player_number = 0 // start off as the first player

global.auto_target = true

// global.player_array[0] = 0


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
