if keyboard_check_pressed(vk_space) {
	audio_play_sound(sSelect, 8, false)
	room_goto(rIntroCutscene)
}