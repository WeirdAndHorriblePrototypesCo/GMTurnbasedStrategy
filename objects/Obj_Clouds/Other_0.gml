 /// @description Fly back.

if x <= 0 { x = room_width-64 }
if x >= room_width  { x -= room_width+64 }

if y <= 0 { y = room_height-64 }
if y >= room_height { y -= room_height+64 }

//The issue is that it moves MORE than it should, and gets teleported to the start anyway, causing them to stack.