var mesmoLugar = place_meeting(x, y, obj_Player)
var firstTime = 0 
if (mesmoLugar && keyboard_check_pressed(vk_enter) && firstTime == 0){
	room_goto(Room2)
	instance_destroy()
	firstTime++;
}