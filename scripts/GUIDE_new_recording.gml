
/*


----
obj_controller_playable will count to 1 minute (3600 steps)
each iteration the count will be reset to 0
once 3600 is reached, destroy any existing obj_player_current and set all obj_player_clone to is_alive = false
----

PARENT_PLAYER:

--- obj_player_current ---

--- obj_player_clone ---


obj_player_current creates a obj_player_clone and sets the is_recording to true so obj_player_clone 
stores the players movement etc.

when obj_player_current dies, delete it, the obj_player_clone that was recording it freezes and sets is_recording to false

once <shift> is pressed, the obj_player_clone becomes a copy of what happened by using the values stored
(with is_recording set to false)

a new obj_player_current is created and another obj_player_clone is created with is_recording set to true

