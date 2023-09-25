function Colisao(){
	if (global.pause){
		image_speed = 0;
		exit
		} else{
		image_speed = 1		
		}
	
	
	script_execute(player_state_free)
	
#region Colisão Horizontal
	
	//Invi wall
	if place_meeting(x+hspd,y,obj_invi_wall){
		while !place_meeting(x+sign(hspd),y,obj_invi_wall){
			x +=sign(hspd)
		}
		hspd=0
	}
	
	x += hspd
	

#endregion

#region Colisão Vertical
	
	//Invi wall
	if place_meeting(x,y+vspd,obj_invi_wall){
		while !place_meeting(x,y+sign(vspd),obj_invi_wall){
			y +=sign(vspd)
		}
		vspd=0
	}
	
	y +=vspd
		
#endregion

#region Template
	
		/*
		if place_meeting(x+hspd,y,obj){
		while !place_meeting(x+sign(hspd),y,obj){
			x +=sign(hspd)
		}
		hspd=0
	}
	*/
	
	/*
	if place_meeting(x,y+vspd,obj){
		while !place_meeting(x,y+sign(vspd),obj){
			y +=sign(vspd)
		}
		vspd=0
	}
	*/
	
	
#endregion
}