local function SetCheckpoints()
	
	for k, cl in ipairs(ents.FindByClass("trigger_changelevel")) do
		cl:Remove()
	end
	
	for k, clcoop in ipairs(ents.FindByClass("trigger_changelevel_coop")) do
		clcoop:Remove()
	end
	
	if game.GetMap() == "level02_synb2_tricks_and_traps" then

		TRIGGER_CHECKPOINT = {
			Vector(-2362, 2129, -176), 		Vector(-2550, 2007, -337),
			Vector(-191, 384, 33), 		Vector(-377, 529, 196),
			Vector(984, -650, -687), 		Vector(1106, -481, -538)
		}
			
		CHECKPOINT_POS = {
			Vector(-2450, 2134, -296),		Vector(-279, 486, 47),
			Vector(1109, -589, -681)
		}
		
	elseif game.GetMap() == "level03_synb2_underground" then
		
		TRIGGER_CHECKPOINT = {
			Vector(904, 872, -1565), 		Vector(986, 940, -1433),
			Vector(4865, 5783, -1572), 		Vector(5023, 5734, -1382),
			Vector(-2475, 1598, -142), 		Vector(-2493, 1405, 15),
			Vector(-4516, 5054, -826), 		Vector(-4872, 5107, -555),
			Vector(-4096, 1143, -17), 		Vector(-3923, 1248, -126)
		}
	
		CHECKPOINT_POS = {
			Vector(945, 910, -1555),		Vector(4934, 5940, -1632),
			Vector(-2522, 1505, -117),		Vector(-4691, 4867, -812),
			Vector(-4022, 1189, -114)
		}
	elseif game.GetMap() == "level04_synb2_across_the_darkness" then
	
		TRIGGER_CHECKPOINT = {
			Vector(-1773, -2421, 66), 		Vector(-1618, -2491, 190),
			Vector(-472, -1721, 176), 		Vector(-524, -1793, 97),
			Vector(3674, -8880, -1887), 	Vector(4262, -9423, -2021)
		}
	
		CHECKPOINT_POS = {
			Vector(-1699, -2495, 80),		Vector(-418, -1733, 113),
			Vector(3969, -8825, -2393)
		}
	elseif game.GetMap() == "level05_synb2_diehard" then
	
		TRIGGER_CHECKPOINT = {
			Vector(-743, -811, 242), 		Vector(-814, -689, 383),
			Vector(-597, -2969, 358), 		Vector(-517, -2930, 447),
			Vector(-2728, 3022, 3852), 		Vector(-2909, 2725, 4039)
		}
	
		CHECKPOINT_POS = {
			Vector(-830, -750, 260), 		Vector(-553, -2950, 356),
			Vector(-2902, 2854, 3888)
		}
	elseif game.GetMap() == "level06_synb2_base" then
	
		TRIGGER_CHECKPOINT = {
			Vector(1533, 115, -1367), 		Vector(1385, 318, -1280),
			Vector(1353, 443, -1972), 		Vector(1497, 371, -2092)
		}
	
		CHECKPOINT_POS = {
			Vector(1483, 207, -1363),		Vector(1440, 487, -2078)
		}
		
	elseif game.GetMap() == "level08_synb2_a_place_to_die" then
	
		TRIGGER_CHECKPOINT = {
			Vector(-2239, -1341, 73), 		Vector(-2352, -961, 384),
			Vector(-6304, -3289, -3124), 		Vector(-6179, -3210, -3254),
			Vector(-3906, -3890, -3360), 		Vector(-4168, -4127, -3554)
		}
	
		CHECKPOINT_POS = {
			Vector(-2272, -1174, 82),		Vector(-6245, -3363, -3244),
			Vector(-4284, -3987, -4069)		
		}
	elseif game.GetMap() == "level_1a" then
	
		TRIGGER_CHANGELEVEL_COOP = {
			Vector(1932, 1184, 376),	Vector(1873, 1091, 203)
		}
	
		TRIGGER_CHECKPOINT = {
			Vector(-253, -2045, 3), 		Vector(-97, -1941, 107),
			Vector(0, -1006, 256), 			Vector(-63, -913, 137),
			Vector(535, 1113, -62), 		Vector(694, 1527, 114),
			Vector(1161, 1528, 258), 		Vector(1221, 1426, 375)
		}
	
		CHECKPOINT_POS = {
			Vector(-187, -1988, 24),		Vector(-21, -956, 146),
			Vector(681, 1348, -48),		Vector(1196, 1485, 277)
		}
		
		CHECKPOINT_FUNC_2 = function()
			game.SetGlobalState("antlion_allied", 1)
		end
		
		CHECKPOINT_FUNC_4 = function()
			ents.FindByName("FieldLaser")[1]:Remove()
			timer.Simple(8, function()
				ents.FindByName("Brenda")[1]:SetPos(Vector(1401, 1023, -42))
			end)
		end
		
	elseif game.GetMap() == "nh1remake1_fixed" then
	
		TRIGGER_CHECKPOINT = {
			Vector(465, 74, -237), 		Vector(369, -38, -361),
			Vector(702, -1186, -108), 		Vector(593, -1255, -233),
			Vector(1392, -1024, -415), 		Vector(1558, -1118, -670),
			Vector(398, -595, 136), 		Vector(329, -702, 9)
		}
	
		CHECKPOINT_POS = {
			Vector(451, 9, -352),		Vector(645, -1235, -221),
			Vector(1500, -1073, -597),		Vector(481, -658, 25)
		}
	elseif game.GetMap() == "nh2c1_v2" then
		
		TRIGGER_CHANGELEVEL_COOP = {
			Vector(-1420, -286, 4),		Vector(-1521, -218, 89)
		}
	
		TRIGGER_CHECKPOINT = {
			Vector(-830, -376, 5), 		Vector(-711, -274, 92),
			Vector(158, 684, 1), 		Vector(-38, 772, 126),
			Vector(-1409, 382, 1), 		Vector(-1492, 230, 124)
		}
	
		CHECKPOINT_POS = {
			Vector(72, 760, 6),		Vector(72, 760, 6),
			Vector(-1462, 312, 10)
		}
	elseif game.GetMap() == "nh2c2_v2" then
		
		TRIGGER_CHANGELEVEL_COOP = {
			Vector(-354, -3618, 3841),		Vector(-474, -3741, 3724)
		}
	
		TRIGGER_CHECKPOINT = {
			Vector(-1530, -10, 2683), 		Vector(-1423, -131, 2562),
			Vector(-2472, -1857, 2688), 		Vector(-2374, -2045, 2563),
			Vector(-2369, -2813, 2560), 		Vector(-2437, -2690, 2687)
		}
	
		CHECKPOINT_POS = {
			Vector(-1605, -52, 2572),		Vector(-2453, -1946, 2581),
			Vector(-2431, -2751, 2576)
		}

		CHANGELEVEL_COOP_FUNC = function()
			for _, v in ipairs(player.GetAll()) do
				v:SetPos(Vector(-410, -3688, 3919))
			end
		end
		
	end

	if TRIGGER_CHANGELEVEL_COOP then
		Changelevel = ents.Create("trigger_changelevel_coop")
		Changelevel.Min = Vector(TRIGGER_CHANGELEVEL_COOP[1])
		Changelevel.Max = Vector(TRIGGER_CHANGELEVEL_COOP[2])
		Changelevel.Pos = Vector(TRIGGER_CHANGELEVEL_COOP[2]) - ( ( Vector(TRIGGER_CHANGELEVEL_COOP[2]) - Vector(TRIGGER_CHANGELEVEL_COOP	[1])) / 2 )
		Changelevel:SetPos(Changelevel.Pos)
		Changelevel:Spawn()
			
		Changelevel.lambdaModel = ents.Create("prop_dynamic")
		Changelevel.lambdaModel:SetModel("models/hl2cr_lambda.mdl")
		Changelevel.lambdaModel:SetPos(Changelevel.Pos)
		Changelevel.lambdaModel:Spawn()
		Changelevel.lambdaModel:SetName("lambdaCheckpoint")
		Changelevel.lambdaModel:ResetSequence("idle")
		Changelevel.lambdaModel:SetMaterial("phoenix_storms/wire/pcb_green")
		
		Changelevel.Func = CHANGELEVEL_COOP_FUNC
	end

	if TRIGGER_CHECKPOINT then
	
		if TRIGGER_CHECKPOINT[1] and TRIGGER_CHECKPOINT[2] then
			local Checkpoint = ents.Create("trigger_checkpoint")
			Checkpoint.Min = Vector(TRIGGER_CHECKPOINT[1])
			Checkpoint.Max = Vector(TRIGGER_CHECKPOINT[2])
			Checkpoint.Pos = Vector(TRIGGER_CHECKPOINT[2]) - ( ( Vector(TRIGGER_CHECKPOINT[2]) - Vector(TRIGGER_CHECKPOINT[1])) / 2 )
			Checkpoint.Point = Vector(CHECKPOINT_POS[1])
			Checkpoint:SetPos(Checkpoint.Pos)
			Checkpoint:SetPointIndex(1)
			Checkpoint:Spawn()
			
			Checkpoint.lambdaModel = ents.Create("prop_dynamic")
			Checkpoint.lambdaModel:SetModel("models/hl2cr_lambda.mdl")
			Checkpoint.lambdaModel:SetPos(Checkpoint.Pos)
			Checkpoint.lambdaModel:Spawn()
			Checkpoint.lambdaModel:ResetSequence("idle")
			Checkpoint.lambdaModel:SetMaterial(Checkpoint.Mat)
			
			Checkpoint.Func = CHECKPOINT_FUNC_1
		end
		
		if TRIGGER_CHECKPOINT[3] and TRIGGER_CHECKPOINT[4] then
			local Checkpoint = ents.Create("trigger_checkpoint")
			Checkpoint.Min = Vector(TRIGGER_CHECKPOINT[3])
			Checkpoint.Max = Vector(TRIGGER_CHECKPOINT[4])
			Checkpoint.Pos = Vector(TRIGGER_CHECKPOINT[4]) - ( ( Vector(TRIGGER_CHECKPOINT[4]) - Vector(TRIGGER_CHECKPOINT[3])) / 2 )
			Checkpoint.Point = Vector(CHECKPOINT_POS[2])
			Checkpoint:SetPos(Checkpoint.Pos)
			Checkpoint:SetPointIndex(2)
			Checkpoint:Spawn()
			
			Checkpoint.lambdaModel = ents.Create("prop_dynamic")
			Checkpoint.lambdaModel:SetModel("models/hl2cr_lambda.mdl")
			Checkpoint.lambdaModel:SetPos(Checkpoint.Pos)
			Checkpoint.lambdaModel:Spawn()
			Checkpoint.lambdaModel:ResetSequence("idle")
			Checkpoint.lambdaModel:SetMaterial(Checkpoint.Mat)
			
			Checkpoint.Func = CHECKPOINT_FUNC_2
		end
		
		if TRIGGER_CHECKPOINT[5] and TRIGGER_CHECKPOINT[6] then
			local Checkpoint = ents.Create("trigger_checkpoint")
			Checkpoint.Min = Vector(TRIGGER_CHECKPOINT[5])
			Checkpoint.Max = Vector(TRIGGER_CHECKPOINT[6])
			Checkpoint.Pos = Vector(TRIGGER_CHECKPOINT[6]) - ( ( Vector(TRIGGER_CHECKPOINT[6]) - Vector(TRIGGER_CHECKPOINT[5])) / 2 )
			Checkpoint.Point = Vector(CHECKPOINT_POS[3])
			Checkpoint:SetPos(Checkpoint.Pos)
			Checkpoint:SetPointIndex(3)
			Checkpoint:Spawn()

			Checkpoint.lambdaModel = ents.Create("prop_dynamic")
			Checkpoint.lambdaModel:SetModel("models/hl2cr_lambda.mdl")
			Checkpoint.lambdaModel:SetPos(Checkpoint.Pos)
			Checkpoint.lambdaModel:Spawn()
			Checkpoint.lambdaModel:ResetSequence("idle")
			Checkpoint.lambdaModel:SetMaterial(Checkpoint.Mat)
			
			Checkpoint.Func = CHECKPOINT_FUNC_3
		end
		
		if TRIGGER_CHECKPOINT[7] and TRIGGER_CHECKPOINT[8] then
			local Checkpoint = ents.Create("trigger_checkpoint")
			Checkpoint.Min = Vector(TRIGGER_CHECKPOINT[7])
			Checkpoint.Max = Vector(TRIGGER_CHECKPOINT[8])
			Checkpoint.Pos = Vector(TRIGGER_CHECKPOINT[8]) - ( ( Vector(TRIGGER_CHECKPOINT[8]) - Vector(TRIGGER_CHECKPOINT[7])) / 2 )
			Checkpoint.Point = Vector(CHECKPOINT_POS[4])
			Checkpoint:SetPos(Checkpoint.Pos)
			Checkpoint:SetPointIndex(4)
			Checkpoint:Spawn()

			Checkpoint.lambdaModel = ents.Create("prop_dynamic")
			Checkpoint.lambdaModel:SetModel("models/hl2cr_lambda.mdl")
			Checkpoint.lambdaModel:SetPos(Checkpoint.Pos)
			Checkpoint.lambdaModel:Spawn()
			Checkpoint.lambdaModel:ResetSequence("idle")
			Checkpoint.lambdaModel:SetMaterial(Checkpoint.Mat)
			
			Checkpoint.Func = CHECKPOINT_FUNC_4
		end
		
		if TRIGGER_CHECKPOINT[9] and TRIGGER_CHECKPOINT[10] then
			local Checkpoint = ents.Create("trigger_checkpoint")
			Checkpoint.Min = Vector(TRIGGER_CHECKPOINT[9])
			Checkpoint.Max = Vector(TRIGGER_CHECKPOINT[10])
			Checkpoint.Pos = Vector(TRIGGER_CHECKPOINT[10]) - ( ( Vector(TRIGGER_CHECKPOINT[10]) - Vector(TRIGGER_CHECKPOINT[9])) / 2 )
			Checkpoint.Point = Vector(CHECKPOINT_POS[5])
			Checkpoint:SetPos(Checkpoint.Pos)
			Checkpoint:SetPointIndex(5)
			Checkpoint:Spawn()

			Checkpoint.lambdaModel = ents.Create("prop_dynamic")
			Checkpoint.lambdaModel:SetModel("models/hl2cr_lambda.mdl")
			Checkpoint.lambdaModel:SetPos(Checkpoint.Pos)
			Checkpoint.lambdaModel:Spawn()
			Checkpoint.lambdaModel:ResetSequence("idle")
			Checkpoint.lambdaModel:SetMaterial(Checkpoint.Mat)
			
			Checkpoint.Func = CHECKPOINT_FUNC_4
		end
	end
