enum LIGHT {
	NORTH,
	EAST,
	SOUTH,
	WEST
}

global.lit = false
global.light_dir = LIGHT.NORTH
global.current_level = 1

#macro RIGHT 0
#macro UP 1
#macro LEFT 2
#macro DOWN 3

#macro MOVE 0
#macro IDLE 1
#macro DASH 2

window_set_size(room_width*1.5, room_height*1.5)