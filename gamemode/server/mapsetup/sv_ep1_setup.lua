
//TEMPLATE
--[[
[""] = {
    ["checkpoints"] = {

    },
    
    
    ["checkpoint_spot"] = {
        
    },
    
    ["changelevels"] = {
        
    }
    
    ["checkpoint_functions"] = {

    }

    ["pushers"] = {
        
        ["spot"] = {

        }
    }
}
--]]

local pacifistAchGlobal = false;

local ep1_triggers = {
    ["ep1_citadel_00"] = {
        ["checkpoints"] = {
            [1] = {
                [1] = Vector(-8932, 5740, -145), 		
                [2] = Vector(-9025, 5834, -25)
            },

            [2] = {
                [1] = Vector(-7810, 5506, -4),
                [2] = Vector(-8046, 5358, -98)
            },

            [3] = {
                [1] = Vector(4569, 3993, -6185),
                [2] = Vector(4766, 4159, -6349)
            }
        },
        
        ["checkpoint_functions"] = {
            [1] = function()
                for _, v in ipairs(player.GetAll()) do
                    if v:InVehicle() then
                        v:ExitVehicle()
                    end
                end
            end,
        },

        ["checkpoint_spot"] = {
            [1] = Vector(-8974, 5781, -134),
            [2] = Vector(-7908, 5435, -83),
			[3] = Vector(4680, 4230, -6348)
        },
        
        ["changelevels"] = {
            [1] = Vector(5374, 2784, -6197),
            [2] = Vector(5508, 2652, -6345)
        }
    }, 

    ["ep1_citadel_01"] = {
        ["checkpoints"] = {
            [1] = {
                [1] = Vector(-4826, 7538, 2702),
                [2] = Vector(-4578, 7555, 2521)
            },

            [2] = {
                [1] = Vector(-4548, 5124, 2744),
                [2] = Vector(-4650, 5209, 2595)
            },

            [3] = {
                [1] = Vector(-4946, 1672, 2682),
                [2] = Vector(-4763, 1290, 2462)
            }
        },

        ["checkpoint_functions"] = {
            [1] = function()
                ents.FindByClass("npc_alyx")[1]:SetPos(Vector(-4649, 7549, 2529))
            end
        },

        ["changelevels"] = {
            [1] = Vector(-2952, 1391, 2467),
            [2] = Vector(-3110, 1272, 2646)
        },

        ["checkpoint_spot"] = {
            [1] = Vector(-4711, 7650, 2531),
            [2] = Vector(-4865, 5240, 2605),
			[3] = Vector(-4864, 1536, 2471)
        }
    },

    ["ep1_citadel_02"] = {
        ["checkpoints"] = {
            [1] = {
                [1] = Vector(1257, 806, 971),
                [2] = Vector(1334, 784, 834)
            },

            [2] = {
                [1] = Vector(-4548, 5124, 2744),
                [2] = Vector(-4650, 5209, 2595)
            },

            [3] = {
                [1] = Vector(-4946, 1672, 2682),
                [2] = Vector(-4763, 1290, 2462)
            }
        },

        ["changelevels"] = {
            [1] = Vector(1712, 42, 959),
            [2] = Vector(1840, 134, 833)
        },

        ["checkpoint_spot"] = {
            [1] = Vector(1302, 686, 840)
        }
    },

    ["ep1_citadel_02b"] = {
        ["checkpoints"] = {
            [1] = {
                [1] = Vector(3446, 4867, 2509),
                [2] = Vector(3076, 4402, 2663)
            },

            [2] = {
                [1] = Vector(3966, 4813, -6716),
                [2] = Vector(3777, 4465, -6541)
            }
        },

        ["checkpoint_functions"] = {
            [1] = function()
                timer.Simple(0.1, function()
                    local lift = ents.FindByName("citadel_train_lift01_1")[1]
                    for l, spawn in pairs(ents.FindByClass("info_player_start")) do
                        spawn:SetPos(lift:GetPos() + Vector(0, 0, 75))
                        spawn:SetParent(lift)
                    end
                end)
            end,

            [2] = function()
                for l, spawn in pairs(ents.FindByClass("info_player_start")) do
                    spawn:SetParent(nil)
                end
            end
        },

        ["changelevels"] = {
            [1] = Vector(5062, 4838, -6718),
            [2] = Vector(5297, 4461, -6488)
        },

        ["checkpoint_spot"] = {
            [1] = Vector(3279, 4644, 2534),
            [2] = Vector(3995, 4634, -6703)
        }
    },

    ["ep1_citadel_03"] = {
        ["changelevels"] = {
            [1] = Vector(921, 13276, 3935),
            [2] = Vector(1272, 13119, 3712)
        },

        ["checkpoints"] = {
            [1] = {
                [1] = Vector(1884, 11595, 4419),
                [2] = Vector(1999, 11902, 4226)
            },

            [2] = {
                [1] = Vector(1927, 10407, 5794),
                [2] = Vector(1786, 10607, 5630)
            },

            [3] = {
                [1] = Vector(1040, 12607, 5465),
                [2] = Vector(1199, 12432, 5314)
            },

            [4] = {
                [1] = Vector(1056, 13505, 3713),
                [2] = Vector(1213, 13545, 3934)
            }
        },

        ["checkpoint_spot"] = {
            [1] = Vector(1955, 11735, 4242),
            [2] = Vector(1918, 10679, 5637),
            [3] = Vector(1112, 12528, 5323),
            [4] = Vector(1116, 13469, 3723)
        },

		CHECKPOINT_FUNC_3 = function()
			if not pacifistAchGlobal then return end
			
			for _, v in ipairs(player.GetAll()) do	
				v:GrantAchievement("Pacifist")
			end
		end
    },

    ["ep1_citadel_04"] = {
        ["changelevels"] = {
            [1] = Vector(4155, 8194, 3326),
            [2] = Vector(4015, 8150, 3454)
        },

        ["checkpoints"] = {
            [1] = {
                [1] = Vector(3249, 11813, 3766),
                [2] = Vector(3453, 11886, 3601)
            },

            [2] = {
                [1] = Vector(3449, -92, 3450),
                [2] = Vector(3570, -238, 3558)
            },

            [3] = {
                [1] = Vector(3696, 8017, 3579),
                [2] = Vector(3821, 7877, 3695)
            }
        },

        ["checkpoint_functions"] = {
            [1] = function()
                ents.FindByClass("npc_alyx")[1]:SetPos(Vector(3318, 11846, 3605))
            end
        },

        ["checkpoint_spot"] = {
            [1] = Vector(3387, 11756, 3618),
            [2] = Vector(3530, -172, 3449),
            [3] = Vector(3772, 7959, 3602)
        },
    },

    ["ep1_c17_00"] = {
        ["changelevels"] = {
            [1] = Vector(1776, 143, 456),
            [2] = Vector(1902, 64, 332)
        },

        ["checkpoints"] = {
            [1] = {
                [1] = Vector(4154, -2670, 10),
                [2] = Vector(4269, -2935, -121)
            }
        },

        ["checkpoint_spot"] = {
            [1] = Vector(4213, -2862, -111)
        },
    },
    		
    ["ep1_c17_00a"] = {
        ["changelevels"] = {
            [1] = Vector(4517, 3635, 1898),
            [2] = Vector(4667, 3522, 1668)
        },

        ["checkpoints"] = {
            [1] = {
                [1] = Vector(2669, 3871, 536),
                [2] = Vector(2811, 4114, 410)
            },

            [2] = {
                [1] = Vector(4666, 3642, 664),
                [2] = Vector(4522, 3521, 822)
            }
        },

        ["checkpoint_spot"] = {
            [1] = Vector(4326, 3589, 420),
            [2] = Vector(4586, 3580, 712)
        },
    },
    ["ep1_c17_01"] = {
        ["changelevels"] = {
            [1] = Vector(-3615, 207, 122),
            [2] = Vector(-3693, 269, 1)
        },

        ["checkpoints"] = {
            [1] = {
                [1] = Vector(2817, -1427, 109),
                [2] = Vector(2893, -1305, 3)
            },

            [2] = {
                [1] = Vector(1823, 2185, 97),
                [2] = Vector(1918, 2278, 254)
            },

            [3] = {
                [1] = Vector(-577, 760, 1),
                [2] = Vector(-641, 852, 127)
            }
        },

        ["checkpoint_spot"] = {
            [1] = Vector(2633, -1311, 12),
            [2] = Vector(1825, 2231, 115),
			[3] = Vector(-604, 813, 13)
        },
    },
    ["ep1_c17_02"] = {
        ["changelevels"] = {
            [1] = Vector(-2480, 2208, -23),
            [2] = Vector(-2455, 2286, -125)
        },

        ["checkpoints"] = {
            [1] = {
                [1] = Vector(1105, -273, 134),
                [2] = Vector(1012, -162, 17)
            },

            [2] = {
                [1] = Vector(-1096, 1606, 78), 
                [2] = Vector(-903, 1684, -2)
            }
        },

        ["checkpoint_spot"] = {
            [1] = Vector(1057, -212, 32),
            [2] = Vector(-1008, 1758, 4)
        },
    },

    ["ep1_c17_02b"] = {
        ["changelevels"] = {
            [1] = Vector(-718, 3997, 511),
            [2] = Vector(-465, 4243, 320)
        },

        ["checkpoints"] = {
            [1] = {
                [1] = Vector(1089, 1972, -254),
                [2] = Vector(1216, 1940, -135)
            },

            [2] = {
                [1] = Vector(1403, 1817, 129),
                [2] = Vector(1354, 1954, 248)
            }
        },

        ["checkpoint_spot"] = {
            [1] = Vector(1152, 1944, -244),
            [2] = Vector(1214, 1893, 142)
        },
    },

    ["ep1_c17_02a"] = {
        ["changelevels"] = {
            [1] = Vector(-2793, 8209, -2689),
            [2] = Vector(-2608, 8249, -2832)
        },

        ["checkpoints"] = {
            [1] = {
                [1] = Vector(944, 8684, -2431),
                [2] = Vector(1184, 8749, -2562)
            },

            [2] = {
                [1] = Vector(-658, 9533, -2681),
                [2] = Vector(-673, 9591, -2577)
            }
        },

        ["checkpoint_functions"] = {
            [1] = function()
                for _, v in ipairs(player.GetAll()) do
                    v:SetPos(Vector(1115, 8892, -2544))
                end
            end
        },

        ["checkpoint_spot"] = {
            [1] = Vector(1115, 8892, -2544),
            [2] = Vector(-690, 9561, -2688)
        },
    },

    ["ep1_c17_06"] = {
        ["changelevels"] = {
            [1] = Vector(-12764, -5814, -954),
            [2] = Vector(-13259, -5632, -528)
        },

        ["checkpoints"] = {
            [1] = {
                [1] = Vector(10152, 8421, -758),
                [2] = Vector(10223, 8319, -650)
            },

            [2] = {
                [1] = Vector(11839, 8328, -658),
                [2] = Vector(11894, 8428, -758)
            }
        },

        ["changelevel_func"] = {
            [1] = function()
                for _, v in ipairs(player.GetAll()) do
                    v:SetPos(Vector(1115, 8892, -2544))
                end
            end
        },

        ["checkpoint_spot"] = {
            [1] = Vector(10362, 8272, -733),
            [2] = Vector(11460, 8355, -613)
        },		
    }
    
}

