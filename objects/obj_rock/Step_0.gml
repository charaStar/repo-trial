/*
	Step events happen every step/frame of the game
	
	
	We want to make sure the rocks don't leave us forever when they exist outside the room/
	go out of bounds. So, we'll use the same move_wrap() function from the obj_player 
	to do this.
	
	HOWEVER. we set the margin value to 100 so that the rocks will warp when it's more than 100
	px outside the room (the rocks are big, so this accounts for their size. If it was 1 or 0, 
	the rocks would glitch-warp from the other side and it won't be as smooth.).
	
	we've increased the image_angle by one so it continues rotating & looks a bit realistic.
*/

move_wrap(true, true, 100);

image_angle += 1;

