/// initialize all global functions

global.user = "GM"
global.debug = true
global.overall_view = true
global.version = 1.1

global.error_msg = ""

alarm[0] = 600 // turn off debug mode

global.player_number = 0 // start off as the first player

global.final_playthrough = false // show player number/name and their colour

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
