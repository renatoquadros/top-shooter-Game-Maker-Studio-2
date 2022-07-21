/// @description Insert description here
// You can write your code in this editor
if(level_tiro < 5)
{
	level_tiro++;
}else {
	obj_control.expA += 25;	
}

instance_destroy(other);