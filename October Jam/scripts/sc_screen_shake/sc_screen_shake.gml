function sc_screen_shake(strength, duration, smooth = 1) 
{
	if instance_exists(o_camera) {
		with(o_camera) {
			if (strength > shake_remaining) {
				shake_strenght = strength 
				shake_remaining = shake_strenght
				shake_duration = duration
				shake_smooth = smooth
			}
		}
	}
}