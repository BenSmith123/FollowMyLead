/// NEW ITERATION!
// calls each objects iteration code to reset everything

// DELETE OBJECTS
with (obj_shield_player) instance_destroy()
with (obj_footstep) instance_destroy() // delete all footsteps
with (obj_player_current) instance_destroy() // delete the current player
with (obj_player_dead) instance_destroy() // delete all dead bodies


// call each objects iteration code, in specific order!

with (parent_ai) {event_user(0)} // delete ai
with (obj_placeholder) {event_user(0)} // create objects again - AI, pickups, breakable walls

with (obj_player_clone) {event_user(0)} // reset position, arrays, hp
with (obj_player_recorder) {event_user(0)} // create new clone


global.counter = 1 // RESET COUNTER

// GET THE NEXT SPAWN POSITION
if global.player_spawn_x > 1420
{
    global.player_spawn_x = 896
    global.player_spawn_y += 100
} 
else 
{global.player_spawn_x += 100} // increase the spawn x position for each player


// CREATE NEW PLAYER OBJECT
instance_create(global.player_spawn_x,global.player_spawn_y,obj_player_current) 
