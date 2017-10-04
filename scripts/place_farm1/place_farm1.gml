/// @description Build a Mine!

buffer_seek(Buffer, buffer_seek_start, 0);
buffer_write(Buffer, buffer_string, "Mine");			
buffer_write(Buffer, buffer_u32, floor(mouse_x/global.GridWidth)*global.GridWidth);	
buffer_write(Buffer, buffer_u32, floor(mouse_y/global.GridHeight)*global.GridHeight);
network_send_packet(Socket, Buffer, buffer_tell(Buffer));              