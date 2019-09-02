draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_font(CenturyGothic)
draw_text_ext_transformed(room_width/2, (room_height/2)+sin(get_timer()/100000), t_str, 10, 300, 2, 2, image_angle)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_font(CenturyGothic)
if global.current_level >= 9+6 {
	draw_text_ext_transformed(room_width/2, ((room_height/2)-50)+sin(get_timer()/100000), "Final Time: ", 10, 300, 1.5, 1.5, 0)
	draw_text_ext_transformed(room_width/2, (50)+sin(get_timer()/100000), "HEIST COMPLETE!", 10, 300, 3, 3, 0)
} else {
	draw_text_ext_transformed(room_width/2, ((room_height/2)-50)+sin(get_timer()/100000), "Level " + string(global.current_level) + " Time:", 10, 300, 1.5, 1.5, 0)
	if keyboard_check_pressed(vk_space) or loading_text {
		draw_text_ext_transformed(room_width/2, (room_height-40)+sin(get_timer()/100000), "Loading...", 10, 300, 1.5, 1.5, 0)
		loading_text = true
	} else {
		draw_text_ext_transformed(room_width/2, (room_height-40)+sin(get_timer()/100000), "PRESS SPACE TO CONTINUE", 10, 300, 1.5, 1.5, 0)
	}
}
//draw_text_color(room_width/2, room_height/2, "xd", c_white, c_white, c_white, c_white, 1)