end

local COOP_WEAPONS = {
	["level01_synb2_entryway_of_doom"] = {
		[1] = "weapon_crowbar",
		[2] = "weapon_physcannon",
	},
	
	["level02_synb2_tricks_and_traps"] = {
		[1] = "weapon_crowbar",
		[2] = "weapon_physcannon",
	},
	
	["level03_synb2_underground"] = {
		[1] = "weapon_crowbar",
		[2] = "weapon_physcannon",
	},
	
	["level04_synb2_across_the_darkness"] = {
		[1] = "weapon_crowbar",
		[2] = "weapon_physcannon",
	},
	
	["level05_synb2_diehard"] = {
		[1] = "weapon_crowbar",
		[2] = "weapon_physcannon",
	},
	
	["level06_synb2_base"] = {
		[1] = "weapon_crowbar",
		[2] = "weapon_physcannon",
	},
	
	["level07_synb2_scary_dark_house"] = {
		[1] = "weapon_crowbar",
		[2] = "weapon_physcannon",
	},
	
	["level08_synb2_a_place_to_die"] = {
		[1] = "weapon_crowbar",
		[2] = "weapon_physcannon",
	},
	
	["nh2c2_v2"] = {
		[1] = "weapon_nh_hatchet",
		[2] = "weapon_nh_colt",
	},
	
}

