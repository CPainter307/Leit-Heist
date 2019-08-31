event_inherited()

if !instance_exists(oTreasure) {
	image_index = 1
	with oStairCollider {
		if place_meeting(x, y, oPlayer) {
			instance_create_layer(x, y, "Game", oNextLevel)
		}
	}
}