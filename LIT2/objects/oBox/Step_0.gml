if global.lit {
	switch global.light_dir {
		case LIGHT.NORTH:
			var inst = instance_create_layer(x, y, "Shadow", oShadow)
			inst.image_yscale = shadow_down_scale-4
		break;
	
		case LIGHT.EAST:
			var inst = instance_create_layer(x, y, "Shadow", oShadow)
			inst.image_xscale = -shadow_left_scale+2
		break;
	
		case LIGHT.SOUTH:
			var inst = instance_create_layer(x, y, "Shadow", oShadow)
			inst.image_yscale = -shadow_up_scale+2
		break;
	
		case LIGHT.WEST:
			var inst = instance_create_layer(x, y, "Shadow", oShadow)
			inst.image_xscale = shadow_right_scale-4
		break;
	}
}