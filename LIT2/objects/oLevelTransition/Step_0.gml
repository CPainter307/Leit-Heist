
if keyboard_check_pressed(vk_space) {
	global.room_start = true
}

if global.room_start {
	//show_debug_message(string(tlShine.timeline_position))
	if global.player_dead {
		global.player_dead = false	
	}
	if ((round(tlShine.timeline_position == 0)) or (round(tlShine.timeline_position) == 120) or (round(tlShine.timeline_position) == 240) or (round(tlShine.timeline_position) == 360)) {
		tlShine.timeline_running = false
		tlShine.timeline_position = 0
		tlShine.timeline_running = true
		global.room_start = false
		global.current_level++
		
		switch (global.current_level) {
			case 2:  room_goto(rLvl2); break;
			case 3:  room_goto(rLvl3); break;
			case 4:  room_goto(rLvl4); break;
			case 5:  room_goto(rLvl5); break;
			case 6:  room_goto(rLvl6); break;
			case 7:  room_goto(rLvl7); break;
			case 8:  room_goto(rLvl8); break;
			case 9:  room_goto(rLvl9); break;
			case 10: room_goto(rLvl10); break;
			case 11: room_goto(rLvl11); break;
			case 12: room_goto(rLvl12); break;
			case 13: room_goto(rLvl13); break;
		}
		instance_destroy()
	}
}

