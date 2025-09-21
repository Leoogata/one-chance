var mesmoLugar = place_meeting(x, y, obj_Player)

if (mesmoLugar && keyboard_check_pressed(vk_enter)){
	room_goto(rm_Vending_Machine)
	instance_destroy()
}