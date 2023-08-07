//Vida e morte
global.vidamax=10//Vida máxima
global.vida=global.vidamax
global.morte=0

	//Ataque
	atkvar=40
	atktimer=atkvar
	global.atk = 0
	global.dmg = 0
	global.playerhit=0
	global.dmgreceive=0

	//Timer que se toma o dano pra n ficar igual mineirinho
	global.hitvar=28//Variavel fixa para o Player e Inimigos
	global.hittimer=global.hitvar
	hitvar=global.hitvar
	hittimer=hitvar
	
	//Cansaço
	atkfatincnumber=10//Velocidade que cansa
	atkfatdec=0.1//Velocidade que descansa
	atkfat=0
	atkfatinc=0
	atkfattimer=0

//Stamina
global.staminamax=10//Stamina máxima
global.stamina=global.staminamax
global.staminaval=0.01//Velocidade que descansa
global.staminadec=3//Velocidade que cansa
dashvar=10//Tempo de desvio
dashtimer=dashvar
dash=0

//Velocidade
global.spdvar=1.8//Velocidade de movimento
spd = global.spdvar
spdatk=0

//Hitbox com paredes e portas
hb=4
objvar1=walldoor1
objvar2=hollow
objvar3=hollow
objvar4=hollow
objvar5=hollow
objvar6=hollow
objvar7=hollow



//Arma selecionada
global.weapon=0

global.weapon1=1
global.weapon2=1
global.weapon3=0
global.weapon4=0

//Chaves
global.key1=0
global.key2=0
global.key3=0
global.key4=0
global.key5=0












