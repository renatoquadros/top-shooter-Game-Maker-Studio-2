/// @description Insert description here
// You can write your code in this editor

var yy = (y - sprite_yoffset) + sprite_height/2;

var e = instance_create_layer(x,yy, "inimigos", obj_explosao);
e.pai_boss = true;
e.image_xscale = 2;
e.image_yscale = 2