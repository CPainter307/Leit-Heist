center_x = x + 16
center_y = y + 16

shadow_up = center_y
shadow_right = center_x
shadow_down = center_y
shadow_left = center_x

shadow_up_scale = 0
shadow_right_scale = 0
shadow_down_scale = 0
shadow_left_scale = 0

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

