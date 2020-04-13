/// handles default and other settings for all playable levels

// set defaults
LEVEL_NAME = 'Level X'
MAX_ARRAY_SIZE = 2400 // life of each player (in steps)
PLAYER_LIVES = 12 // number of iterations the player can play through before level is failed

{
    switch (room)
    {
        case (room_level_1):
            LEVEL_NAME = 'Level 1'
            MAX_ARRAY_SIZE = 2400 // 40 seconds
            PLAYER_LIVES = 12
            break
            
        case (room_level_2):
            LEVEL_NAME = 'Level 2'
            MAX_ARRAY_SIZE = 2400
            break
    }
}

PLAYER_LIVES_START = PLAYER_LIVES // how many clone that we started with
