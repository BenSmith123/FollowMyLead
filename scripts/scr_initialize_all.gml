/// initialize all global functions

global.user = "GM"
global.debug = true
global.overall_view = true

global.name = "Fred"

global.debug_msg = ""

global.player_number = 1 // start off as the first player

global.final_playthrough = false // show player number/name and their colour

// global.player_array[0] = 0



enum PLAYER_STATE {
is_alive,
is_dead
}

instance_create(irandom_range(100,300),irandom_range(100,300),obj_player_current)

/*
// get each player name before starting
instance_create(x,y,obj_get_name)
