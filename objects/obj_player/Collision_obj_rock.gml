/*
	This will run when the player bumps into the rock. 
	
	When they collide, we'll make it so that an explosion will play where the player is.
	when that happens, we destroy the player instance.
	
	After that, we'll set an alarm, so alarm 0 is 120. This means that the alarm 0 event
	(Located at the add event button) will run 120 frames after the collision. 120 frames
	means it'll happen after 2 seconds. (120/60fps). So, 2 seconds after they collide, we'll 
	play an alarm. 
	
	leaving the alarm[0] = 120; line will yeild an error as we're asking an already destroyed
	object to do something for us. How? It doesn't exist. So, we'll give that responsibility
	to the obj_game object. obj_game will run it for us.
*/

obj_game.has_lost = true;
effect_create_above(ef_explosion, x, y, 1, c_white);
instance_destroy();
obj_game.alarm[0] = 120;

