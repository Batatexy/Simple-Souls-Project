if trigger=0
{
	if global.enemysides=0
	{
	image_angle = point_direction(x, y, player_obj.x, player_obj.y)+130
	direction=point_direction(x, y, player_obj.x, player_obj.y)+90
	sides=0
	}
	else
	{
	image_angle = point_direction(x, y, player_obj.x, player_obj.y)-130
	direction=point_direction(x, y, player_obj.x, player_obj.y)-90
	sides=1
	}
trigger=1
}

if trigger=1
{
visible=true
sprite_index=sword
triggertime-=1
	if sides=0
	{
	image_angle-=spd
	}
	else
	{
	image_angle+=spd
	}
	
	if triggertime<=0
	{
	instance_destroy()
	}
}
if place_meeting(x,y,player_obj) and global.playerhit=0
{
global.playerhit=1
global.dmgreceive=2.5
}