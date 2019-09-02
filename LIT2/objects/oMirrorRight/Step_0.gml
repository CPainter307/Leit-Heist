if global.lit {
	var inst
	switch global.light_dir {
		case LIGHT.NORTH:
		/**
			if (windowNorth) {
				inst = instance_create_layer(x, y, "MirrorLight", oMirrorLight)
				inst.image_xscale = -light_left_scale
			}
			*/
			inst = instance_create_layer(x, y, "Shadow", oShadow)
			inst.image_yscale = shadow_down_scale
		break;
	
		case LIGHT.EAST:
			if (windowEast) {
				inst = instance_create_layer(x, y, "MirrorLight", oMirrorLight)
				inst.image_yscale = light_down_scale
			}
			inst = instance_create_layer(x, y, "Shadow", oShadow)
			inst.image_xscale = -shadow_left_scale
		break;
	
		case LIGHT.SOUTH:
			if (windowSouth) {
				inst = instance_create_layer(x, y, "MirrorLight", oMirrorLight)
				inst.image_xscale = light_right_scale
			}
			inst = instance_create_layer(x, y, "Shadow", oShadow)
			inst.image_yscale = -shadow_up_scale
		break;
	
		case LIGHT.WEST:
		/**
			if (windowWest) {
				inst = instance_create_layer(x, y, "MirrorLight", oMirrorLight)
				inst.image_yscale = -light_up_scale
			}
			*/
			inst = instance_create_layer(x, y, "Shadow", oShadow)
			inst.image_xscale = shadow_right_scale
		break;
	}
}

if global.lit {
	sprite_index = sMirrorRightLight	
} else {
	sprite_index = sMirrorRight	
}