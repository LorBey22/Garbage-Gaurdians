if global.fight_one_done == false
{
	instance_create_layer(140,575,"Instances", Obj_Fight_1_Button);
	//instance_create_layer(140,575,"Lock_Buttons", Obj_Little_Guy);
	//targetx = 140
	//targety = 575
	instance_create_layer(680,400,"Lock_Buttons", Obj_Button_Locked);
	instance_create_layer(1085,315,"Lock_Buttons", Obj_Button_Locked);
}
else if global.fight_one_done == true and global.fight_two_done == false
{
	instance_create_layer(140,575,"Instances", Obj_Fight_1_Button);
	instance_create_layer(680,400,"Instances", Obj_Fight_2_Button);
	//targetx = 680
	//targety = 400
	//instance_create_layer(680,400,"Lock_Buttons", Obj_Little_Guy);
	instance_create_layer(1085,315,"Lock_Buttons", Obj_Button_Locked);
}
else if global.fight_two_done == true 
{
	instance_create_layer(140,575,"Instances", Obj_Fight_1_Button);
	instance_create_layer(680,400,"Instances", Obj_Fight_2_Button);
	instance_create_layer(1085,315,"Instances", Obj_Fight_3_Button);
	//targetx = 1085
	//targety = 315
	//instance_create_layer(1085,315,"Lock_Buttons", Obj_Little_Guy);
}


