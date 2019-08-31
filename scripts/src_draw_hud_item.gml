
// USE ONLY IN DRAW GUI EVENT

// position the object to be where the GUI renders it (so it can be clicked)
x = view_xview[0] + xstart // inherit position when created
y = view_yview[0] + ystart

// draw GUI
draw_sprite(sprite_index,0,x - view_xview, y - view_yview)

