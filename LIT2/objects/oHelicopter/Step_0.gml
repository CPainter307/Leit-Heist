if !global.lit {
	sprite_index = sHeli
	theta -= theta_speed;
	if (theta >= 360) theta -= 360;
	x = cx + lengthdir_x(-r, theta);
	y = cy + lengthdir_y(-r, theta);

	image_angle = theta
} else {
	sprite_index = sHeliFlash	
}

if room == rTransition
	visible = false
else visible = true