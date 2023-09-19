function Colisao(){
	if (global.pause){
		image_speed = 0;
		exit
		} else{
		image_speed = 1		
		}
	
	
	script_execute(GetInput)
	
#region Colisão Horizontal
	
	//Pedra
	if place_meeting(x+hspd,y,obj_stone){
		while !place_meeting(x+sign(hspd),y,obj_stone){
			x +=sign(hspd)
		}
		hspd=0
	}
	
	//Carvão
	if place_meeting(x+hspd,y,obj_coal_ore){
		while !place_meeting(x+sign(hspd),y,obj_coal_ore){
			x +=sign(hspd)
		}
		hspd=0
	}
	
	//Ouro
	if place_meeting(x+hspd,y,obj_gold_ore){
		while !place_meeting(x+sign(hspd),y,obj_gold_ore){
			x +=sign(hspd)
		}
		hspd=0
	}
	
	//Invi wall
	if place_meeting(x+hspd,y,obj_invi_wall){
		while !place_meeting(x+sign(hspd),y,obj_invi_wall){
			x +=sign(hspd)
		}
		hspd=0
	}
	
	/*Arvore
	if place_meeting(x+hspd,y,obj_tree){
		while !place_meeting(x+sign(hspd),y,obj_tree){
			x +=sign(hspd)
		}
		hspd=0
	}*/
	
	x += hspd
	

#endregion

#region Colisão Vertical
		
		//Pedra
	if place_meeting(x,y+vspd,obj_stone){
		while !place_meeting(x,y+sign(vspd),obj_stone){
			y +=sign(vspd)
		}
		vspd=0
	}
	
		//Carvão
	if place_meeting(x,y+vspd,obj_coal_ore){
		while !place_meeting(x,y+sign(vspd),obj_coal_ore){
			y +=sign(vspd)
		}
		vspd=0
	}
		
		//Ouro
	if place_meeting(x,y+vspd,obj_gold_ore){
		while !place_meeting(x,y+sign(vspd),obj_gold_ore){
			y +=sign(vspd)
		}
		vspd=0
	}
	
	
	//Invi wall
	if place_meeting(x,y+vspd,obj_invi_wall){
		while !place_meeting(x,y+sign(vspd),obj_invi_wall){
			y +=sign(vspd)
		}
		vspd=0
	}
	
	/*Arvore
	if place_meeting(x,y+vspd,obj_tree){
		while !place_meeting(x,y+sign(vspd),obj_tree){
			y +=sign(vspd)
		}
		vspd=0
	}*/
	
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