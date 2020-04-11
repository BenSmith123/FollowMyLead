/// handles default and other settings for all playable levels

// set defaults
MAX_ARRAY_SIZE = 3600 // life of each player (in steps)
PLAYER_LIVES = 12 // number of iterations the player can play through before level is failed

{
    switch (room)
    {
        case (room_level_1):
            MAX_ARRAY_SIZE = 1200
            PLAYER_LIVES = 5
            break
            
        case (room_level_2):
            MAX_ARRAY_SIZE = 1200
            break
    }
}

PLAYER_LIVES_START = PLAYER_LIVES // how many clone that we started with
