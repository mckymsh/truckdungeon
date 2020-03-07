roomsAcross = 5;
roomsTall = 7;
grid = ds_grid_create(roomsAcross,roomsTall);
ds_grid_clear(grid, 0);

var count = 1;
var stack = ds_stack_create();
visited[0] = 17;
var current;
ds_grid_set(grid,2,3,1);
ds_stack_push(stack,17);

var isVisited = false;
var checking;

rooms[0] = -1;
var numRooms = 0;

while(!ds_stack_empty(stack)){
	current = ds_stack_pop(stack);
	if ((current-1) % roomsAcross != roomsAcross - 1 && current-1 > -1){
		checking = current-1;
		for (i = 0; i < array_length_1d(visited); i++){
			if (visited[i] == checking){
				isVisited = true;
				break;
			}
		}
		if (!isVisited){
			visited[count++] = checking;
			if (random(1) > 0.45){
				ds_grid_set(grid,checking%roomsAcross,floor(checking/roomsAcross),1);
				ds_stack_push(stack,checking);
				rooms[numRooms] = checking;
				numRooms++;
			}
			
		}
		isVisited = false;
	} 
	if ((current+1) % roomsAcross != 0  && current+1 < roomsAcross * roomsTall){
		checking = current+1;
		for (i = 0; i < array_length_1d(visited); i++){
			if (visited[i] == checking){
				isVisited = true;
				break;
			}
		}
		if (!isVisited){
			visited[count++] = checking;
			if (random(1) > 0.45){
				ds_grid_set(grid,checking%roomsAcross,floor(checking/roomsAcross),1);
				ds_stack_push(stack,checking);
				rooms[numRooms] = checking;
				numRooms++;
			}
			
		}
		isVisited = false;
	}
	if (current-roomsAcross > -1){
		checking = current-roomsAcross;
		for (i = 0; i < array_length_1d(visited); i++){
			if (visited[i] == checking){
				isVisited = true;
				break;
			}
		}
		if (!isVisited){
			visited[count++] = checking;
			if (random(1) > 0.45){
				ds_grid_set(grid,checking%roomsAcross,floor(checking/roomsAcross),1);
				ds_stack_push(stack,checking);
				rooms[numRooms] = checking;
				numRooms++;
			}
			
		}
		isVisited = false;
	}
	if (current+roomsAcross < roomsAcross * roomsTall){
		checking = current+roomsAcross;
		for (i = 0; i < array_length_1d(visited); i++){
			if (visited[i] == checking){
				isVisited = true;
				break;
			}
		}
		if (!isVisited){
			visited[count++] = checking;
			if (random(1) > 0.45){
				ds_grid_set(grid,checking%roomsAcross,floor(checking/roomsAcross),1);
				ds_stack_push(stack,checking);
				rooms[numRooms] = checking;
				numRooms++;
			}
			
		}
		isVisited = false;
	}
	
}

show_debug_message("Rooms");
show_debug_message(numRooms);
show_debug_message(rooms);

if (numRooms < 10){
	show_debug_message("Too few rooms");
	game_restart();
}
if (numRooms > 25){
	show_debug_message("Too many rooms");
	game_restart();
}

//Spawns the rooms
//0 is open, 1 is c, 2 is left-right, 3 is reverse c, 4 is u, 5 is up-down, 6 is reverse u, 
//7 is L, 8 is upside down L, 9 is reverse upside L, 10 is reverse L,
//11 is left,right,down, 12 is up,down,left, 13 is left,right,up, 14 is up,down,right

deadEnds = ds_list_create();
corridors = ds_list_create();
//Could potentially further differentiate rooms for spawning

