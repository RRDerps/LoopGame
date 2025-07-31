function Force_Push() 
{
	//check for player
	if !instance_exists(obj_player){
		return
	}else{
		var player_ref = instance_find(obj_player,0)
		//check distance from player
		var player_x = player_ref.x
		var player_y = player_ref.y
		var x_dif = x-player_x
		var y_dif = y-player_y
		if sqrt((sqr(x_dif)+sqr(y_dif))) < 200{
			//prev velocity (convert to x/y)
			var old_vel_x = speed*cos(pi*direction/180-pi/2)
			var old_vel_y = speed*sin(pi*direction/180-pi/2)
			//added velocity
			var add_vel_x = 10/(x_dif)
			var add_vel_y = 10/(y_dif)
			//combine
			var new_vel_x = old_vel_x - add_vel_x
			var new_vel_y = old_vel_y - add_vel_y
			//convert back to direction and speed
			direction = arctan2(new_vel_y,new_vel_x)*180/pi
			speed = sqrt((sqr(new_vel_x)+sqr(new_vel_y)))
		}
	}
}