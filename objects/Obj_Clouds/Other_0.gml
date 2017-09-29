 /// @description Fly back.

if x <= 0 { x = room_width-1 }
if x >= room_width  { x -= room_width }

if y <= 0 { y = room_height-1 }
if y >= room_height { y -= room_height }                       