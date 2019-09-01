/// @description reflects north and east light

center_x = x + 16
center_y = y + 16

//checks to see if there's an unobstructed line from the north and east windows to the mirror
windowNorth = true;
windowEast = true;
windowSouth = true;
windowWest = true;

light_up = center_y
light_right = center_x
light_down = center_y
light_left = center_x

light_up_scale = 0
light_right_scale = 0
light_down_scale = 0
light_left_scale = 0

//check to see if box is in the way of mirror and wall

while (!instance_position(center_x, light_up, oWall) && !instance_position(center_x, light_up, oBox)) { 
	light_up--
	if (instance_position(center_x, light_up, oBox)) {
		//we hit a box, no window to the north
		windowNorth = false;
	}
}
light_up_scale = (center_y-light_up-16)/32



while (!instance_position(center_x, light_down, oWall) && !instance_position(center_x, light_down, oBox)) { 
	light_down++
	if (instance_position(center_x, light_down, oBox)) {
		//we hit a box, no window to the south
		windowSouth = false;
	}
}
light_down_scale = (light_down-center_y+16)/32




while (!instance_position(light_right, center_y, oWall) && !instance_position(light_right, center_y, oBox)) { 
	light_right++
	if (instance_position(light_right, center_y, oBox)) {
		//we hit a box, no window to the east
		windowEast = false;
	}
}
light_right_scale = (light_right-center_x+16)/32




while (!instance_position(light_left, center_y, oWall) && !instance_position(light_left, center_y, oBox)) { 
	light_left--
	if (instance_position(light_left, center_y, oBox)) {
		//we hit a box, no window to the west
		windowWest = false;
	}
}
light_left_scale = (center_x-light_left-16)/32
