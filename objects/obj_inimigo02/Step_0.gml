/// @description Configurando o inimigo
// You can write your code in this editor

//Testando se ja estou na tela
if(y >= 0 && natela = false)
{
	alarm[0] = room_speed * random_range(0.5,2);	
	natela = true;
	
}

if(natela == true && movendo == false){// ele esta aparecendo>
	if(y > room_height/3){ // Ele ja passou de um terço da tela?
		if(x > room_width/2){//esta na direita	
				hspeed = -4;
				movendo = true;
		}
		else{ // esta na esquerda
				hspeed = +4;
				movendo = true;
		}
	}
	
}

if(y > room_height + 100)
{
	instance_destroy();	
}