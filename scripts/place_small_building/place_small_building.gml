/// @description Build a Farm!

buffer_seek(Buffer, buffer_seek_start, 0);
buffer_write(Buffer, buffer_string, "Small Building");
buffer_write(Buffer, buffer_string, string(argument[0]));
buffer_write(Buffer, buffer_u32, argument[1])
buffer_write(Buffer, buffer_u32, floor(mouse_x/global.GridWidth)*global.GridWidth);	
buffer_write(Buffer, buffer_u32, floor(mouse_y/global.GridHeight)*global.GridHeight);
buffer_write(Buffer, buffer_string, global.Username);
network_send_packet(Socket, Buffer, buffer_tell(Buffer));
