/// @description Insert description here
// You can write your code in this editor

speed_min = 1
speed_max = 1.5

speed = random_range(speed_min,speed_max)
direction = irandom(359)
image_speed = 0 // Stops flicker

angle_change_speed = 0.8

friends_dist = 100
enemies_dist = 80

y_scale = 1;

destroy = 0;

in_cam = false;

direction_array = [];
sway_time = irandom(200);

left_pad = 0;
top_pad = 0;
right_pad = 0;
bottom_pad = 0;