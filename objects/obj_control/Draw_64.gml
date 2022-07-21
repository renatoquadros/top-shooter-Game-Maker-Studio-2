/// @description Insert description here
// You can write your code in this editor

//Definindo a fonte
draw_set_font(fnt_exibir);

draw_set_halign(fa_left);

//exibindo o level atual
draw_text(20,20,"Level:" + string(global.lvl));

//exibindo exp atual
draw_text(20,40,"Exp: "+ string(int64((expA))));

//exibindo quanto falta o exp para o proximo level
draw_text(20,60, "Prox Level: " + string(int64(expN - expA)));