local function SetEP1Checkpoints()
    for _, c in pairs(ents.FindByClass("trigger_changelevel")) do
        c:Remove()
    end

    //If this map doesn't have support, throw a message and stop here
    if not ep1_triggers[game.GetMap()] then
        print(MsgC(Color(255, 0, 0), "HL2 CO-OP RPG ERROR - MAP IS NOT SUPPORTED"))
        return
    end

    if ep1_triggers[game.GetMap()]["checkpoints"] then
        for i, t in ipairs(ep1_triggers[game.GetMap()]["checkpoints"]) do
            local checkpoint = ents.Create("trigger_checkpoint")
            checkpoint.Min = Vector(t[1])
            checkpoint.Max = Vector(t[2])
            checkpoint.Pos = Vector(t[2]) - ( Vector(t[1]) - Vector(t[1])) / 2
            checkpoint.TPPoint = Vector(ep1_triggers[game.GetMap()]["checkpoint_spot"][i])
            checkpoint.PointIndex = i
            checkpoint:SetPos(checkpoint.Pos)
            checkpoint:Spawn()
            
            checkpoint.lambdaModel = ents.Create("prop_dynamic")
            checkpoint.lambdaModel:SetModel("models/hl2cr_lambda.mdl")
            checkpoint.lambdaModel:SetPos( checkpoint.TPPoint + Vector(0, 0, 75))
            checkpoint.lambdaModel:Spawn()
            checkpoint.lambdaModel:ResetSequence("idle")
            checkpoint.lambdaModel:SetMaterial(checkpoint.Mat)

            if ep1_triggers[game.GetMap()]["checkpoint_functions"] then
                checkpoint.Func = ep1_triggers[game.GetMap()]["checkpoint_functions"][i]
            end
        end
    end

    if ep1_triggers[game.GetMap()]["changelevels"] and game.GetGlobalState("hl2cr_extendedmap") == GLOBAL_DEAD then
        local changelevel = ents.Create("trigger_changemap")
        changelevel.Min = Vector(ep1_triggers[game.GetMap()]["changelevels"][1])
        changelevel.Max = Vector(ep1_triggers[game.GetMap()]["changelevels"][2])
        changelevel.Pos = Vector(ep1_triggers[game.GetMap()]["changelevels"][2]) - 
        ( ( Vector(ep1_triggers[game.GetMap()]["changelevels"][2]) - Vector(ep1_triggers[game.GetMap()]["changelevels"][1])) 
        / 2 )
        
        changelevel:SetPos(changelevel.Pos)
        changelevel:Spawn()

        changelevel.lambdaModel = ents.Create("prop_dynamic")
        changelevel.lambdaModel:SetModel("models/hl2cr_lambda.mdl")
        changelevel.lambdaModel:SetPos(changelevel.Pos)
        changelevel.lambdaModel:Spawn()
        changelevel.lambdaModel:ResetSequence("idle")
        changelevel.lambdaModel:SetMaterial("phoenix_storms/wire/pcb_green")

        if ep1_triggers[game.GetMap()]["changelevel_func"] then
            changelevel.Func = ep1_triggers[game.GetMap()]["changelevel_func"][1]
        end
    end
