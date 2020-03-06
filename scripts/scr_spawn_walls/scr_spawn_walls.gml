switch(argument0){
	case 0:
		instance_create_layer(global.currentX*1024,global.currentY*768, "Instances", obj_borderBlock);
		instance_create_layer(global.currentX*1024+128*7,global.currentY*768, "Instances", obj_borderBlock);
		instance_create_layer(global.currentX*1024,global.currentY*768+640, "Instances", obj_borderBlock);
		instance_create_layer(global.currentX*1024+128*7,global.currentY*768+640, "Instances", obj_borderBlock);
		break;
	case 1:
		for (var i = 0; i < 8; i++){
			instance_create_layer(global.currentX*1024+128*i,global.currentY*768, "Instances", obj_borderBlock);
			instance_create_layer(global.currentX*1024+128*i,global.currentY*768+640, "Instances", obj_borderBlock);
		}
		for (var i = 0; i < 4; i++){
			instance_create_layer(global.currentX*1024,global.currentY*768+128+128*i, "Instances", obj_borderBlock);
		}
		break;
	case 2:
		for (var i = 0; i < 8; i++){
			instance_create_layer(global.currentX*1024+128*i,global.currentY*768, "Instances", obj_borderBlock);
			instance_create_layer(global.currentX*1024+128*i,global.currentY*768+640, "Instances", obj_borderBlock);
		}
		break;
	case 3:
		for (var i = 0; i < 8; i++){
			instance_create_layer(global.currentX*1024+128*i,global.currentY*768, "Instances", obj_borderBlock);
			instance_create_layer(global.currentX*1024+128*i,global.currentY*768+640, "Instances", obj_borderBlock);
		}
		for (var i = 0; i < 4; i++){
			instance_create_layer(global.currentX*1024+896,global.currentY*768+128+128*i, "Instances", obj_borderBlock);
		}
		break;
	case 4:
		for (var i = 0; i < 8; i++){
			instance_create_layer(global.currentX*1024+128*i,global.currentY*768+640, "Instances", obj_borderBlock);
		}
		for (var i = 0; i < 5; i++){
			instance_create_layer(global.currentX*1024,global.currentY*768+128*i, "Instances", obj_borderBlock);
			instance_create_layer(global.currentX*1024+896,global.currentY*768+128*i, "Instances", obj_borderBlock);
		}
		break;
	case 5:
		for (var i = 0; i < 6; i++){
			instance_create_layer(global.currentX*1024,global.currentY*768+128*i, "Instances", obj_borderBlock);
			instance_create_layer(global.currentX*1024+896,global.currentY*768+128*i, "Instances", obj_borderBlock);
		}
		break;
	case 6:
		for (var i = 0; i < 8; i++){
			instance_create_layer(global.currentX*1024+128*i,global.currentY*768, "Instances", obj_borderBlock);
		}
		for (var i = 0; i < 5; i++){
			instance_create_layer(global.currentX*1024,global.currentY*768+128+128*i, "Instances", obj_borderBlock);
			instance_create_layer(global.currentX*1024+896,global.currentY*768+128+128*i, "Instances", obj_borderBlock);
		}
		break;
	case 7:
		for (var i = 0; i < 8; i++){
			instance_create_layer(global.currentX*1024+128*i,global.currentY*768+640, "Instances", obj_borderBlock);
		}
		for (var i = 0; i < 5; i++){
			instance_create_layer(global.currentX*1024,global.currentY*768+128*i, "Instances", obj_borderBlock);
		}
		instance_create_layer(global.currentX*1024+896,global.currentY*768, "Instances", obj_borderBlock);
		break;
	case 8:
		for (var i = 0; i < 8; i++){
			instance_create_layer(global.currentX*1024+128*i,global.currentY*768, "Instances", obj_borderBlock);
		}
		for (var i = 0; i < 5; i++){
			instance_create_layer(global.currentX*1024,global.currentY*768+128+128*i, "Instances", obj_borderBlock);
		}
		instance_create_layer(global.currentX*1024+896,global.currentY*768+640, "Instances", obj_borderBlock);
		break;
	case 9:
		for (var i = 0; i < 8; i++){
			instance_create_layer(global.currentX*1024+128*i,global.currentY*768, "Instances", obj_borderBlock);
		}
		for (var i = 0; i < 5; i++){
			instance_create_layer(global.currentX*1024+896,global.currentY*768+128+128*i, "Instances", obj_borderBlock);
		}
		instance_create_layer(global.currentX*1024,global.currentY*768+640, "Instances", obj_borderBlock);
		break;
	case 10:
		for (var i = 0; i < 8; i++){
			instance_create_layer(global.currentX*1024+128*i,global.currentY*768+640, "Instances", obj_borderBlock);
		}
		for (var i = 0; i < 5; i++){
			instance_create_layer(global.currentX*1024+896,global.currentY*768+128*i, "Instances", obj_borderBlock);
		}
		instance_create_layer(global.currentX*1024,global.currentY*768, "Instances", obj_borderBlock);
		break;
	case 11:
		for (var i = 0; i < 8; i++){
			instance_create_layer(global.currentX*1024+128*i,global.currentY*768, "Instances", obj_borderBlock);
		}
		instance_create_layer(global.currentX*1024,global.currentY*768+640, "Instances", obj_borderBlock);
		instance_create_layer(global.currentX*1024+896,global.currentY*768+640, "Instances", obj_borderBlock);
		break;
	case 12:	
		for (var i = 0; i < 6; i++){
			instance_create_layer(global.currentX*1024+896,global.currentY*768+128*i, "Instances", obj_borderBlock);
		}
		instance_create_layer(global.currentX*1024,global.currentY*768, "Instances", obj_borderBlock);
		instance_create_layer(global.currentX*1024,global.currentY*768+640, "Instances", obj_borderBlock);
		break;
	case 13:
		for (var i = 0; i < 8; i++){
			instance_create_layer(global.currentX*1024+128*i,global.currentY*768+640, "Instances", obj_borderBlock);
		}
		instance_create_layer(global.currentX*1024,global.currentY*768, "Instances", obj_borderBlock);
		instance_create_layer(global.currentX*1024+896,global.currentY*768, "Instances", obj_borderBlock);
		break;
	case 14:
		for (var i = 0; i < 6; i++){
			instance_create_layer(global.currentX*1024,global.currentY*768+128*i, "Instances", obj_borderBlock);
		}
		instance_create_layer(global.currentX*1024+896,global.currentY*768, "Instances", obj_borderBlock);
		instance_create_layer(global.currentX*1024+896,global.currentY*768+640, "Instances", obj_borderBlock);
		break;
}