local REMOVE_WEAPONS = {
	["weapon_medkit"] = true
}

local MAP_LOGIC = {
	["level01_synb2_entryway_of_doom"] = function(mapLua)
		local npc_vortigaunt = {
			["npc_vortigaunt"] = {xpMin = 25, xpMax = 50},
		}
		local npc_antlion = {
			["npc_antlion"] = {xpMin = 12, xpMax = 27},
		}
		
		table.Merge(RANDOM_XP_BASED_NPC, npc_vortigaunt)
		table.Merge(RANDOM_XP_BASED_NPC, npc_antlion)
		
		mapLua:SetKeyValue("Code", "hook.Run('EndCoopMap')")
		ents.FindByName("bouton10")[1]:Fire("AddOutput", "OnPressed triggerhook:RunCode")
	end,
	
	["level02_synb2_tricks_and_traps"] = function(mapLua)
		local npc_vortigaunt = {
			["npc_vortigaunt"] = {xpMin = 25, xpMax = 50},
		}
		local npc_antlion = {
			["npc_antlion"] = {xpMin = 12, xpMax = 27},
		}
		
		table.Merge(RANDOM_XP_BASED_NPC, npc_vortigaunt)
		table.Merge(RANDOM_XP_BASED_NPC, npc_antlion)
		
		mapLua:SetKeyValue("Code", "hook.Run('EndCoopMap')")
		ents.FindByName("m_g1")[1]:Fire("AddOutput", "OnAllSpawnedDead triggerhook:RunCode")
	end,
	
	["level03_synb2_underground"] = function(mapLua)
		local npc_vortigaunt = {
			["npc_vortigaunt"] = {xpMin = 25, xpMax = 50},
		}
		local npc_antlion = {
			["npc_antlion"] = {xpMin = 12, xpMax = 27},
		}
		
		table.Merge(RANDOM_XP_BASED_NPC, npc_vortigaunt)
		table.Merge(RANDOM_XP_BASED_NPC, npc_antlion)
		
		mapLua:SetKeyValue("Code", "hook.Run('EndCoopMap')")
		ents.FindByName("craps1")[1]:Fire("AddOutput", "OnDeath triggerhook:RunCode")
		
	end,
	
	["level04_synb2_across_the_darkness"] = function(mapLua)
		local npc_vortigaunt = {
			["npc_vortigaunt"] = {xpMin = 25, xpMax = 50},
		}
		local npc_antlion = {
			["npc_antlion"] = {xpMin = 12, xpMax = 27},
		}
		
		table.Merge(RANDOM_XP_BASED_NPC, npc_vortigaunt)
		table.Merge(RANDOM_XP_BASED_NPC, npc_antlion)
		
		mapLua:SetKeyValue("Code", "hook.Run('EndCoopMap')")
		ents.FindByClass("trigger_once")[18]:Fire("AddOutput", "OnStartTouch triggerhook:RunCode")
	end,
	
	["level05_synb2_diehard"] = function(mapLua)
		for _, newSpawn in ipairs(ents.FindByClass("info_player_deathmatch")) do
			newSpawn:SetPos(Vector(758, 93, 76))
		end
		
		ents.FindByName("trig_tele1")[1]:Remove()
		
		table.RemoveByValue(FRIENDLY_NPCS, "npc_dog")
		
		mapLua:SetKeyValue("Code", "hook.Run('EndCoopMap')")
		ents.FindByName("m_ag1")[1]:Fire("AddOutput", "OnAllSpawnedDead triggerhook:RunCode")
	
	end,
	
	["level06_synb2_base"] = function(mapLua)
		
		local booster = ents.Create("prop_dynamic")
		booster:SetModel("models/props_borealis/bluebarrel001.mdl")
		booster:SetPos(Vector(59, 99, -205))
		booster:PhysicsInit(SOLID_VPHYSICS)
		booster:Spawn()
		ents.FindByName("m_big1")[1]:Fire("AddOutput", "OnAllSpawnedDead sas15:Unlock()")
		
		mapLua:SetKeyValue("Code", "hook.Run('EndCoopMap')")
		ents.FindByName("countoto")[1]:Fire("AddOutput", "OnHitMax triggerhook:RunCode")
	
	end,
	
	["level07_synb2_scary_dark_house"] = function(mapLua)
		
		local npc_vortigaunt = {
			["npc_vortigaunt"] = {xpMin = 25, xpMax = 50},
		}
		
		table.Merge(RANDOM_XP_BASED_NPC, npc_vortigaunt)
		mapLua:SetKeyValue("Code", "hook.Run('EndCoopMap')")
		ents.FindByName("count")[1]:Fire("AddOutput", "OnHitMax triggerhook:RunCode")
	
	end,
	
	["level08_synb2_a_place_to_die"] = function(mapLua)
		
		local npc_vortigaunt = {
			["npc_vortigaunt"] = {xpMin = 25, xpMax = 50},
		}
		local npc_antlion = {
			["npc_antlion"] = {xpMin = 12, xpMax = 27},
		}
		
		table.Merge(RANDOM_XP_BASED_NPC, npc_vortigaunt)
		table.Merge(RANDOM_XP_BASED_NPC, npc_antlion)
		
		mapLua:SetKeyValue("Code", "hook.Run('EndCoopMap')")
		
		ents.FindByName("ag1")[1]:Fire("AddOutput", "OnDeath triggerhook:RunCode")
	end,
	
	["nh1remake1_fixed"] = function(mapLua)	
		local axe = ents.Create("weapon_nh_hatchet")
		axe:SetPos(ents.FindByClass("weapon_crowbar")[1]:GetPos())
		axe:SetAngles(ents.FindByClass("weapon_crowbar")[1]:GetAngles())
		axe:Spawn()
		
		ents.FindByClass("weapon_crowbar")[1]:Remove()
		
		local pistol = ents.Create("weapon_nh_colt")
		pistol:SetPos(ents.FindByClass("weapon_pistol")[1]:GetPos())
		pistol:SetAngles(ents.FindByClass("weapon_pistol")[1]:GetAngles())
		pistol:Spawn()
		
		ents.FindByClass("weapon_pistol")[1]:Remove()
		
		local magnum = ents.Create("weapon_nh_revolver")
		magnum:SetPos(ents.FindByClass("weapon_357")[1]:GetPos())
		magnum:SetAngles(ents.FindByClass("weapon_357")[1]:GetAngles())
		magnum:Spawn()
		
		ents.FindByClass("weapon_357")[1]:Remove()
		
		local shotgun = ents.Create("weapon_nh_shotgun")
		shotgun:SetPos(ents.FindByClass("weapon_shotgun")[1]:GetPos())
		shotgun:SetAngles(ents.FindByClass("weapon_shotgun")[1]:GetAngles())
		shotgun:Spawn()
		
		ents.FindByClass("weapon_shotgun")[1]:Remove()
		
		mapLua:SetKeyValue("Code", "hook.Run('EndCoopMap')")
		
		ents.FindByName("teleport2")[1]:Fire("AddOutput", "OnStartTouch triggerhook:RunCode")
	end,
	
	["nh2c1_v2"] = function(mapLua)	
		
		local pistol = ents.Create("weapon_nh_colt")
		pistol:SetPos(Vector(-1473, 380, 62))
		pistol:SetAngles(Angle(0, -180, 0))
		pistol:Spawn()
		
		pistol:Fire("AddOutput", "OnPlayerPickup secroom_monitor1:SetCamera('snow_camera')")
		pistol:Fire("AddOutput", "OnPlayerPickup secroom_monitor2:SetCamera('snow_camera')")
		pistol:Fire("AddOutput", "OnPlayerPickup secroom_monitor3:SetCamera('snow_camera')")
		pistol:Fire("AddOutput", "OnPlayerPickup secroom_monitor4:SetCamera('snow_camera')")
		pistol:Fire("AddOutput", "OnPlayerPickup monitor_1:SetCamera('snow_camera')")
		pistol:Fire("AddOutput", "OnPlayerPickup lab_mic:SetSpeakerName('TV_speaker')")
		pistol:Fire("AddOutput", "OnPlayerPickup sec_room_door:Close")
		pistol:Fire("AddOutput", "OnPlayerPickup sec_room_door:Lock")
		
		pistol:Fire("AddOutput", "OnPlayerPickup whitenoise_sound1:PlaySound:0:2")
		pistol:Fire("AddOutput", "OnPlayerPickup tv_sound1:PlaySound:0:2")
		
		pistol:Fire("AddOutput", "OnPlayerPickup secroom_monitor2:Enable:0:3")
		pistol:Fire("AddOutput", "OnPlayerPickup tv_sound1:PlaySound:0:3")
		
		pistol:Fire("AddOutput", "OnPlayerPickup secroom_monitor3:Enable:0:4")
		pistol:Fire("AddOutput", "OnPlayerPickup tv_sound1:PlaySound:0:4")
		
		pistol:Fire("AddOutput", "OnPlayerPickup secroom_monitor4:Enable:0:5")
		pistol:Fire("AddOutput", "OnPlayerPickup tv_sound1:PlaySound:0:5")
		
		pistol:Fire("AddOutput", "OnPlayerPickup secroom_monitor1:SetCamera('lab_camera'):0:7")
		pistol:Fire("AddOutput", "OnPlayerPickup secroom_monitor2:SetCamera('lab_camera'):0:7")
		pistol:Fire("AddOutput", "OnPlayerPickup secroom_monitor3:SetCamera('lab_camera'):0:7")
		pistol:Fire("AddOutput", "OnPlayerPickup secroom_monitor4:SetCamera('lab_camera'):0:7")
		pistol:Fire("AddOutput", "OnPlayerPickup monitor_1:SetCamera('lab_camera'):0:7")
		
		pistol:Fire("AddOutput", "OnPlayerPickup doctor_scriptseq:BeginSequence:0:7")
		
		ents.FindByName("woman_eleroom_seq")[1]:Fire("AddOutput", "OnBeginSequence sec_room_wall:Kill:0:-1")
	end,
	
	["nh2c2_v2"] = function(mapLua)	
		local npc_stalker = {
			["npc_stalker"] = true
		}
		table.Merge(FRIENDLY_NPCS, npc_stalker)
		
		ents.FindByClass("info_player_start")[1]:SetParent(ents.FindByName("elevator_parts")[1])
		
		ents.FindByName("speed")[1]:Remove()
		
		ents.FindByName("nurse1")[1]:Fire("AddOutput", "OnWake triggerhook:RunPassedCode:hook.Run('ReduceSpeed'):0:-1")
		
		ents.FindByName("dreamhall_doors")[1]:Fire("AddOutput", "OnClose triggerhook:RunPassedCode:hook.Run('FixSpeed'):0:-1")
		ents.FindByName("doorzombie_triggerlook")[1]:Fire("AddOutput", "OnTrigger firstdoor_door:Open")
		ents.FindByName("speed2")[1]:Remove()
		
		for _, zoom in ipairs(ents.FindByClass("env_zoom")) do
			--zoom:Remove()
		end
		
	end,
}

