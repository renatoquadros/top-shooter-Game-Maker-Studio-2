/// @description Insert description here
// You can write your code in this editor

//Exibindo a pontuacao
if(room == rm_pontos){
	draw_set_font(fnt_score);	
	draw_set_halign(fa_center);
	draw_text(room_width/2,200,"HighScores")
	
	
	draw_set_font(fnt_exibir);
	draw_text(room_width/2, room_height/2, "Highest Score: "+ string(global.highscore));
	draw_text(room_width/2, (room_height/2) + 50, "Total Inimigos destruidos: "+ string(global.total_inimigos_destruidos));
	draw_text(room_width/2, (room_height/2) + 100, "Inimigos destruídos em uma partida: "+ string(global.maior_inimigos_destruidos));
	
	draw_set_halign(fa_left);
}