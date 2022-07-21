///@description treme_tela
///@arg força
///@arg som
///@arg layer
function scr_treme(argument0, argument1, argument2) {

	var f = argument0;
	var s = argument1;
	var l = argument2;

	var treme = instance_create_layer(0,0,"Inimigos", obj_treme);

	treme.f = f;
	treme.s = s;


}