end

local function SetUpMisc()
    
    local MapLua = ents.Create("lua_run")
	MapLua:SetName("hl2crlua")
	MapLua:Spawn()

    if EP1_WEAPONS[game.GetMap()] then
		for i, wep in pairs(EP1_WEAPONS[game.GetMap()]) do 
			table.insert(SPAWNING_WEAPONS, wep)
		end
	end
	
	if EP1_EQUIPMENT[game.GetMap()] then
		table.insert(SPAWNING_ITEMS, EP1_EQUIPMENT[game.GetMap()])
	end

    if game.GetMap() == "ep1_citadel_00" then
		ents.FindByName("relay_givegravgun_1")[1]:Fire("AddOutput", "OnTrigger hl2crlua:RunPassedCode:GiveGravgunEP1()" )
		ents.FindByName("ss_dog_climb")[1]:Fire("AddOutput", "OnEndSequence hl2crlua:RunPassedCode:FixDog00part1()")
		ents.FindByName("ss_alyx_climb")[1]:Fire("AddOutput", "OnEndSequence hl2crlua:RunPassedCode:FixAlyx00()")
		ents.FindByName("relay_Van_crash_gate_1")[1]:Fire("AddOutput", "OnTrigger hl2crlua:RunPassedCode:FixDog00part2()")
		
		for _, fall in ipairs(ents.FindByName("trigger_falldeath")) do
			fall:Remove()
		end
	end

    if game.GetMap() == "ep1_citadel_01" then
		ents.FindByName("logic_alyx_EMP_5")[1]:Fire("AddOutput", "OnTrigger hl2crlua:RunPassedCode:FixBrushWall()")
	end

    if game.GetMap() == "ep1_citadel_02" then
		game.SetGlobalState("super_phys_gun", 1)
	end

    if game.GetMap() == "ep1_citadel_02b" then
		ents.FindByName("impact_trigger")[1]:Fire("AddOutput", "OnTrigger hl2crlua:RunPassedCode:FailedMap()")
		
		for k, spawn in ipairs(ents.FindByClass("info_player_start")) do 
			if k ~= 1 then
				spawn:Remove()
			end
		end
	end

    if game.GetMap() == "ep1_citadel_03" then
		
        ents.FindByName("trigger_closedoors")[1]:Fire("AddOutput", "OnTrigger hl2crlua:RunPassedCode:FixAlyxCitadel")

        for k, spawn in ipairs(ents.FindByClass("info_player_start")) do 
			if k ~= 1 then
				spawn:Remove()
			end
		end
		
		pacifistAchGlobal = true
		
		ents.FindByName("trigger_physgunpower")[1]:Fire("AddOutput", "OnTrigger hl2crlua:RunPassedCode:AchAll('Containment')")
		
		for _, failer in ipairs(ents.FindByName("trigger_fall")) do
			failer:Remove()
		end
	end

    if game.GetMap() == "ep1_c17_00" then
		ents.FindByName("train_2_door_trigger")[1]:Fire("AddOutput", "OnTrigger hl2crlua:RunPassedCode:FixZombineTrain()")
	end
	
	if game.GetMap() == "ep1_c17_02" then
		ents.FindByName("timer_give_guard_health")[1]:Remove()
	end	
	
	if game.GetMap() == "ep1_c17_02a" then
        timer.Simple(2, function()
            ents.FindByName("gunship_showdown")[1]:Fire("AddOutput", "OnDeath hl2crlua:RunPassedCode:AchAll('Attica')")
        end)
	end
	
	if game.GetMap() == "ep1_c17_05" then
		ents.FindByName("trigger_citizen_boardtrain")[1]:Fire("Enable")
		ents.FindByName("lcs_rearsoldierslock")[1]:Fire("AddOutput", "OnCompletion hl2crlua:RunPassedCode:FinishMap05()")
	end
