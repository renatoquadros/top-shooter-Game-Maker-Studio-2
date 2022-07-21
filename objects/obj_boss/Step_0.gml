/// @description Insert description here
// You can write your code in this editor

delay++;
contador++;

if(contador >= room_speed * 6)
{
	estado = irandom(2);
	contador = 0;	
}

if(estado == 3)
{
	if(y < 160)
	{
		y += 5;	
	}	
	else
	{
		estado = irandom(2);
		delay = 0;
		contador = 0;
		audio_play_sound(snd_boss,1, true);
	}
}


if(vida <= 0)
{
	instance_destroy();	
}

if(estado == 0)
{
	if(delay > 45)
	{
		instance_create_layer(x, y + 20 , "Inimigos", obj_tiro_inimigo02);
		delay = 0;
	}
	
	if(move == true)
	{
		x -= 4;	
	}
	
	if(move == false)
	{
		x += 4;	
	}
	
	if(x >= 672 ) move = true;
	if(x <= 128) move = false;
}

if(estado == 1)
{
	if(delay == 40){
		instance_create_layer(x - 95, y , "Inimigos", obj_tiro_inimigo);
	}
	if(delay > 50){
		instance_create_layer(x + 94, y , "Inimigos", obj_tiro_inimigo);
		delay = 0;
	}
	
	if(move == true)
	{
		x -= 2;	
	}
	
	if(move == false)
	{
		x += 2;	
	}
	
	if(x >= 672 ) move = true;
	if(x <= 128) move = false;
}

if(estado == 2)
{
	if(delay == 45){
		instance_create_layer(x, y + 20 , "Inimigos", obj_tiro_inimigo02);
		
	}
	if(delay == 40){
		instance_create_layer(x - 95, y , "Inimigos", obj_tiro_inimigo);
	}
	if(delay > 50){
		instance_create_layer(x + 94, y , "Inimigos", obj_tiro_inimigo);
		delay = 0;
	}
}