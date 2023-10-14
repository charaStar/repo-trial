//Step events run at every step (frame).


/*

	keyboard_check, unlike keyboard_check_pressed and keyboard_check_released which run 
	once when the key is pressed or released, keyboard_check runs 
	for every step that the key is held down for.
	
	motion_add modifies the direction and speed of "the instance running the code.",
	combining the values with the current values. 
	
	The direction it will move towards is the image_ angle of the instance.
	It is "How much the sprite of the instance has turned around."

*/


//Movement of the player character
if keyboard_check(vk_up)
{
	motion_add(image_angle, 0.1);
}
if keyboard_check(vk_down)
{
	motion_add(image_angle, -0.1);
}
if keyboard_check(vk_left)
{
	image_angle += 4;
}
if keyboard_check(vk_right)
{
	image_angle += -4;
}


/* Player character goes out one end and comes back through the other

	Move_wrap's arguments are as follows: the first bool that checks if the object
	should be wrapped horizontally, the second bool that checks if the object should be
	wrapped vertically, and the last "Real" (?) that checks how far from the room the object 
	must be to wrap it.
	
	For context, each input character/key is defined by it's UTF8 code (a numerical value).
	This value can be retrieved for any character using the ord() function.
	We need to put the CAPITILIZED letter in "quotations". 
	
	With the instance_create_layer funciton, we can create an instance of any object
	at any given point on the layer specified.
	
	We want to play a sound when the player shoots. To do that, we use the appropriately
	named audio_play_sound() function. The arguments are the sound itself,
	it's priority, and weather it should loop or not.
*/

move_wrap(true, true, 0);


if keyboard_check_pressed(ord("Z"))
{
	instance_create_layer(x, y, "Instances", obj_bullet);
	audio_play_sound(snd_pew, 0, false);
}





