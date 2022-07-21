/// @description Melhorando a imagem do tiro
// You can write your code in this editor
draw_self(); //estou me desenhando

gpu_set_blendmode(bm_add);

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale + 1, image_yscale + .5,image_angle,cor, .5);

gpu_set_blendmode(bm_normal);