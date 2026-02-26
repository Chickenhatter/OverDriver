x_speed = 0;
key = false
y_speed += grav;

if keyboard_check(vk_right) { 
	
    x_speed = (movement_speed*3); 
	test
} else if keyboard_check(vk_left) { 
	
    x_speed = -(movement_speed*3); 
	
}

move_and_collide(x_speed, y_speed, oSolid);

if (place_meeting(x, y + 1, oSolid)) { 
	
    if (keyboard_check_pressed(vk_up)) { 
		
        y_speed = -6; 
		
    } else { 
		
        y_speed = 0; 
		
    }

}

if (place_meeting(x, y, oSpikes)) {
	
    room_restart()

}

if (y > room_height or y < 0 or x > room_width or x < 0) { 
	
    room_restart(); 

}
if keyboard_check(vk_right) {

    x_speed = movement_speed; 

    image_xscale = -1;
	
} else if keyboard_check(vk_left) {

    x_speed = -movement_speed; 

    image_xscale = 1; 
	
}

if (place_meeting(x, y, oKey)) {
	
    key = true
}
if (place_meeting(x, y, oFlag)) {
	
    if key == true{
		x = 24
		y = 24
	}else{
		lol = false
	}


}