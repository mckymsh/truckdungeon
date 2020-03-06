roomsAcross = 5;
roomsTall = 7;
grid = ds_grid_create(roomsAcross,roomsTall);
ds_grid_clear(grid, 0);

var count = 1;
var stack = ds_stack_create();
visited[0] = 17;
var current;
ds_grid_add(grid,2,3,1);
ds_stack_push(stack,17);

var isVisited = false;
var checking;

var numRooms = 0;

while(!ds_stack_empty(stack)){
	current = ds_stack_pop(stack);
	if (current-1 % roomsAcross != roomsAcross - 1 && current-1 > -1){
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
				numRooms++;
			}
			
		}
		isVisited = false;
	} 
	if (current+1 % roomsAcross != 0  && current+1 < roomsAcross * roomsTall){
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
				numRooms++;
			}
			
		}
		isVisited = false;
	}
	
}
//show_debug_message(numRooms);
//if (numRooms < 10){
//	scr_create_grid();	
//}
//if (numRooms > 25){
//	scr_create_grid();	
//}


//0 is open, 1 is c, 2 is left-right, 3 is reverse c, 4 is u, 5 is up-down, 6 is reverse u, 
//7 is L, 8 is upside down L, 9 is reverse upside L, 10 is reverse L,
//11 is left,right,down, 12 is up,down,left, 13 is left,right,up, 14 is up,down,right

ds_grid_set(grid,2,3,1);
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
							ds_grid_set(grid,i,j,0);
						} else {
							// no left, no up, no right, down
							scr_spawn_walls(6);
						}
					} else {
						// no left, no up, right
						if (j+1 > roomsTall-1 || ds_grid_get(grid,i,j+1) == 0) {
							// no left, no up, right, no down
							scr_spawn_walls(1);
						} else {
							// no left, no up, right, down
							scr_spawn_walls(8);
						}
					}
				} else {
					// no left, up
					if (i+1 > roomsAcross-1 || ds_grid_get(grid,i+1,j) == 0) {
						// no left, up, no right
						if (j+1 > roomsTall-1 || ds_grid_get(grid,i,j+1) == 0) {
							// no left, up, no right, no down
							scr_spawn_walls(4);
						} else {
							// no left, up, no right, down
							scr_spawn_walls(5);
						}
					} else {
						// no left, up, right
						if (j+1 > roomsTall-1 || ds_grid_get(grid,i,j+1) == 0) {
							// no left, up, right, no down
							scr_spawn_walls(7);
						} else {
							// no left, up, right, down
							scr_spawn_walls(14);
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
						} else {
							// left, no up, no right, down
							scr_spawn_walls(9);
						}
					} else {
						// left, no up, right
						if (j+1 > roomsTall-1 || ds_grid_get(grid,i,j+1) == 0) {
							// left, no up, right, no down
							scr_spawn_walls(2);
						} else {
							// left, no up, right, down
							scr_spawn_walls(11);
						}
					}
				} else {
					// left, up
					if (i+1 > roomsAcross-1 || ds_grid_get(grid,i+1,j) == 0) {
						// left, up, no right
						if (j+1 > roomsTall-1 || ds_grid_get(grid,i,j+1) == 0) {
							// left, up, no right, no down
							scr_spawn_walls(10);
						} else {
							// left, up, no right, down
							scr_spawn_walls(12);
						}
					} else {
						// left, up, right
						if (j+1 > roomsTall-1 || ds_grid_get(grid,i,j+1) == 0) {
							// left, up, right, no down
							scr_spawn_walls(13);
						} else {
							// left, up, right, down
							scr_spawn_walls(0);
						}
					}
				}
			}
			
		}
	}
}