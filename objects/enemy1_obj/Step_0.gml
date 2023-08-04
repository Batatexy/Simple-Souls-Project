//move_towards_point( player_obj.x, player_obj.y, 2 )

if place_meeting(x,y,weapon_obj) and hit=0 and global.weapon!=0 and global.atk!=0{
	if global.atk=1{
	if global.atkwall=1{life-=global.dmg/4}else{life-=global.dmg}}
	if global.atk=2{
	if global.atkwall=1{life-=global.dmg/4}else{life-=global.dmg*1.5}}
	hit=1
}

if hit=1{
	hittimer-=1
	spd-=4
	sprite_index=Sprite19

	if hittimer<=0{
	sprite_index=Sprite1
	hittimer=hitvar
	hit=0
	}
	
}

if life<=0{
	instance_destroy()
}