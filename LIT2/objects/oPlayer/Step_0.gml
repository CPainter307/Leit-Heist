

sprite_index = sprite[face, movement];


switch (state) {
	case MOVE:
		xdir = keyboard_check(ord("D")) - keyboard_check(ord("A"))
		ydir = keyboard_check(ord("S")) - keyboard_check(ord("W"))

		if xdir > 0
			motionx = min(motionx+ACCELERATION, MAX_SPEED)
		if xdir < 0
			motionx = max(motionx-ACCELERATION, -MAX_SPEED)
	
		if ydir > 0
			motiony = min(motiony+ACCELERATION, MAX_SPEED)
		if ydir < 0
			motiony = max(motiony-ACCELERATION, -MAX_SPEED)
	
		if xdir == 0
			motionx = lerp(motionx, 0, 0.5)
		if ydir == 0
			motiony = lerp(motiony, 0, 0.5)
	
		if xdir == 0 and ydir == 0 {
			image_speed = 0
			image_index = 0
		} else image_speed = 1

		if !(xdir == 0 and ydir == 0) {
			dir = point_direction(0, 0, xdir, ydir);
			walk_sound_counter++
			if walk_sound_counter%10 == 0 {
				scr_play_sound("sStep", 3, 5)
			}
		}
		face = round(dir / 90);
		if (face == 4) face = RIGHT;

		//if !(xdir == 0 and ydir == 0)
		//	motionx = motionx / 2
		//	motiony = motiony / 2
	
		
		if (place_meeting(x+motionx, y, oCollidable)) {
			while (!place_meeting(x+sign(motionx), y, oCollidable)) {
				x += sign(motionx);
			}
			motionx = 0;
		}
		x += motionx
		if (place_meeting(x, y+motiony, oCollidable)) {
			while (!place_meeting(x, y+sign(motiony), oCollidable)) {
				y += sign(motiony);
			}
			motiony = 0;
		}
		y += motiony
		
		movement = MOVE
		
		if keyboard_check_pressed(vk_space) {
			dash_timer = 0
			state = DASH
		}
		if global.player_dead
			state = DEAD
			
	break;
	
	case DASH:
		if xdir > 0
			motionx = min(motionx+ACCELERATION*5, DASH_SPEED)
		if xdir < 0
			motionx = max(motionx-ACCELERATION*5, -DASH_SPEED)
	
		if ydir > 0
			motiony = min(motiony+ACCELERATION*5, DASH_SPEED)
		if ydir < 0
			motiony = max(motiony-ACCELERATION*5, -DASH_SPEED)
		
		
		if (place_meeting(x+motionx, y, oCollidable)) {
			while (!place_meeting(x+sign(motionx), y, oCollidable)) {
				x += sign(motionx);
			}
			motionx = 0;
		}
		x += motionx
		if (place_meeting(x, y+motiony, oCollidable)) {
			while (!place_meeting(x, y+sign(motiony), oCollidable)) {
				y += sign(motiony);
			}
			motiony = 0;
		}
		y += motiony
		
		movement = DASH
		
		if dash_timer < DASH_TIME
			dash_timer++
		else
			state = MOVE
		if global.player_dead
			state = DEAD
	break;
	
	case DEAD:
	
	break;
}

if global.lit and (!place_meeting(x, y, oShadow) || place_meeting(x, y, oMirrorLight)) {
	global.player_dead = true
}

if global.player_dead and !global.lit {
	global.player_dead = false
	room_restart()
}