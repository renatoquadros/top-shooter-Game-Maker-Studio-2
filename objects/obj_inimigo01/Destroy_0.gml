/// @description Insert description here
// You can write your code in this editor
instance_create_layer(x,y,"Inimigos", obj_explosao);

if(tomei_tiro)	
{
	scr_treme(10, noone, "Inimigos");
	
	obj_control.expA += 2;
	global.total_inimigos_destruidos++;
	global.inimigos_destruidos++;

	var chance = random(99);

	if(chance > 50) // 5% de chance de dropar o item
	{
		instance_create_layer(x,y,"Inimigos", obj_powerUp);
	}
}