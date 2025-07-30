var variable bullet_dir = instance_find(obj_bullet,0).direction
if bullet_dir > direction+10{
	instance_destroy();
}else if(bullet_dir < direction-10){
	instance_destroy();
}