for (var i = 0; i < roomsAcross; i++){
	for (var j = 0; j < roomsTall; j++){
		global.currentX = i;
		global.currentY = j;
		if (ds_grid_get(grid,i,j) == 1){
			if (i-1 < 0 || ds_grid_get(grid,i-1,j) == 0) {
				// no left
				if (j-1 < 0 || ds_grid_get(grid,i,j-1) == 0) {
					// no left, no up
					if (i+1 > roomsAcross-1 || ds_grid_get(grid,i+1,j) == 0) {
						// no left, no up, no right
						if (j+1 > roomsTall-1 || ds_grid_get(grid,i,j+1) == 0) {
							// no left, no up, no right, no down
							// should be unreachable
							ds_grid_set(grid,i,j,0);
						} else {
							// no left, no up, no right, down
							scr_spawn_walls(6);
							ds_list_add(deadEnds,[i,j]);
						}
					} else {
						// no left, no up, right
						if (j+1 > roomsTall-1 || ds_grid_get(grid,i,j+1) == 0) {
							// no left, no up, right, no down
							scr_spawn_walls(1);
							ds_list_add(deadEnds,[i,j]);
						} else {
							// no left, no up, right, down
							scr_spawn_walls(8);
							ds_list_add(corridors,[i,j]);
						}
					}
				} else {
					// no left, up
					if (i+1 > roomsAcross-1 || ds_grid_get(grid,i+1,j) == 0) {
						// no left, up, no right
						if (j+1 > roomsTall-1 || ds_grid_get(grid,i,j+1) == 0) {
							// no left, up, no right, no down
							scr_spawn_walls(4);
							ds_list_add(deadEnds,[i,j]);
						} else {
							// no left, up, no right, down
							scr_spawn_walls(5);
							ds_list_add(corridors,[i,j]);
						}
					} else {
						// no left, up, right
						if (j+1 > roomsTall-1 || ds_grid_get(grid,i,j+1) == 0) {
							// no left, up, right, no down
							scr_spawn_walls(7);
							ds_list_add(corridors,[i,j]);
						} else {
							// no left, up, right, down
							scr_spawn_walls(14);
							ds_list_add(corridors,[i,j]);
						}
					}
				}
			} else {
				// left
				if (j-1 < 0 || ds_grid_get(grid,i,j-1) == 0) {
					// left, no up
					if (i+1 > roomsAcross-1 || ds_grid_get(grid,i+1,j) == 0) {
						// left, no up, no right
						if (j+1 > roomsTall-1 || ds_grid_get(grid,i,j+1) == 0) {
							// left, no up, no right, no down
							scr_spawn_walls(3);
							ds_list_add(deadEnds,[i,j]);
						} else {
							// left, no up, no right, down
							scr_spawn_walls(9);
							ds_list_add(corridors,[i,j]);
						}
					} else {
						// left, no up, right
						if (j+1 > roomsTall-1 || ds_grid_get(grid,i,j+1) == 0) {
							// left, no up, right, no down
							scr_spawn_walls(2);
							ds_list_add(corridors,[i,j]);
						} else {
							// left, no up, right, down
							scr_spawn_walls(11);
							ds_list_add(corridors,[i,j]);
						}
					}
				} else {
					// left, up
					if (i+1 > roomsAcross-1 || ds_grid_get(grid,i+1,j) == 0) {
						// left, up, no right
						if (j+1 > roomsTall-1 || ds_grid_get(grid,i,j+1) == 0) {
							// left, up, no right, no down
							scr_spawn_walls(10);
							ds_list_add(corridors,[i,j]);
						} else {
							// left, up, no right, down
							scr_spawn_walls(12);
							ds_list_add(corridors,[i,j]);
						}
					} else {
						// left, up, right
						if (j+1 > roomsTall-1 || ds_grid_get(grid,i,j+1) == 0) {
							// left, up, right, no down
							scr_spawn_walls(13);
							ds_list_add(corridors,[i,j]);
						} else {
							// left, up, right, down
							scr_spawn_walls(0);
							ds_list_add(corridors,[i,j]);
						}
					}
				}
			}
		}
	}
}

//removes center room from possible powerup and enemy spawn locations
var temp = ds_list_find_index(deadEnds,[2,3]);
if (temp == -1){
	ds_list_delete(deadEnds,temp);
} else {
	temp = ds_list_find_index(corridors,[2,3]);
	if (temp == -1){
		ds_list_delete(corridors,temp);
	}
}

//checks that there are enough dead ends
if (ds_list_size(deadEnds) < 2){
	show_debug_message("Not enough dead ends");
	game_restart();	
}

//Spawns enemies and powerups (has to be another loop because first loop deletes unconnected rooms)

//Spawn one of each power up in random non-spawn room dead ends
var index = irandom(ds_list_size(deadEnds)-1);
randomRoom = ds_list_find_value(deadEnds,index);
ds_list_delete(deadEnds, index);
instance_create_layer(randomRoom[0]*1024+450,randomRoom[1]*768+320, "Instances", obj_pickup_minigun);

index = irandom(ds_list_size(deadEnds)-1);
randomRoom = ds_list_find_value(deadEnds,index);
ds_list_delete(deadEnds, index);
instance_create_layer(randomRoom[0]*1024+450,randomRoom[1]*768+320, "Instances", obj_pickup_rocketlauncher);

//Spawns two towgre enemies in random non-spawn room corridors
index = irandom(ds_list_size(corridors)-1);
randomRoom = ds_list_find_value(corridors,index);
ds_list_delete(corridors, index);
instance_create_layer(randomRoom[0]*1024+450,randomRoom[1]*768+320, "Instances", obj_enemy_towgre);

index = irandom(ds_list_size(corridors)-1);
randomRoom = ds_list_find_value(corridors,index);
ds_list_delete(corridors, index);
instance_create_layer(randomRoom[0]*1024+450,randomRoom[1]*768+320, "Instances", obj_enemy_towgre);

//Low chance that enemies (just towgres right now) will spawn in additional non-spawn room corridors
while (ds_list_size(corridors) > 0){
	index = irandom(ds_list_size(corridors)-1);
	randomRoom = ds_list_find_value(corridors,index);
	ds_list_delete(corridors, index);
	if (random(1) > .85){
		instance_create_layer(randomRoom[0]*1024+450,randomRoom[1]*768+320, "Instances", obj_enemy_towgre);
	}
}