/// @description Insert description here
// You can write your code in this editor
radius += grow_amount;
radius = clamp(radius, 0, max_rad);

if grow = true && radius = max_rad {
	instance_destroy();	
}

if grow = false && radius = 0 {
	if once = 0 {
		alarm[0] = 40;
	}
	once = 1;
}