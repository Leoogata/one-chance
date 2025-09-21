var mesmoLugar = place_meeting(x, y, obj_Player)

if (mesmoLugar && keyboard_check_pressed(vk_enter) && global.firstTime1 == 0){
	room_goto(Room4)
	instance_destroy()
	global.firstTime1++;
}