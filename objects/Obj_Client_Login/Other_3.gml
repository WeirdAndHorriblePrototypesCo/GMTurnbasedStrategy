/// @description Destroy the connection
//Destroy the socket & buffer
if Login != 4 {
	network_destroy(Socket);
	buffer_delete(Buffer);
	}