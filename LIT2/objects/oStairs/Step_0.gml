event_inherited()

if !instance_exists(oTreasure) {
	image_index = 1
	with oStairCollider {
		if place_meeting(x, y, oPlayer) {
			//timeline_running = false
			//instance_create_layer(x, y, "Game", oNextLevel)
			if room != rTransition
				room_goto(rTransition)
		}
	}
}

if global.lit {
	sprite_index = sStairsLight
} else {
	sprite_index = sStairs	
}