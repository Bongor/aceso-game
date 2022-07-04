/// @description Insert description here
// You can write your code in this editor

draw_sprite(spr_leah, 0, x, y);
frame += 1/240;

if (frame >= 1 && frame < 4) {
	draw_sprite(spr_leah, frame, x, y);
	frame += 1/60;
} else if (frame >= 4) {
	draw_sprite(spr_leah, 0, x, y);
}