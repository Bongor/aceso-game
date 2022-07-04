/// @description Insert description here
// You can write your code in this 
input_left = keyboard_check(vk_left);
input_right = keyboard_check(vk_right);
input_up = keyboard_check(vk_up);
input_down = keyboard_check(vk_down);

moveX = 0;
moveY = 0;

spd = 5;

moveX = (input_right - input_left) * spd;
moveY = (input_down - input_up) * spd;

if(moveX != 0) {	
	if(place_meeting(x + moveX, y, obj_npc)) {
		repeat(abs(moveX)){
			if(!place_meeting(x+sign(moveX), y, obj_npc)) {
				x += sign(moveX);
			} else {
				break;
			}
		}
		moveX = 0;
	}
}

if(moveY != 0){
	if(place_meeting(x, y + moveY, obj_npc)) {
		repeat(abs(moveY)){
			if(!place_meeting(x, y+sign(moveY), obj_npc)) {
				y += sign(moveY);
			} else {
				break;
			}
		}
		moveY = 0;
	}
}

if(distance_to_object(obj_npc) < 10 && keyboard_check(ord("E"))) {
	room_goto(rm_interaction);
}


x += moveX;
y += moveY;
