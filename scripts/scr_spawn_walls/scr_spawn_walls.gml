var blockSize = 128;
var widthBlocks = 8;
var heightBlocks = 6;
var widthPixels = widthBlocks * blockSize;
var heightPixels = heightBlocks * blockSize;

switch(argument0){
	case 0:
		instance_create_layer(global.currentX*widthPixels,global.currentY*heightPixels, "Instances", obj_borderBlock);
		instance_create_layer(global.currentX*widthPixels+blockSize*(widthBlocks-1),global.currentY*heightPixels, "Instances", obj_borderBlock);
		instance_create_layer(global.currentX*widthPixels,global.currentY*heightPixels+blockSize*(heightBlocks-1), "Instances", obj_borderBlock);
		instance_create_layer(global.currentX*widthPixels+blockSize*(widthBlocks-1),global.currentY*heightPixels+blockSize*(heightBlocks-1), "Instances", obj_borderBlock);
		break;
	case 1:
		for (var i = 0; i < widthBlocks; i++){
			instance_create_layer(global.currentX*widthPixels+blockSize*i,global.currentY*heightPixels, "Instances", obj_borderBlock);
			instance_create_layer(global.currentX*widthPixels+blockSize*i,global.currentY*heightPixels+blockSize*(heightBlocks-1), "Instances", obj_borderBlock);
		}
		for (var i = 0; i < heightBlocks-2; i++){
			instance_create_layer(global.currentX*widthPixels,global.currentY*heightPixels+blockSize+blockSize*i, "Instances", obj_borderBlock);
		}
		break;
	case 2:
		for (var i = 0; i < widthBlocks; i++){
			instance_create_layer(global.currentX*widthPixels+blockSize*i,global.currentY*heightPixels, "Instances", obj_borderBlock);
			instance_create_layer(global.currentX*widthPixels+blockSize*i,global.currentY*heightPixels+blockSize*(heightBlocks-1), "Instances", obj_borderBlock);
		}
		break;
	case 3:
		for (var i = 0; i < widthBlocks; i++){
			instance_create_layer(global.currentX*widthPixels+blockSize*i,global.currentY*heightPixels, "Instances", obj_borderBlock);
			instance_create_layer(global.currentX*widthPixels+blockSize*i,global.currentY*heightPixels+blockSize*(heightBlocks-1), "Instances", obj_borderBlock);
		}
		for (var i = 0; i < heightBlocks-2; i++){
			instance_create_layer(global.currentX*widthPixels+blockSize*(widthBlocks-1),global.currentY*heightPixels+blockSize+blockSize*i, "Instances", obj_borderBlock);
		}
		break;
	case 4:
		for (var i = 0; i < widthBlocks; i++){
			instance_create_layer(global.currentX*widthPixels+blockSize*i,global.currentY*heightPixels+blockSize*(heightBlocks-1), "Instances", obj_borderBlock);
		}
		for (var i = 0; i < heightBlocks-1; i++){
			instance_create_layer(global.currentX*widthPixels,global.currentY*heightPixels+blockSize*i, "Instances", obj_borderBlock);
			instance_create_layer(global.currentX*widthPixels+blockSize*(widthBlocks-1),global.currentY*heightPixels+blockSize*i, "Instances", obj_borderBlock);
		}
		break;
	case 5:
		for (var i = 0; i < heightBlocks; i++){
			instance_create_layer(global.currentX*widthPixels,global.currentY*heightPixels+blockSize*i, "Instances", obj_borderBlock);
			instance_create_layer(global.currentX*widthPixels+blockSize*(widthBlocks-1),global.currentY*heightPixels+blockSize*i, "Instances", obj_borderBlock);
		}
		break;
	case 6:
		for (var i = 0; i < widthBlocks; i++){
			instance_create_layer(global.currentX*widthPixels+blockSize*i,global.currentY*heightPixels, "Instances", obj_borderBlock);
		}
		for (var i = 0; i < heightBlocks-1; i++){
			instance_create_layer(global.currentX*widthPixels,global.currentY*heightPixels+blockSize+blockSize*i, "Instances", obj_borderBlock);
			instance_create_layer(global.currentX*widthPixels+blockSize*(widthBlocks-1),global.currentY*heightPixels+blockSize+blockSize*i, "Instances", obj_borderBlock);
		}
		break;
	case 7:
		for (var i = 0; i < widthBlocks; i++){
			instance_create_layer(global.currentX*widthPixels+blockSize*i,global.currentY*heightPixels+blockSize*(heightBlocks-1), "Instances", obj_borderBlock);
		}
		for (var i = 0; i < heightBlocks-1; i++){
			instance_create_layer(global.currentX*widthPixels,global.currentY*heightPixels+blockSize*i, "Instances", obj_borderBlock);
		}
		instance_create_layer(global.currentX*widthPixels+blockSize*(widthBlocks-1),global.currentY*heightPixels, "Instances", obj_borderBlock);
		break;
	case 8:
		for (var i = 0; i < widthBlocks; i++){
			instance_create_layer(global.currentX*widthPixels+blockSize*i,global.currentY*heightPixels, "Instances", obj_borderBlock);
		}
		for (var i = 0; i < heightBlocks-1; i++){
			instance_create_layer(global.currentX*widthPixels,global.currentY*heightPixels+blockSize+blockSize*i, "Instances", obj_borderBlock);
		}
		instance_create_layer(global.currentX*widthPixels+blockSize*(widthBlocks-1),global.currentY*heightPixels+blockSize*(heightBlocks-1), "Instances", obj_borderBlock);
		break;
	case 9:
		for (var i = 0; i < widthBlocks; i++){
			instance_create_layer(global.currentX*widthPixels+blockSize*i,global.currentY*heightPixels, "Instances", obj_borderBlock);
		}
		for (var i = 0; i < heightBlocks-1; i++){
			instance_create_layer(global.currentX*widthPixels+blockSize*(widthBlocks-1),global.currentY*heightPixels+blockSize+blockSize*i, "Instances", obj_borderBlock);
		}
		instance_create_layer(global.currentX*widthPixels,global.currentY*heightPixels+blockSize*(heightBlocks-1), "Instances", obj_borderBlock);
		break;
	case 10:
		for (var i = 0; i < widthBlocks; i++){
			instance_create_layer(global.currentX*widthPixels+blockSize*i,global.currentY*heightPixels+blockSize*(heightBlocks-1), "Instances", obj_borderBlock);
		}
		for (var i = 0; i < heightBlocks-1; i++){
			instance_create_layer(global.currentX*widthPixels+blockSize*(widthBlocks-1),global.currentY*heightPixels+blockSize*i, "Instances", obj_borderBlock);
		}
		instance_create_layer(global.currentX*widthPixels,global.currentY*heightPixels, "Instances", obj_borderBlock);
		break;
	case 11:
		for (var i = 0; i < widthBlocks; i++){
			instance_create_layer(global.currentX*widthPixels+blockSize*i,global.currentY*heightPixels, "Instances", obj_borderBlock);
		}
		instance_create_layer(global.currentX*widthPixels,global.currentY*heightPixels+blockSize*(heightBlocks-1), "Instances", obj_borderBlock);
		instance_create_layer(global.currentX*widthPixels+blockSize*(widthBlocks-1),global.currentY*heightPixels+blockSize*(heightBlocks-1), "Instances", obj_borderBlock);
		break;
	case 12:	
		for (var i = 0; i < heightBlocks; i++){
			instance_create_layer(global.currentX*widthPixels+blockSize*(widthBlocks-1),global.currentY*heightPixels+blockSize*i, "Instances", obj_borderBlock);
		}
		instance_create_layer(global.currentX*widthPixels,global.currentY*heightPixels, "Instances", obj_borderBlock);
		instance_create_layer(global.currentX*widthPixels,global.currentY*heightPixels+blockSize*(heightBlocks-1), "Instances", obj_borderBlock);
		break;
	case 13:
		for (var i = 0; i < widthBlocks; i++){
			instance_create_layer(global.currentX*widthPixels+blockSize*i,global.currentY*heightPixels+blockSize*(heightBlocks-1), "Instances", obj_borderBlock);
		}
		instance_create_layer(global.currentX*widthPixels,global.currentY*heightPixels, "Instances", obj_borderBlock);
		instance_create_layer(global.currentX*widthPixels+blockSize*(widthBlocks-1),global.currentY*heightPixels, "Instances", obj_borderBlock);
		break;
	case 14:
		for (var i = 0; i < heightBlocks; i++){
			instance_create_layer(global.currentX*widthPixels,global.currentY*heightPixels+blockSize*i, "Instances", obj_borderBlock);
		}
		instance_create_layer(global.currentX*widthPixels+blockSize*(widthBlocks-1),global.currentY*heightPixels, "Instances", obj_borderBlock);
		instance_create_layer(global.currentX*widthPixels+blockSize*(widthBlocks-1),global.currentY*heightPixels+blockSize*(heightBlocks-1), "Instances", obj_borderBlock);
		break;
}