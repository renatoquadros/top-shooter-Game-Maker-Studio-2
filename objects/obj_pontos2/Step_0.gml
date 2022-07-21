/// @description Insert description here
// You can write your code in this editor

//checar a pontuaçao dos inimigos destruidos
if(room == rm_level01)
{
	if(global.inimigos_destruidos > global.maior_inimigos_destruidos)
	{
		global.maior_inimigos_destruidos = global.inimigos_destruidos;		
	}
}