/// @description Send a click!

instance_create_depth(mouse_x,mouse_y,-10,Obj_Click)

//Buffer seek makes sure we can make the buffer start at the start of the buffer.
buffer_seek(Buffer, buffer_seek_start, 0);
//u8 means Unsigned, that means that you cannot go below 0
											//What the buffer will contain now is:
buffer_write(Buffer, buffer_string, "Click");			//contains 1
buffer_write(Buffer, buffer_u32, mouse_x);	//contains 1, mousex(for example; 100)
buffer_write(Buffer, buffer_u32, mouse_y);	//contains 1,mouse_x, mouse_y (for example 120)
											//results in: 1,100,120

//Buffer tell gets the size of the buffer.
//The socket needs to be used to determine where we send it to (to what connection)
//We send the package we have just made up above.
network_send_packet(Socket, Buffer, buffer_tell(Buffer));
//This will give a result if it has been succesful. (Can be useful to test if it send.