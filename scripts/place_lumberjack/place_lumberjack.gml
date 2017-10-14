/// @description Build a Lumberjack!

buffer_seek(Buffer, buffer_seek_start, 0);
buffer_write(Buffer, buffer_string, "Small Building");
buffer_write(Buffer, buffer_string, "Lumberjack");			
buffer_write(Buffer, buffer_u32, floor(mouse_x/global.GridWidth)*global.GridWidth);	
buffer_write(Buffer, buffer_u32, floor(mouse_y/global.GridHeight)*global.GridHeight);
network_send_packet(Socket, Buffer, buffer_tell(Buffer));