/// @description Set up camera
// You can write your code in this editor
x = obj_player.x
y = obj_player.y
cam = view_camera[0];
follow = obj_player;

view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;

shakeLength = 0;
shakeMagnitude = 0;
shakeRemain = 0;
