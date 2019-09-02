if (global.first_play) {
	instance_create_layer(0, 0, "Game", oLightTimer)
	global.first_play = false
}