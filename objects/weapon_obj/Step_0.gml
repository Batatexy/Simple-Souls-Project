if global.atk!=2{
x=player_obj.x
y=player_obj.y
}

if global.morte=0{
if global.sides>=2{
	global.sides=0
}



if global.atk=1{
	visible=true
	if global.sides=0{
		
	if global.weapon=1{
		sprite_index=swordatk1
		if global.atktimer>=0 and global.atktimer<=40{
		image_angle+=6.7
		}
	}
}
else{
		if global.weapon=1{
		sprite_index=swordatk2
		if global.atktimer>=0 and global.atktimer<=40{
		image_angle-=6.7
		}
	}
	
	
	
	
	
	
	
	
}
}else 
if global.atk=2{
	image_alpha=1
	if global.weapon=1{
		if global.atktimer>29{
		visible=true
		sprite_index=sword
		image_angle = point_direction(x, y, mouse_x, mouse_y)
		direction=point_direction(x, y, mouse_x, mouse_y)
		speed=10
		
		}
		if global.atktimer>=0 and global.atktimer<=26{
		direction=point_direction(x, y, player_obj.x, player_obj.y)
		speed=5
		
		if place_meeting(x,y,player_obj) or global.atktimer<=20{
			visible=false
			sprite_index=hollow
			}
		}
	}











}
else
{
	if global.sides=0{
image_angle = point_direction(x, y, mouse_x, mouse_y)+90
	}
	if global.sides=1{
image_angle = point_direction(x, y, mouse_x, mouse_y)-90
	}
sprite_index=hollow
}



}else{
	visible=false
	sprite_index=hollow
	}

if place_meeting(x,y,wall){global.atkwall=1}else{global.atkwall=0}