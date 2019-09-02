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

light_up_scale = 1
light_right_scale = 1
light_down_scale = 1
light_left_scale = 1

shadow_up = center_y
shadow_right = center_x
shadow_down = center_y
shadow_left = center_x

shadow_up_scale = 0
shadow_right_scale = 0
shadow_down_scale = 0
shadow_left_scale = 0

#region light

//check to see if box is in the way of mirror and wall

while (!instance_position(center_x, light_up, oWall)) { 
	light_up--
	if (instance_position(center_x, light_up, oBox)) {
		if !place_meeting(x, y, oBox) {
			//we hit a box, no window to the north
			windowNorth = false;
		}
	}
}
light_up_scale = (center_y-light_up-16)/32



while (!instance_position(center_x, light_down, oWall)) { 
	light_down++
	if (instance_position(center_x, light_down, oBox)) {
		if !place_meeting(x, y, oBox) {
			//we hit a box, no window to the south
			windowSouth = false;
		}
	}
}
light_down_scale = (light_down-center_y+16)/32




while (!instance_position(light_right, center_y, oWall)) { 
	light_right++
	if (instance_position(light_right, center_y, oBox)) {
		if !place_meeting(x, y, oBox) {
			//we hit a box, no window to the east
			windowEast = false;
		}
	}
}
light_right_scale = (light_right-center_x+16)/32




while (!instance_position(light_left, center_y, oWall)) { 
	light_left--
	if (instance_position(light_left, center_y, oBox)) {
		if !place_meeting(x, y, oBox) {
			//we hit a box, no window to the west
			windowWest = false;
		}
	}
}
light_left_scale = (center_x-light_left-16)/32

#endregion
/*
#region shadow

while (!instance_position(center_x, shadow_up, oWall)) { 
	shadow_up--
}
shadow_up_scale = (center_y-shadow_up-16)/32

//shadow_up = abs(shadow_up)
//shadow_up -= 16




while (!instance_position(center_x, shadow_down, oWall)) { 
	shadow_down++
}
shadow_down_scale = (shadow_down-center_y+16)/32

//shadow_down = abs(shadow_down)
//shadow_down -= 16




while (!instance_position(shadow_right, center_y, oWall)) { 
	shadow_right++
}
shadow_right_scale = (shadow_right-center_x+16)/32

//shadow_right = abs(shadow_right)
//shadow_right -= 16




while (!instance_position(shadow_left, center_y, oWall)) { 
	shadow_left--
}
shadow_left_scale = (center_x-shadow_left-16)/32

//shadow_left = abs(shadow_left)
//shadow_left -= 16

#endregion
*/