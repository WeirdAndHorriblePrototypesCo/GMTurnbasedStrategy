/// @description Destroy the connection
//Destroy the socket & buffer
if Login = 0 {
	exit;
	}
else {
	network_destroy(Socket);
	buffer_delete(Buffer);
	exit;
	}