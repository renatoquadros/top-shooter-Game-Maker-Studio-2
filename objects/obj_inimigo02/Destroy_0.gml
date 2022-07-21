/// @description Insert description here
// You can write your code in this editor
instance_create_layer(x,y,"Inimigos", obj_explosao);

if(tomei_tiro)
{
	//Tremendo a tela
	scr_treme(15, noone, "Inimigos");
	
	obj_control.expA += 5;
	global.total_inimigos_destruidos++;
	global.inimigos_destruidos++;

	var chance = random(100);

	if(chance > 95) // 5% de chance de dropar o item
	{
		instance_create_layer(x,y,"Inimigos", obj_powerUp);
	}
}