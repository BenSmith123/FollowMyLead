/*
if global.overall_view = true // debug (show whole room)
{
    view_xview[0] = 0
    view_yview[0] = 0
    
    view_wview[0] = room_width
    view_hview[0] = room_height
    
    view_wport[0] = room_width
    view_hport[0] = room_height
    view_xport[0] = 0
    view_yport[0] = 0
    
    exit
}

*/

obj = id

//scr_round_pos()

if (not obj == 0)
{
    // ROOM END X
    if not(view_xview[0] <= 0 and obj.x<WIDTH/1.5) and not(view_xview[0]+WIDTH >= room_width and obj.x > room_width-(WIDTH/2)) 
    {view_xview[0] += ((x-(view_wview[0]/2)) - view_xview[0]) * 0.03}
    
    // ROOM END Y
    if not(view_yview[0] <= 0 and obj.y<HEIGHT/1.5) and not(view_yview[0]+HEIGHT >= room_height and obj.y > room_height-(HEIGHT/2))
    {view_yview[0] += ((y-(view_hview[0]/2)) - view_yview[0]) * 0.03}
    
    if view_yview[0] < 0 {view_yview[0] = 0} // stops line at top of the screen. idk y needed

}
