/// @description Insert description here
// You can write your code in this editor
//tocando o som do tiro
audio_play_sound(snd_tiro_inimigo,5,false);


speed = 4;
if(instance_exists(obj_player)){
direction = point_direction(x,y,obj_player.x, obj_player.y);
//x1 == meu x y1 == meu y x2 == o x do meu alvo y2 == o y do meu alvo
}
else
direction = 270;
image_angle = 180;
