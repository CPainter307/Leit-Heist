if global.lit {
	var inst
	switch global.light_dir {
		case LIGHT.NORTH:
			inst = instance_create_layer(x, y, "Shadow", oShadow)
			inst.image_yscale = shadow_down_scale
		break;
	
		case LIGHT.EAST:
			inst = instance_create_layer(x, y, "Shadow", oShadow)
			inst.image_xscale = -shadow_left_scale
		break;
	
		case LIGHT.SOUTH:
			inst = instance_create_layer(x, y, "Shadow", oShadow)
			inst.image_yscale = -shadow_up_scale
		break;
	
		case LIGHT.WEST:
			inst = instance_create_layer(x, y, "Shadow", oShadow)
			inst.image_xscale = shadow_right_scale
		break;
	}
}