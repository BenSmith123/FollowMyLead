/********************************************************

CONCEPT:

- obj_controller_playable will count to 1 minute (3600 cycles)
- each iteration the count will be reset to 0
- once 3600 is reached OR when the player presses the 'next' button,
- reset the entire level - with added recorded object (see scr_next_iteration for details on resetting)
- after a level is reset, destroyed walls, AI, pickups etc. will re-appear



PLAYER:

(player type) obj_player_current: The player that is controlled by the user: holds all control variables, 
main game logic (wall collision, speed, interactions)

obj_player_recorder: Records the obj_player_current variables (x, y, angle, shoot), stores in arrays and 
creates a clone from the variables in the next iteration

(player type) obj_player_clone: Replays what the previous player (obj_current_player) did but still behaves 
like a current player (can be killed)


