

if keyboard_check_pressed(vk_space) and menu < 4 {
	menu++
	audio_play_sound(sSelect, 5, false)
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
		layer_set_visible(lay_id, true)
		lay_id = layer_get_id("Boy5");
		layer_set_visible(lay_id, true)
		
		
		count++
		if keyboard_check_pressed(vk_space) and count >= 5 {
			oBoyStart.image_speed = 1
			audio_stop_sound(title_screen)
		} 
	break;
		
}