/// @description Insert description here
// You can write your code in this editor

if(expA >= expN){ //aumentando o level
	global.lvl++;
	expN *= 1.8;
}

//checando a pontuação mais alta
if(expA > global.highscore)
{
	global.highscore = expA;	
}


//criando o boss
if((global.lvl >= 5) && (boss = false))
{
	instance_create_layer(room_width/2, -700, "inimigos",obj_boss );
	instance_destroy(obj_inimigo01);
	instance_destroy(obj_inimigo02);
	boss = true;
	audio_stop_all();
}

