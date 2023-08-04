if global.morte=0{
move_towards_point(player_obj.x,player_obj.y,spd);
}else{move_towards_point(0,0,0);
	atkmode=0
	sprite_index=Sprite5
	}
///////////////Abrir bau////////////////////////////////////////////////////////////
if atkmode=0{
	sprite_index=Sprite5
if open=0 and place_meeting(x,y,player_obj) and keyboard_check_pressed(ord("E")){
	open=1
	global.morte=1
	audio_play_sound(opensound,0,false)
}
if open=1{
	player_obj.speed=0
	player_obj.spd=0
	if spdtimer<=0{
		sprite_index=Sprite8
	}
	if spdtimer>-140{
		spdtimer-=1
	}else{
		sprite_index=Sprite5
		player_obj.visible=false
		player_obj.sprite_index=hollow
		open=2
		atksoundon=1	
}}
}
else////////////////Atacar o bau//////////////////////////////////////////////////////
{
sprite_index=Sprite8
spd=spdvar
//////////////////Dano que o bau da no Player////////////////////////////////////////
if place_meeting(x,y,player_obj){
	if global.playerhit=0{
		global.dmgreceive=dmg
		global.playerhit=1
	}
	spd=0
	atkmode=0
	atksoundon=1
	noatktimer=1
	sprite_index=Sprite5
		}
}
//////////////////Dano que o bau da no Player////////////////////////////////////////
if noatktimer=1{
	atkmode=0
	noatktimer1-=1
	
	if noatktimer1<=0{
	noatktimer1=noatkvar
	noatktimer=0
	}
}

if atksoundon=1{
	atksound=irandom_range(1,3)
	if atksound=1{audio_play_sound(Mimic6,0,false,0.6)}
	if atksound=2{audio_play_sound(Mimic7,0,false,0.6)}
	if atksound=3{audio_play_sound(Mimic8,0,false,0.6)}
	atksoundon=0
}
///////////////////////Dano que o bau toma/////////////////////////////////////////////////////////
if place_meeting(x,y,weapon_obj) and hit=0 and global.weapon!=0 and noatktimer=0 and global.atk!=0{
	dmgsound=irandom_range(1,3)
	if dmgsound=1{audio_play_sound(Mimic1,0,false,0.6)}
	if dmgsound=2{audio_play_sound(Mimic2,0,false,0.6)}
	if dmgsound=3{audio_play_sound(Mimic3,0,false,0.6)}
	
	if global.atk=1 {
	if global.atkwall=1{life-=global.dmg/4}else{life-=global.dmg}}
	if global.atk=2 {
	if global.atkwall=1{life-=global.dmg/4}else{life-=global.dmg*1.5}}
	hit=1
}

if hit=1{
	if atkmode=0{
	sprite_index=Sprite10
	}else{
	spd-=4
	sprite_index=Sprite9}
	hittimer-=1

	if hittimer<=0 and noatktimer=0{
	sprite_index=Sprite8
	hittimer=hitvar
	atkmode=1
	hit=0
	}
}


if life<=0{
	instance_destroy()
}