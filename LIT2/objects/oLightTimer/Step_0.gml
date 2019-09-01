if global.lit {
	lay_id = layer_get_id("Tiles");
	if lay_id != -1
		tile_id = layer_tilemap_get_id(lay_id);
	BG = layer_get_id("Background");
	back_id = layer_background_get_id(BG);
	layer_background_change(back_id, sRoomBGLit)
	tilemap_tileset(tile_id, tLightRoom)
} else {
	lay_id = layer_get_id("Tiles");
	if lay_id != -1
		tile_id = layer_tilemap_get_id(lay_id);
	BG = layer_get_id("Background");
	back_id = layer_background_get_id(BG);
	layer_background_change(back_id, sRoomBG)
	tilemap_tileset(tile_id, tDarkRoom)
}

//if global.prev_delta != -1 {
//show_debug_message(tlShine.timeline_speed)

tlShine.timeline_speed = (((global.prev_delta-delta_time)/1000000))+1
//show_debug_message(tlShine.timeline_speed)
	//tlShine.timeline_speed = tlShine.timeline_speed	* (global.prev_delta - delta_time)
//}
global.prev_delta = delta_time
