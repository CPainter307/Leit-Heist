
if keyboard_check_pressed(vk_space) {
	menu++	
}
switch (menu) {
	case 0:
		lay_id = layer_get_id("Text1");
		layer_set_visible(lay_id, true)
		sprite_id = layer_sprite_get_id(lay_id, sBoyRight)
	break;
	
	case 1:
		layer_set_visible(lay_id, false)
		lay_id = layer_get_id("Text2");
		layer_set_visible(lay_id, true)
	break;
		
	case 2:
		layer_set_visible(lay_id, false)
		lay_id = layer_get_id("Text3");
		layer_set_visible(lay_id, true)
	break;
		
	case 3:
		layer_set_visible(lay_id, false)
		lay_id = layer_get_id("Text4");
		layer_set_visible(lay_id, true)
	break;
		
	case 4:
		layer_set_visible(lay_id, false)
		lay_id = layer_get_id("Text5");
		sprite_id = layer_sprite_get_id(lay_id, sBoyStart)
		if layer_get_visible(lay_id)
			sprite_id.image_index = 0
		layer_set_visible(lay_id, true)
	break;
		
}