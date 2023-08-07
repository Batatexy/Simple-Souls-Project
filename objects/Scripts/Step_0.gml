//Resetar a sala
if keyboard_check(ord("R"))
{
game_restart()
}
//Troca de lado de ataque do Player
if global.sides>=2
{
global.sides=0
}

player_obj.atkfatinc-=player_obj.atkfatdec



if global.triggerenemy1>=global.triggerenemyvar
{
global.triggerenemy1=global.triggerenemyvar
}

if global.triggerenemy1<=0
{
global.triggerenemy1=0
}
//Troca de lado de ataque dos inimigos
if global.enemysides>=2
{
global.enemysides=0
}

//Sistema de Stamina
if global.stamina>=global.staminamax
{
global.stamina=global.staminamax
}
if global.stamina<=-global.staminadec
{
global.stamina=-global.staminadec
}

global.stamina+=global.staminaval

