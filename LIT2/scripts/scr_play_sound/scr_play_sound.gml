var sound = asset_get_index(argument0 + string(irandom_range(0, argument1-1)))
audio_sound_pitch(sound, random_range(0.95, 1.05)) 
audio_play_sound(sound, argument2, false)