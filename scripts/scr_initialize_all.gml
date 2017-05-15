/// initialize all global functions

global.user = "GM"
global.debug = true
global.overall_view = true
global.version = 1.1

alarm[0] = 600 // turn off debug mode

global.name = "Fred"

global.debug_msg = ""

global.player_number = 0 // start off as the first player

global.final_playthrough = false // show player number/name and their colour

// global.player_array[0] = 0


enum PLAYER_STATE {
is_alive,
is_dead
}

particle_effects()

if os_is_network_connected()
{
    instance_create(x,y,obj_online_message)
}

//surface_resize(application_surface,WIDTH,HEIGHT)

/*
// get each player name before starting
instance_create(x,y,obj_get_name)
