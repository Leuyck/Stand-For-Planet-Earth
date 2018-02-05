// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = -50; // obj_mur_epais
global.__objectDepths[1] = 0; // obj_mur_epais_angle
global.__objectDepths[2] = 0; // obj_mur_epais_bout
global.__objectDepths[3] = 0; // obj_mur_epais_croix
global.__objectDepths[4] = 0; // obj_mur_epais_plot
global.__objectDepths[5] = 0; // obj_mur_fin
global.__objectDepths[6] = 0; // obj_mur_epais_T
global.__objectDepths[7] = 0; // obj_mur_fin_bout
global.__objectDepths[8] = 0; // obj_mur_fin_plot
global.__objectDepths[9] = 1; // obj_chaise_marron
global.__objectDepths[10] = 0; // obj_mur_fin_T
global.__objectDepths[11] = 0; // obj_chaise_bleu
global.__objectDepths[12] = -5; // obj_crate
global.__objectDepths[13] = 0; // obj_gene
global.__objectDepths[14] = 0; // obj_mur_fin_angle
global.__objectDepths[15] = 0; // obj_rack_serveur
global.__objectDepths[16] = 0; // obj_mur_fin_croix
global.__objectDepths[17] = 0; // obj_distributeur
global.__objectDepths[18] = -10; // obj_table
global.__objectDepths[19] = 0; // obj_table_attente
global.__objectDepths[20] = 0; // obj_ecran
global.__objectDepths[21] = 0; // obj_car_cop
global.__objectDepths[22] = 0; // obj_car_viper
global.__objectDepths[23] = 0; // obj_canape
global.__objectDepths[24] = 0; // obj_car_audi
global.__objectDepths[25] = 0; // obj_car
global.__objectDepths[26] = 0; // obj_car_van
global.__objectDepths[27] = 0; // obj_car_minitruck
global.__objectDepths[28] = 0; // obj_car_truck
global.__objectDepths[29] = 0; // obj_car_amb
global.__objectDepths[30] = 0; // obj_car_taxi
global.__objectDepths[31] = 0; // obj_automaticDoor
global.__objectDepths[32] = 100; // obj_wall
global.__objectDepths[33] = 0; // obj_gabari_hero
global.__objectDepths[34] = 0; // obj_door_parent
global.__objectDepths[35] = 0; // obj_door
global.__objectDepths[36] = 0; // obj_button
global.__objectDepths[37] = -101; // obj_engine
global.__objectDepths[38] = -10; // obj_light_torch
global.__objectDepths[39] = -100; // obj_light
global.__objectDepths[40] = 0; // obj_shadow_mask
global.__objectDepths[41] = 0; // obj_light_menu
global.__objectDepths[42] = -1001; // obj_light2
global.__objectDepths[43] = 0; // obj_bullet_base
global.__objectDepths[44] = 0; // obj_bullet2
global.__objectDepths[45] = -500; // obj_energyWall
global.__objectDepths[46] = 0; // obj_bullet1
global.__objectDepths[47] = 0; // obj_bulletNPC
global.__objectDepths[48] = 0; // obj_bullet2_explosion
global.__objectDepths[49] = 0; // obj_bulletTurret
global.__objectDepths[50] = 0; // obj_bullet_EngiBot
global.__objectDepths[51] = -100; // obj_control
global.__objectDepths[52] = 0; // obj_bullet_BatBot
global.__objectDepths[53] = 0; // obj_bullet4
global.__objectDepths[54] = 0; // obj_bullet_batte_parent
global.__objectDepths[55] = 10; // obj_turret_hero3
global.__objectDepths[56] = 0; // obj_bullet_robot_shield
global.__objectDepths[57] = 0; // obj_bullet_PetBot
global.__objectDepths[58] = 0; // obj_title
global.__objectDepths[59] = 0; // obj_mapselection
global.__objectDepths[60] = 0; // obj_btn_solo
global.__objectDepths[61] = 0; // obj_btn_parent
global.__objectDepths[62] = 0; // obj_btn_option
global.__objectDepths[63] = 0; // obj_btn_multi
global.__objectDepths[64] = 0; // obj_btn_exit
global.__objectDepths[65] = 0; // obj_btn_host
global.__objectDepths[66] = 0; // obj_btn_resume
global.__objectDepths[67] = 0; // obj_btn_join
global.__objectDepths[68] = 0; // obj_btn_start
global.__objectDepths[69] = 0; // obj_btn_ok
global.__objectDepths[70] = 0; // obj_btn_back
global.__objectDepths[71] = 0; // obj_btn_fastJoin
global.__objectDepths[72] = 0; // obj_textbox_parent
global.__objectDepths[73] = 0; // obj_textbox_pseudo
global.__objectDepths[74] = 0; // obj_btn_map1
global.__objectDepths[75] = 0; // obj_btn_map2
global.__objectDepths[76] = 0; // obj_btn_map_parent
global.__objectDepths[77] = 0; // obj_btn_map3
global.__objectDepths[78] = 0; // obj_textbox_port
global.__objectDepths[79] = 0; // obj_btn_previous
global.__objectDepths[80] = 0; // obj_btn_scrollHero
global.__objectDepths[81] = 0; // obj_btn_next
global.__objectDepths[82] = 0; // obj_textbox_ip
global.__objectDepths[83] = 0; // obj_team
global.__objectDepths[84] = 0; // obj_player
global.__objectDepths[85] = 0; // obj_NanoBot
global.__objectDepths[86] = 0; // obj_server
global.__objectDepths[87] = 0; // obj_chose_hero_information
global.__objectDepths[88] = 0; // obj_EngiBot
global.__objectDepths[89] = 0; // obj_BadaBot
global.__objectDepths[90] = 0; // obj_localPlayer
global.__objectDepths[91] = 0; // obj_BatBot
global.__objectDepths[92] = 0; // obj_RamBot
global.__objectDepths[93] = 0; // obj_PetBot_jambes
global.__objectDepths[94] = 0; // obj_localPlayer_tracker
global.__objectDepths[95] = 0; // obj_BatBot_jambes
global.__objectDepths[96] = -1000; // obj_PetDrone
global.__objectDepths[97] = 0; // obj_npc_human_pistol
global.__objectDepths[98] = 0; // obj_PetBot
global.__objectDepths[99] = 0; // obj_npc_chief_soldier
global.__objectDepths[100] = -1; // obj_localNpc
global.__objectDepths[101] = 0; // obj_grid
global.__objectDepths[102] = -1; // obj_npc_robot_shield
global.__objectDepths[103] = 0; // obj_gui
global.__objectDepths[104] = 0; // obj_chatMemory
global.__objectDepths[105] = 0; // obj_message
global.__objectDepths[106] = -1001; // obj_chat
global.__objectDepths[107] = 0; // obj_position
global.__objectDepths[108] = 0; // obj_chatTyping
global.__objectDepths[109] = 0; // obj_dashBar
global.__objectDepths[110] = -1000; // obj_healthBar
global.__objectDepths[111] = 0; // obj_compte
global.__objectDepths[112] = 0; // obj_waitingMap
global.__objectDepths[113] = -200000; // obj_roomTransition
global.__objectDepths[114] = 0; // obj_client
global.__objectDepths[115] = 0; // obj_dot
global.__objectDepths[116] = 0; // obj_decor_base
global.__objectDepths[117] = 0; // obj_spawn2
global.__objectDepths[118] = 0; // obj_cleaningRoom
global.__objectDepths[119] = 0; // obj_roomsMemory
global.__objectDepths[120] = 0; // obj_spawn1
global.__objectDepths[121] = 0; // obj_spawn3
global.__objectDepths[122] = 0; // obj_previousRoom
global.__objectDepths[123] = 0; // obj_spawn4
global.__objectDepths[124] = 0; // obj_nextRoom
global.__objectDepths[125] = 0; // obj_flouMouvement
global.__objectDepths[126] = -1; // obj_particule1
global.__objectDepths[127] = 0; // obj_bullet_batte_g
global.__objectDepths[128] = 0; // obj_bullet_batte_d


