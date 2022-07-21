/// @description Insert description here
// You can write your code in this editor

var t = instance_create_layer(0,0,"Instances", obj_transicao);

t.destino = destino;

if(destino == noone)
{
	game_end();	
}