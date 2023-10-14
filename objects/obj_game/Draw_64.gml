/*
	we can draw anyhing directly to the screen here.
	
	Because we want to draw the points, we'll use the draw_text function and tell it
	that we want to draw points on the screen at 10 by 10.
	
	If the player has died, the game draws it on the screen to let them know.
*/


draw_text(10, 10, points);

if has_lost == true
{
	draw_text(500, 500, "YOU LOST!");
}