end

function StartEP1()
	SetEP1Checkpoints()
	SetUpMisc()
end

hook.Add("OnNPCKilled", "HL2CR_PacifistAch", function(npc, attacker, inflictor)
	if game.GetMap() == "ep1_citadel_03" and pacifistAchGlobal then
		if npc:GetClass() == "npc_stalker" and attacker:IsPlayer() then
			pacifistAchGlobal = false

			BroadcastMessageToAll(HL2CR_PlayerColour, attacker:Nick(), HL2CR_RedColour, translate.Get("Failed_EP1_Pacifist"))
		end
	end
end)

function FinishMap05()
	for _, v in ipairs(player.GetAll()) do
		v:SetTeam(TEAM_COMPLETED_MAP)
		v:DisplayResults()
	end
	
	StartMapCountdown()
	net.Start("HL2CR_MapCountdown")
	net.Broadcast()
end

function FixBrushWall()
	ents.FindByName("clip_combineshieldwall6")[1]:Fire("Disable")
end

function FixDog00part1()
	ents.FindByClass("npc_dog")[1]:SetPos(Vector(-8646, 5986, -61))
end

function FixDog00part2()
	timer.Simple(9, function()
		ents.FindByClass("npc_dog")[1]:SetPos(Vector(-6464, 6196, -89))
	end)
