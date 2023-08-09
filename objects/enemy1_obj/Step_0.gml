//https://forum.gamemaker.io/index.php?threads/move-towards-point-and-collision.74598/
var dir=point_direction(x,y,target.x,target.y)

if atk=0 and hit=0 and distance_to_object(player_obj)<distance and player_obj.visible=true
{
global.enemysides+=1
instance_create_layer(x, y, "Hud", weaponenemy1)
triggertime=triggervar
atk=1
}
if atk=1
{
triggertime-=1
spd=0
	if triggertime<=0
	{
	triggertime=triggervar
	atk=0
	}
}



if global.triggerenemy1<global.triggerenemyvar and atk=0 and player_obj.visible=true
{
	target=player_obj
	if distance_to_object(player_obj)>distance
	{
	spd=spdvar
	}
	
	if !place_meeting(x+lengthdir_x(spd,dir),y+lengthdir_y(spd,dir),(wall))
	and !place_meeting(x+lengthdir_x(spd,dir),y+lengthdir_y(spd,dir),(enemy1_obj))
	and !place_meeting(x+lengthdir_x(spd,dir),y+lengthdir_y(spd,dir),(wallenemy))
	{
	x+=lengthdir_x(spd,dir)
	y+=lengthdir_y(spd,dir)
	}
	else
	{
		while(!place_meeting(x+lengthdir_x(1,dir),y+lengthdir_y(1,dir),wall))
		and !place_meeting(x+lengthdir_x(spd,dir),y+lengthdir_y(spd,dir),(enemy1_obj))
		and !place_meeting(x+lengthdir_x(spd,dir),y+lengthdir_y(spd,dir),(wallenemy))
		{
		x+=lengthdir_x(1,dir)
		y+=lengthdir_y(1,dir)
		}
	}
}
else
{
	if !place_meeting(x+lengthdir_x(spd,dir),y+lengthdir_y(spd,dir),(Scripts))
	{
	x+=lengthdir_x(spd,dir)
	y+=lengthdir_y(spd,dir)
	}
	else
	{
		while(!place_meeting(x+lengthdir_x(1,dir),y+lengthdir_y(1,dir),wall))
		{
		x+=lengthdir_x(1,dir)
		y+=lengthdir_y(1,dir)
		}
	}
	
	if !place_meeting(x,y,place)
	{
	spd=spdvar
	target=place
	}else{spd=0}
}

if place_meeting(x,y,weapon_obj) and hit=0 and global.weapon!=0 and global.atk!=0 and global.atkwall=0
{
hit=1
	if global.atk=1{life-=global.dmg}
	if global.atk=2{life-=global.dmg*1.5}
}
if hit=1
{
hittimer-=1
spd/=1.05
sprite_index=Sprite19
	if hittimer<=0
	{
	sprite_index=Sprite1
	hittimer=hitvar
	hit=0
	}
}
//else{spd=spdvar}

if life<=0
{
instance_destroy()
}

