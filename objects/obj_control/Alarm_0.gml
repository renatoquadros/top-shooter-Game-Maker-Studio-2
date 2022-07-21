/// @description Criando os inimigos
// You can write your code in this editor

if(boss == false)
{
var repete = random_range(1,6) * global.lvl;
var xx;
var yy;

repeat(repete){
	
	var xx = random_range(32,room_width - 32);
	var yy = random_range(-64, -1024);
	var chance = random(10) * global.lvl;
	
	if(chance > 25){ // Criar o inimigo 2
		var inimigo = instance_create_layer(xx,yy,"Inimigos", obj_inimigo02);
		inimigo.speed = random_range(1,4);
	}else {			
		//criar o inimigo 1
		var inimigo = instance_create_layer(xx,yy,"Inimigos", obj_inimigo01);
		inimigo.speed = random_range(2,5);
	}

}

alarm[0] = (random_range(2,12) * room_speed);
}