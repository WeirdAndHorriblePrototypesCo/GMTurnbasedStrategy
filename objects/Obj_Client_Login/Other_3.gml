/// @description Destroy the connection
//Destroy the socket & buffer
if Login = 2 && Login == 3{
	network_destroy(Socket);
	buffer_delete(Buffer);
	exit;
	}
if Login = 0 {
	exit;
	}
if Login != 4 {
	buffer_seek(Buffer,buffer_seek_start,0)
	buffer_write(Buffer, buffer_string, Username)
	network_send_packet(Socket, Buffer, buffer_tell(Buffer));
	network_destroy(Socket);
	buffer_delete(Buffer);
	}