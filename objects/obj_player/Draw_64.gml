/// @description Insert description here
// You can write your code in this editor
var n = 1;
//exibir o life do player
repeat(vida){
	
	draw_sprite_ext(sprite_index, image_index, 20*n, room_height-30,.3,.3,image_angle, c_white, .7);
	n++;
}

repeat(qtd_escudo)
{
	draw_sprite_ext(spr_escudo, 0, room_width-(20 * n), room_height-30,.3,.3,image_angle, c_white, .7);
	n++;
}