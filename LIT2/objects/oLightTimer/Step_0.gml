if global.lit {
	lay_id = layer_get_id("Tiles");
	tile_id = layer_tilemap_get_id(lay_id);
	BG = layer_get_id("Background");
	back_id = layer_background_get_id(BG);
	layer_background_change(back_id, sRoomBGLit)
	tilemap_tileset(tile_id, tLightRoom)
} else {
	lay_id = layer_get_id("Tiles");
	tile_id = layer_tilemap_get_id(lay_id);
	BG = layer_get_id("Background");
	back_id = layer_background_get_id(BG);
	layer_background_change(back_id, sRoomBG)
	tilemap_tileset(tile_id, tDarkRoom)
}

