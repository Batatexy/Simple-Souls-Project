open=0
spdtimer=55

place=0

if place_meeting(x,y,triggersword){
	place=1
}
if place_meeting(x,y,triggerkey){
	place=2
}
if place_meeting(x,y,triggeraxe){
	place=3
}
if place_meeting(x,y,triggerbow){
	place=4
}
if place_meeting(x,y,triggerspear){
	place=5
}

sound=irandom(6)
if sound=1{sound=Bau1}
if sound=2{sound=Bau2}
if sound=3{sound=Bau3}
if sound=4{sound=Bau4}
if sound=5{sound=Bau5}
if sound=6{sound=Bau6}
