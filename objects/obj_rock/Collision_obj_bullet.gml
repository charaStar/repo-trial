/*
	This runs when the rock and bullet collides.

	Because the "base" we're writing this on is the rock, and when they
	collide, we want the bullet to dissapear, the argument for the 
	instance_destroy function will be "other". 
	
	the effect_create_above function creates an effect above everything else
	at the ROCK's location bc the rock is the one being destroyed. we also
	specify the effect's size and color.
	
	We then change the direction of the rock to a random value so it moves in
	a different direction when it gets hit.
	
	We then check if this is a big rock by checking the sprite index.
	If it is, we change it to a small rock & make a copy of it.
	
	if it's a small rock and the number of rocks less than 12, (capping the # of rocks so the game
	doesn't get too hard), we turn it into a big rock and make it appear
	from outside the room and make it look infinately generating.
	
	if it is a small rock, but there's 12 or more rocks, we just destroy the 
	rock.
	
	Every time the player shoots a rock, they score 50. In addition, a sound is played.
*/

obj_game.points += 50;
audio_play_sound(snd_hit, 0, false);

instance_destroy(other);
effect_create_above(ef_firework, x, y, 1, c_white);

direction = random(360);


if sprite_index == spr_rock_big
{
	sprite_index = spr_rock_small;
	instance_copy(true);
}
else if instance_number(obj_rock)< 12
{
	sprite_index = spr_rock_big;
	x = -100;
}
else
{
	instance_destroy();
}


