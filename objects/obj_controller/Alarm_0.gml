if(!(obj_truck.dying || obj_truck.dead))
{
	obj_truck.stuck = false;
	room_goto(rm_boss);
}