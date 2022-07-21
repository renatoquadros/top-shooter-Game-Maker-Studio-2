/// @description Insert description here
// You can write your code in this editor

//configurando para tremer a tela

var camX = random_range(-forca, forca);
var camY = random_range(-forca,forca);

camera_set_view_pos(view_camera[0], camX, camY);

forca *= .9; 

if(som != noone)
{
	audio_play_sound(som, 5, false);
	som = noone;
}