local ITEMS = {
	["item_ammo_pistol"] = "item_ammo_pistol",
	["item_ammo_pistol_large"] = "item_ammo_pistol_large",
	
	["item_ammo_357"] = "item_ammo_357",
	["item_ammo_357_large"] = "item_ammo_357_large",
	
	["item_ammo_smg1"] = "item_ammo_smg1",
	["item_ammo_smg1_large"] = "item_ammo_smg1_large",
	
	["item_ammo_357"] = "item_ammo_357",
	["item_ammo_357_large"] = "item_ammo_357_large",
	
	["item_ammo_smg1"] = "item_ammo_smg1",
	["item_ammo_smg1_large"] = "item_ammo_smg1_large",
	
	["item_ammo_smg1_grenade"] = "item_ammo_smg1_grenade",
	["item_ammo_ar2_altfire"] = "item_ammo_ar2_altfire",
	
	["item_ammo_ar2"] = "item_ammo_ar2",
	["item_ammo_ar2_large"] = "item_ammo_ar2_large",
	
	["item_box_buckshot"] = "item_box_buckshot",
	["item_box_buckshot_large"] = "item_box_buckshot_large",
	
	["item_ammo_crossbow"] = "item_ammo_crossbow",
	
	["item_rpg_round"] = "item_rpg_round",
	
	["weapon_frag"] = "weapon_frag",

	["item_battery"] = "item_battery",
	["item_healthvial"] = "item_healthvial",
	["item_healthkit"] = "item_healthkit"
}

