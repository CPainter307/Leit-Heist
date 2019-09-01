
if keyboard_check_pressed(vk_space) {
	global.room_start = true
}

if global.room_start {
	show_debug_message(string(tlShine.timeline_position))
	if ((round(tlShine.timeline_position == 0)) or (round(tlShine.timeline_position) == 120) or (round(tlShine.timeline_position) == 240) or (round(tlShine.timeline_position) == 360)) {
		tlShine.timeline_running = false
		tlShine.timeline_position = 0
		tlShine.timeline_running = true
		global.room_start = false
		global.current_level++
		switch (global.current_level) {
			case 2: room_goto(rLvl5); break;
		}
		instance_destroy()
	}
}

