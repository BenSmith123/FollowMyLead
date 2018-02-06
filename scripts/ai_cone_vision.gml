//argument0 direction the checking object is facing
//argument1 the field of view in degrees
//argument2 maximum distance
//argument3 the object its targeting

Dir1=point_direction(x,y,argument3.x,argument3.y)
FOV2=argument1/2
_x1=x+lengthdir_x(50,argument0)
_y1=y+lengthdir_y(50,argument0)
_x2=x+lengthdir_x(50,argument0+FOV2)
_y2=y+lengthdir_y(50,argument0+FOV2)
_x3=x+lengthdir_x(50,Dir1)
_y3=y+lengthdir_y(50,Dir1)
dist1=point_distance(_x1,_y1,_x2,_y2)
dist2=point_distance(_x1,_y1,_x3,_y3)
distObj=point_distance(x,y,argument3.x,argument3.y)
temp2 = argument3.id // test
return (dist1 >= dist2) * (distObj<=argument2 or argument2==0)