global.__objectNames[0] = "obj_mur_epais";
global.__objectNames[1] = "obj_mur_epais_angle";
global.__objectNames[2] = "obj_mur_epais_bout";
global.__objectNames[3] = "obj_mur_epais_croix";
global.__objectNames[4] = "obj_mur_epais_plot";
global.__objectNames[5] = "obj_mur_fin";
global.__objectNames[6] = "obj_mur_epais_T";
global.__objectNames[7] = "obj_mur_fin_bout";
global.__objectNames[8] = "obj_mur_fin_plot";
global.__objectNames[9] = "obj_chaise_marron";
global.__objectNames[10] = "obj_mur_fin_T";
global.__objectNames[11] = "obj_chaise_bleu";
global.__objectNames[12] = "obj_crate";
global.__objectNames[13] = "obj_gene";
global.__objectNames[14] = "obj_mur_fin_angle";
global.__objectNames[15] = "obj_rack_serveur";
global.__objectNames[16] = "obj_mur_fin_croix";
global.__objectNames[17] = "obj_distributeur";
global.__objectNames[18] = "obj_table";
global.__objectNames[19] = "obj_table_attente";
global.__objectNames[20] = "obj_ecran";
global.__objectNames[21] = "obj_car_cop";
global.__objectNames[22] = "obj_car_viper";
global.__objectNames[23] = "obj_canape";
global.__objectNames[24] = "obj_car_audi";
global.__objectNames[25] = "obj_car";
global.__objectNames[26] = "obj_car_van";
global.__objectNames[27] = "obj_car_minitruck";
global.__objectNames[28] = "obj_car_truck";
global.__objectNames[29] = "obj_car_amb";
global.__objectNames[30] = "obj_car_taxi";
global.__objectNames[31] = "obj_automaticDoor";
global.__objectNames[32] = "obj_wall";
global.__objectNames[33] = "obj_gabari_hero";
global.__objectNames[34] = "obj_door_parent";
global.__objectNames[35] = "obj_door";
global.__objectNames[36] = "obj_button";
global.__objectNames[37] = "obj_engine";
global.__objectNames[38] = "obj_light_torch";
global.__objectNames[39] = "obj_light";
global.__objectNames[40] = "obj_shadow_mask";
global.__objectNames[41] = "obj_light_menu";
global.__objectNames[42] = "obj_light2";
global.__objectNames[43] = "obj_bullet_base";
global.__objectNames[44] = "obj_bullet2";
global.__objectNames[45] = "obj_energyWall";
global.__objectNames[46] = "obj_bullet1";
global.__objectNames[47] = "obj_bulletNPC";
global.__objectNames[48] = "obj_bullet2_explosion";
global.__objectNames[49] = "obj_bulletTurret";
global.__objectNames[50] = "obj_bullet_EngiBot";
global.__objectNames[51] = "obj_control";
global.__objectNames[52] = "obj_bullet_BatBot";
global.__objectNames[53] = "obj_bullet4";
global.__objectNames[54] = "obj_bullet_batte_parent";
global.__objectNames[55] = "obj_turret_hero3";
global.__objectNames[56] = "obj_bullet_robot_shield";
global.__objectNames[57] = "obj_bullet_PetBot";
global.__objectNames[58] = "obj_title";
global.__objectNames[59] = "obj_mapselection";
global.__objectNames[60] = "obj_btn_solo";
global.__objectNames[61] = "obj_btn_parent";
global.__objectNames[62] = "obj_btn_option";
global.__objectNames[63] = "obj_btn_multi";
global.__objectNames[64] = "obj_btn_exit";
global.__objectNames[65] = "obj_btn_host";
global.__objectNames[66] = "obj_btn_resume";
global.__objectNames[67] = "obj_btn_join";
global.__objectNames[68] = "obj_btn_start";
global.__objectNames[69] = "obj_btn_ok";
global.__objectNames[70] = "obj_btn_back";
global.__objectNames[71] = "obj_btn_fastJoin";
global.__objectNames[72] = "obj_textbox_parent";
global.__objectNames[73] = "obj_textbox_pseudo";
global.__objectNames[74] = "obj_btn_map1";
global.__objectNames[75] = "obj_btn_map2";
global.__objectNames[76] = "obj_btn_map_parent";
global.__objectNames[77] = "obj_btn_map3";
global.__objectNames[78] = "obj_textbox_port";
global.__objectNames[79] = "obj_btn_previous";
global.__objectNames[80] = "obj_btn_scrollHero";
global.__objectNames[81] = "obj_btn_next";
global.__objectNames[82] = "obj_textbox_ip";
global.__objectNames[83] = "obj_team";
global.__objectNames[84] = "obj_player";
global.__objectNames[85] = "obj_NanoBot";
global.__objectNames[86] = "obj_server";
global.__objectNames[87] = "obj_chose_hero_information";
global.__objectNames[88] = "obj_EngiBot";
global.__objectNames[89] = "obj_BadaBot";
global.__objectNames[90] = "obj_localPlayer";
global.__objectNames[91] = "obj_BatBot";
global.__objectNames[92] = "obj_RamBot";
global.__objectNames[93] = "obj_PetBot_jambes";
global.__objectNames[94] = "obj_localPlayer_tracker";
global.__objectNames[95] = "obj_BatBot_jambes";
global.__objectNames[96] = "obj_PetDrone";
global.__objectNames[97] = "obj_npc_human_pistol";
global.__objectNames[98] = "obj_PetBot";
global.__objectNames[99] = "obj_npc_chief_soldier";
global.__objectNames[100] = "obj_localNpc";
global.__objectNames[101] = "obj_grid";
global.__objectNames[102] = "obj_npc_robot_shield";
global.__objectNames[103] = "obj_gui";
global.__objectNames[104] = "obj_chatMemory";
global.__objectNames[105] = "obj_message";
global.__objectNames[106] = "obj_chat";
global.__objectNames[107] = "obj_position";
global.__objectNames[108] = "obj_chatTyping";
global.__objectNames[109] = "obj_dashBar";
global.__objectNames[110] = "obj_healthBar";
global.__objectNames[111] = "obj_compte";
global.__objectNames[112] = "obj_waitingMap";
global.__objectNames[113] = "obj_roomTransition";
global.__objectNames[114] = "obj_client";
global.__objectNames[115] = "obj_dot";
global.__objectNames[116] = "obj_decor_base";
global.__objectNames[117] = "obj_spawn2";
global.__objectNames[118] = "obj_cleaningRoom";
global.__objectNames[119] = "obj_roomsMemory";
global.__objectNames[120] = "obj_spawn1";
global.__objectNames[121] = "obj_spawn3";
global.__objectNames[122] = "obj_previousRoom";
global.__objectNames[123] = "obj_spawn4";
global.__objectNames[124] = "obj_nextRoom";
global.__objectNames[125] = "obj_flouMouvement";
global.__objectNames[126] = "obj_particule1";
global.__objectNames[127] = "obj_bullet_batte_g";
global.__objectNames[128] = "obj_bullet_batte_d";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for