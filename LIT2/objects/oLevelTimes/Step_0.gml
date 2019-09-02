
if room != rTransition {
	time_steps[global.current_level]++
}
if room == rTransition {
	if global.current_level < 8 {
		time_seconds[global.current_level] = time_steps[global.current_level]/room_speed
		m = time_seconds[global.current_level] div 60;
		s = time_seconds[global.current_level] mod 60;
		if (s < 10)
		    t_str = string(m) + ":0" + string(s);
		else
		    t_str = string(m) + ":" + string(s);
	}
	
}

if global.current_level >= 8 and global.current_level < 9 {
	global.current_level++
	show_debug_message("final_time")
	for (var i = 0; i < 8; i++) {
		final_time += time_seconds[i]
	}
	m = final_time div 60;
	s = final_time mod 60;
	if (s < 10)
	    t_str = string(m) + ":0" + string(s);
	else
	    t_str = string(m) + ":" + string(s);
}