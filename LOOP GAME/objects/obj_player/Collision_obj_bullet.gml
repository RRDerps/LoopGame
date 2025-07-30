var bullet_dir = instance_find(obj_bullet,instance_number(obj_bullet)-1).direction
if bullet_dir > direction+10{
	instance_destroy();
}else if(bullet_dir < direction-10){
	instance_destroy();
}