local WEAPONS = {
	["weapon_crowbar"] = "weapon_crowbar",
	["weapon_pistol"] = "weapon_pistol",
	["weapon_357"] = "weapon_357",
	["weapon_smg1"] = "weapon_smg1",
	["weapon_ar2"] = "weapon_ar2",
	["weapon_shotgun"] = "weapon_shotgun",
	["weapon_crossbow"] = "weapon_crossbow",
	["weapon_rpg"] = "weapon_rpg",
	["weapon_deagle"] = "weapon_deagle",
	["weapon_mg1"] = "weapon_mg1",
	["weapon_mp5k"] = "weapon_mp5k",
	["weapon_sl8"] = "weapon_sl8"

}

local function SetUpMisc()
	local MapLua = ents.Create("lua_run")
	MapLua:SetName("triggerhook")
	MapLua:Spawn()
	
	for _, cl in ipairs(ents.FindByClass("trigger_changelevel")) do
		cl:Remove()
	end
	
	for _, gameEnd in ipairs(ents.FindByClass("game_end")) do
		gameEnd:Remove()
	end
	for _, weaponStrip in ipairs(ents.FindByClass("trigger_weapon_strip")) do
		weaponStrip:Remove()
	end
	
	timer.Simple(0.5, function()
		for _, resWep in ipairs(ents.FindByClass("weapon_*")) do
			if REMOVE_WEAPONS[resWep:GetClass()] then
				resWep:Remove()
			end	
		end
	end)
	
	if COOP_WEAPONS[game.GetMap()] then
		for i, wep in pairs(COOP_WEAPONS[game.GetMap()]) do 
			table.insert(SPAWNING_WEAPONS, wep)
		end
	end
	
	if MAP_LOGIC[game.GetMap()] then
		MAP_LOGIC[game.GetMap()](MapLua)
	end
	
	hook.Add("PlayerCanPickupItem", "HL2CR_COOP_ItemRespawn", function(ply, item)
	
		if not timer.Exists("respawn_" .. item:EntIndex()) then

			local class = item:GetClass()
			local oldPos = item:GetPos()
			timer.Create("respawn_" .. item:EntIndex(), GetConVar("hl2cr_coop_respawnrate"):GetInt(), 1, function()
			
				if item:IsValid() then return end
				if not ITEMS[class] then return end
				
				local newItem = ents.Create(ITEMS[class])
				newItem:SetPos(oldPos)
				newItem:Spawn()
				newItem:EmitSound("AlyxEMP.Discharge")
			end)
		end
	end)

	hook.Add("PlayerCanPickupWeapon", "HL2CR_COOP_WeaponRespawn", function(ply, weapon)
		
		if not timer.Exists("respawn_" .. weapon:EntIndex()) then
			local class = weapon:GetClass()
			local oldPos = weapon:GetPos()
			timer.Create("respawn_" .. weapon:EntIndex(), GetConVar("hl2cr_coop_respawnrate"):GetInt(), 1, function()
			
				if weapon:IsValid() then return end
				if not WEAPONS[class] then return end
				
				local newItem = ents.Create(WEAPONS[class])
				newItem:SetPos(oldPos)
				newItem:Spawn()
				newItem:EmitSound("AlyxEMP.Discharge")
			end)
		end
	end)
end

hook.Add("ReduceSpeed", "HL2CR_NH2_ReduceSpeed", function()
	for _, v in ipairs(player.GetAll()) do
		v:SetWalkSpeed(125)
		v:SetRunSpeed(125)
	end
end)

hook.Add("FixSpeed", "HL2CR_NH2_FixSpeed", function()
	for _, v in ipairs(player.GetAll()) do
		v:SetWalkSpeed(200)
		v:SetRunSpeed(320)
	end
end)

hook.Add("EndCoopMap", "HL2CR_EndCoop", function()
	for _, v in ipairs(player.GetAll()) do
		v:SetTeam(TEAM_COMPLETED_MAP)
		EnableSpectate(v)
		ShowMapResults(v)
		
		if game.GetMap() == "nh1remake1_fixed" then
			GrantAchievement(v, "Custom", "The_Beginning")
		end
	end
	
	
	
	net.Start("HL2CR_MapCountdown")
	net.Broadcast()
	
	StartMapCountdown()
	
end)

function StartCoop()
	SetCheckpoints()
	SetUpMisc()
end