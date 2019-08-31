center_x = x + 16
center_y = y + 16

shadow_up = center_y
shadow_right = center_x
shadow_down = center_y
shadow_left = center_x

shadow_up_scale = 1
shadow_right_scale = 1
shadow_down_scale = 1
shadow_left_scale = 1

while (!instance_position(center_x, shadow_up, oWall)) { 
	shadow_up--
}
shadow_up_scale = (shadow_up+1)/32

shadow_up = abs(shadow_up)
shadow_up -= 18




while (!instance_position(center_x, shadow_down, oWall)) { 
	shadow_down++
}
shadow_down_scale = shadow_down/32

shadow_down = abs(shadow_down)
shadow_down -= 15




while (!instance_position(shadow_right, center_y, oWall)) { 
	shadow_right++
}
shadow_right_scale = shadow_right/32

shadow_right = abs(shadow_right)
shadow_right -= 15




while (!instance_position(shadow_left, center_y, oWall)) { 
	shadow_left--
}
shadow_left_scale = (shadow_left+1)/32

shadow_left = abs(shadow_left)
shadow_left -= 18