end

function FixAlyx00()
	ents.FindByClass("npc_alyx")[1]:SetPos(Vector(-8646, 5986, -61))
end

function FixAlyxCitadel()
    ents.FindByClass("npc_alyx")[1]:SetPos(Vector(1415, 12131, 5328))
end

function GiveGravgunEP1()
	for k, v in ipairs(player.GetAll()) do
		v:Give("weapon_physcannon")
	end
end

function FixZombineTrain()
	timer.Simple(3, function()
		ents.FindByName("train_2_ambush_zombine")[1]:Remove()
		ents.FindByName("brush_combine_train_door")[1]:Remove()
	end)
end

function AchAll(achName)
	for _, v in ipairs(player.GetAll()) do	
		v:GrantAchievement("EP1", achName)
	end
end

hook.Add( "AcceptInput", "HL2CR_EP1_ReachedEnd05", function( ent, name, activator, caller, data )
	if ent:GetName() == "trigger_citizen_boardtrain_dryrun" or ent:GetName() == "trigger_citizen_boardtrain" then
		if activator:GetClass() ~= "npc_citizen" then return end
		activator.ReachedEnd = true
	end
end )

hook.Add("Tick", "HL2CR_CitizenFollow05", function()
	if game.GetMap() == "ep1_c17_05" then
		for _, cit in ipairs(ents.FindByClass("npc_citizen")) do
			if not cit or not string.find(cit:GetName(), "citizen_refugees_") then continue end
			
            if cit.ReachedEnd then continue end

			if cit:IsValid() and (cit:GetPos():Distance(player.GetAll()[1]:GetPos()) > 50 and cit:GetPos():Distance(player.GetAll()[1]:GetPos()) <= 500) and not cit:IsCurrentSchedule(SCHED_FORCED_GO_RUN) then
				cit:SetLastPosition( player.GetAll()[1]:GetPos() )
				cit:SetSchedule(SCHED_FORCED_GO_RUN)
			end
		end
	end
end)