/// @description Insert description here
// You can write your code in this editor

var anim_length = 9;
var frame_size = 64;
var anim_speed = 12;


if(moveY > 0) {
	draw_sprite(spr_player_dwn, x_frame, x, y);
} else if(moveY < 0){
	draw_sprite(spr_player_up, x_frame, x, y);
} else if (moveX < 0) {
	draw_sprite(spr_player_lft, y_frame, x, y);
} else if (moveX > 0) {
	draw_sprite(spr_player_rght, y_frame, x, y);
} else {
	draw_sprite(spr_player_dwn, 0, x, y);
}

x_frame += anim_speed/60;
x_frame %= anim_length;

y_frame += anim_speed/60;
y_frame %= anim_length;
