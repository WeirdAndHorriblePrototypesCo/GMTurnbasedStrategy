/// @description Destroy the connection
//Destroy the socket & buffer

buffer_seek(Buffer,buffer_seek_start,0)
buffer_write(Buffer,buffer_string,"Logout")
buffer_write(Buffer, buffer_string, global.Username)
buffer_write(Buffer, buffer_u16, global.Planks)
buffer_write(Buffer,buffer_u16,global.Food)
buffer_write(Buffer,buffer_u16,global.Stone)
buffer_write(Buffer,buffer_u16,global.Workers)
network_send_packet(Socket, Buffer, buffer_tell(Buffer));
network_destroy(Socket);
buffer_delete(Buffer);