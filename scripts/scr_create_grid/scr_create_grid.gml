global.roomsAcross = 5;
global.roomsTall = 7;
global.grid = ds_grid_create(global.roomsAcross,global.roomsTall);
ds_grid_clear(global.grid, 0);

var count = 1;
var stack = ds_stack_create();
visited[0] = 17;
var current;
ds_grid_add(global.grid,2,3,1);
ds_stack_push(stack,17);

var isVisited = false;
var checking;

var numRooms = 0;

while(!ds_stack_empty(stack)){
	current = ds_stack_pop(stack);
	if (current-1 % global.roomsAcross != global.roomsAcross - 1 && current-1 > -1){
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
				ds_grid_set(global.grid,checking%global.roomsAcross,floor(checking/global.roomsAcross),1);
				ds_stack_push(stack,checking);
				numRooms++;
			}
			
		}
		isVisited = false;
	} 
	if (current+1 % global.roomsAcross != 0  && current+1 < global.roomsAcross * global.roomsTall){
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
				ds_grid_set(global.grid,checking%global.roomsAcross,floor(checking/global.roomsAcross),1);
				ds_stack_push(stack,checking);
				numRooms++;
			}
			
		}
		isVisited = false;
	}
	if (current-global.roomsAcross > -1){
		checking = current-global.roomsAcross;
		for (i = 0; i < array_length_1d(visited); i++){
			if (visited[i] == checking){
				isVisited = true;
				break;
			}
		}
		if (!isVisited){
			visited[count++] = checking;
			if (random(1) > 0.45){
				ds_grid_set(global.grid,checking%global.roomsAcross,floor(checking/global.roomsAcross),1);
				ds_stack_push(stack,checking);
				numRooms++;
			}
			
		}
		isVisited = false;
	}
	if (current+global.roomsAcross < global.roomsAcross * global.roomsTall){
		checking = current+global.roomsAcross;
		for (i = 0; i < array_length_1d(visited); i++){
			if (visited[i] == checking){
				isVisited = true;
				break;
			}
		}
		if (!isVisited){
			visited[count++] = checking;
			if (random(1) > 0.45){
				ds_grid_set(global.grid,checking%global.roomsAcross,floor(checking/global.roomsAcross),1);
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