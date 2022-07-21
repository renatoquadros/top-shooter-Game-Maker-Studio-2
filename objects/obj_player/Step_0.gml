/// @description configurando o player

var esq = keyboard_check(vk_left);
var dir = keyboard_check(vk_right);
var cima = keyboard_check(vk_up);
var baixo = keyboard_check(vk_down);
var tiro = keyboard_check_pressed(vk_space);
var escudo = keyboard_check_pressed(ord("E"));


//Impedindo que o player saia da tela
x = clamp(x, 32, room_width - 32);
y = clamp(y, 32, room_height - 32);

//criando o escudo
if(escudo && qtd_escudo > 0){
	instance_create_layer(x,y,"Instances",obj_escudo);	
	qtd_escudo--;
}

//movimento horizontal
//checando o lado e aplicando a velocidade
var velh = (dir - esq) * vel;
x += velh;

//movimento vertical
//checando o lado e aplicando a velocidade
var velv = (baixo - cima) * vel;
y += velv;

if(level_tiro == 1){
	if(tiro)
	{
		//criando o tiro level 1
		instance_create_layer(x,y,"Instances", obj_tiro01);
	}
} else if (level_tiro == 2) {
//criando o tiro level 2
	if(tiro){
		var t = instance_create_layer(x + 28,y,"Instances", obj_tiro02);
		t.hspeed = 4;
		
		var t = instance_create_layer(x - 28,y,"Instances", obj_tiro02);
		t.hspeed = -4;
	}
}
else if(level_tiro == 3){ // criando o tiro level 3
	if(tiro){
		instance_create_layer(x,y,"Instances", obj_tiro01);
		
		var t = instance_create_layer(x + 28,y,"Instances", obj_tiro02);
		t.hspeed = 4;
		
		var t = instance_create_layer(x - 28,y,"Instances", obj_tiro02);
		t.hspeed = -4;
	}
	
}
else if(level_tiro == 4){ //criando o tiro level 4
	if(tiro){
		var val = 20; //Definir a diferença na direção
		repeat(3){
			var t = instance_create_layer(x,y,"Instances", obj_tiro01);
			t.direction = 90 + val;
			t.image_angle = val;
			val -= 20;
		}
	}
}

else if(level_tiro == 5){ // criando o tiro level 5
	if(tiro){
		var val = 20; //Definir a diferença na direção
		repeat(3){
			var t = instance_create_layer(x,y,"Instances", obj_tiro01);
			t.direction = 90 + val;
			t.image_angle = val;
			val -= 20;			
		}
		var p = instance_create_layer(x + 28,y,"Instances", obj_tiro02);
		p.hspeed = 6;
		
		var p = instance_create_layer(x - 28,y,"Instances", obj_tiro02);
		p.hspeed = -6;
	}
}

if(tiro) audio_play_sound(snd_tiro_player,10,false); // reproduzir o som do tiro

//Sendo destruído
if(vida <= 0)
{
	instance_destroy();	
}
