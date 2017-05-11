/// initialize all global functions

global.user = "GM"
global.debug = true
global.overall_view = true

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

instance_create(x,y,obj_background)

// set the spawn globals depending on where the player spawn object is
global.player_spawn_x = obj_spawn_point.x
global.player_spawn_y = obj_spawn_point.y
with (obj_spawn_point) instance_destroy() // destroy the object, SAVE MEMORY

instance_create(global.player_spawn_x,global.player_spawn_y,obj_player_current)

particle_effects()

/*
// get each player name before starting
instance_create(x,y,obj_get_name)
