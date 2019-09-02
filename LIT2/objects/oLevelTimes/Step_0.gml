
if room != rTransition {
	loading_text = false
	time_steps[global.current_level]++
}
if room == rTransition {
	if global.current_level < 8+6 {
		time_seconds[global.current_level] = time_steps[global.current_level]/room_speed
		m = time_seconds[global.current_level] div 60;
		s = time_seconds[global.current_level] mod 60;
		if (s < 10)
		    t_str = string(m) + ":0" + string(s);
		else
		    t_str = string(m) + ":" + string(s);
	}
	
}

if global.current_level >= 8+6 and global.current_level < 9+6 {
	global.current_level++
	var inst = instance_create_layer(room_width/2, (room_height-50), "Game", oBoyDance)
	inst.image_xscale = 5
	inst.image_yscale = 5
	show_debug_message("final_time")
	for (var i = 0; i < 8+6; i++) {
		final_time += time_seconds[i]
	}
	m = final_time div 60;
	s = final_time mod 60;
	if (s < 10)
	    t_str = string(m) + ":0" + string(s);
	else
	    t_str = string(m) + ":" + string(s);
}