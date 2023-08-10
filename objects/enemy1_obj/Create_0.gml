hit=0
lifevar=10
life=lifevar
spawnnumber=10

spdvar=1.2
spd=spdvar
target=player_obj
distance=40
atk=0

triggervar=80
triggertime=triggervar
global.enemysides=0

hitvar=global.hitvar
hittimer=global.hittimer

place=wall
if place_meeting(x,y,spawnarea1)
{
place=spawnarea1
}

if place_meeting(x,y,spawnarea2)
{
place=spawnarea2
}