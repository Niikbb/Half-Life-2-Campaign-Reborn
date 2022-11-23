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

JALOPY_MAPS = {
	["ep2_outland_06a"] = true,
}

local ep2_triggers = {
    ["ep2_outland_01"] = {
        ["checkpoints"] = {
            [1] = {
                [1] = Vector(220, -1090, 37), 		
                [2] = Vector(390, -490, 180)
            },
			[2] = {
                [1] = Vector(-2830, -890, 230), 		
                [2] = Vector(-2610, -650, 300)
            },
			[3] = {
                [1] = Vector(-3810, 1580, 130), 		
                [2] = Vector(-3575, 1720, 200)
            },
			[4] = {
                [1] = Vector(-5760, 4440, -110), 		
                [2] = Vector(-5530, 4610, -80)
            }
        },
        
        ["checkpoint_spot"] = {
            [1] = Vector(340, -790, 30),
			[2] = Vector(-2800, -740, 240),
			[3] = Vector(-3615, 1660, 150),
			[4] = Vector(-5530, 4560, -110)
        },
		
		["checkpoint_angle"] = {
			[1] = Angle(0, 200, 0),
			[2] = Angle(0, 180, 0),
			[3] = Angle(0, 120, 0),
			[4] = Angle(0, 230, 0)
		},
        
        ["changelevels"] = {
            [1] = Vector(-6480, 3620, -1420),
            [2] = Vector(-6020, 3690, -1220)
        },
		
		["pushers"] = {
            [1] = {	--Dont let people jump off the cliff at start
                [1] = Vector(20, -2560, -190),
                [2] = Vector(1350, -1920, -60)
            }
        },

        ["pusher_spot"] = {
            [1] = Vector(510, -1445, -10)
        }
    }, 
	
	["ep2_outland_01a"] = {
        ["changelevels"] = {
            [1] = Vector(-2250, -8350, -450),
            [2] = Vector(-2150, -8200, -370)
        },

    }, 
	
	--ToDo Add achievement for antlion event, maybe if player doesnt die during it only?
	["ep2_outland_02"] = {
        ["checkpoints"] = {
			[1] = {
                [1] = Vector(-480, -9780, -730), 		
                [2] = Vector(-280, -9390, -590)
            }
        },
        
        ["checkpoint_spot"] = {
			[1] = Vector(-410, -9620, -700)
        },
		
		["checkpoint_angle"] = {
			[1] = Angle(0, 330, 0)
		},
        
		
        ["changelevels"] = {
			[1] = Vector(-960, -10300, -500),
            [2] = Vector(-820, -10200, -380)
        },
		
		["changelevels_special"] = {
            [1] = Vector(-4180, -10130, 180),
            [2] = Vector(-3880, -9870, 250)
        }

    }, 
	
	["ep2_outland_03"] = {
        ["checkpoints"] = {
            [1] = {
                [1] = Vector(800, -4400, -950), 		
                [2] = Vector(1080, -4100, -820)
            },
			[2] = {
                [1] = Vector(950, -8510, -1830), 		
                [2] = Vector(1750, -7950, -1730)
            },
			[3] = {
                [1] = Vector(3460, -9510, -550), 		
                [2] = Vector(3770, -9460, -460)
            }
        },
        
        ["checkpoint_spot"] = {
            [1] = Vector(940, -4310, -920),
			[2] = Vector(1480, -8200, -1770),
			[3] = Vector(3620, -9450, -500)
        },
		
		["checkpoint_angle"] = {
			[1] = Angle(0, 210, 0),
			[2] = Angle(0, 270, 0),
			[3] = Angle(0, 45, 0)
		},
        
        ["changelevels"] = {
			[1] = Vector(4950, -7520, -520),
            [2] = Vector(5250, -7240, -200)
        },
		
		["changelevel_func"] = {	--For those who miss the lift back up
            [1] = function(ply)
                for k, v in ipairs(player.GetAll()) do
                    v:SetPos(Vector(5100, -7580, -350))
                end
            end
        }

    }, 
	
	--Hunting the antlion--A lot of no return clips
	["ep2_outland_04"] = {
        ["checkpoints"] = {	
            [1] = {
                [1] = Vector(4180, -1420, -1480), 		
                [2] = Vector(4630, -710, -1330)
            },
			[2] = {
                [1] = Vector(3190, 390, -1510), 		
                [2] = Vector(3300, 465, -1470)
            },
			[3] = {
                [1] = Vector(2470, -490, -1830), 		
                [2] = Vector(2690, -150, -1750)
            },
			[4] = {
                [1] = Vector(3310, -4110, -2050), 		
                [2] = Vector(3820, -3710, -1970)
            }
        },
        
        ["checkpoint_spot"] = {
            [1] = Vector(4440, -1230, -1450),
			[2] = Vector(3250, 465, -1515),
			[3] = Vector(2580, -270, -1790),
			[4] = Vector(3500, -3850, -2055)
        },
		
		["checkpoint_angle"] = {
			[1] = Angle(0, 90, 0),
			[2] = Angle(0, 90, 0),
			[3] = Angle(0, 180, 0),
			[4] = Angle(0, 330, 0)
		},
        
        ["changelevels"] = {
			[1] = Vector(4790, -1840, -1900),
            [2] = Vector(5100, -1400, -1840)
        }

    }, 

	["ep2_outland_05"] = {	--Antlions fight quick map
        ["changelevels"] = {
            [1] = Vector(2000, 6100, 540),
            [2] = Vector(2130, 6410, 750)
        },
    }, 

    ["ep2_outland_06"] = {	--Giant Bridge
        ["checkpoints"] = {
            [1] = {
                [1] = Vector(400, 350, 370), 		
                [2] = Vector(760, 730, 440)
            },
			[2] = {
                [1] = Vector(260, 2040, 30), 		
                [2] = Vector(580, 2460, 70)
            },
			[3] = {
                [1] = Vector(1260, 2730, -270), 		
                [2] = Vector(960, 2900, -170)
            },
			[4] = {
                [1] = Vector(-320, 1290, 810), 		
                [2] = Vector(-510, 1420, 880)
            }
        },
        
        ["checkpoint_spot"] = {
            [1] = Vector(510, 640, 380),
			[2] = Vector(385, 2165, 0),
			[3] = Vector(1060, 2840, -240),
			[4] = Vector(-550, 1350, 840)
        },
		
		["checkpoint_angle"] = {
			[1] = Angle(0, 270, 0),
			[2] = Angle(0, 90, 0),
			[3] = Angle(0, 270, 0),
			[4] = Angle(0, 0, 0)
		},
        
        ["changelevels"] = {
            [1] = Vector(-3380, 2080, 640),
            [2] = Vector(-2730, 2630, 850)
        },
		
		["pushers"] = {
            [1] = {	--Dont let people jump off the edge at start
                [1] = Vector(70, 900, 740),
                [2] = Vector(320, 1500, 820)
            }
        },

        ["pusher_spot"] = {
            [1] = Vector(-160, 1280, 840)
        }
    }, 
	
	["ep2_outland_06a"] = {
        ["changelevels"] = {
            [1] = Vector(2000, 6100, 540),
            [2] = Vector(2130, 6410, 750)
        },
		
		["checkpoints"] = {
			[1] = {
                [1] = Vector(-3260, -9980, -1540), 		
                [2] = Vector(-3060, -9630, -1460)
            }
        },
        
        ["checkpoint_spot"] = {
			[1] = Vector(-3100, -9720, -1520)
        },
		
		["checkpoint_angle"] = {
			[1] = Angle(0, 180, 0)
		},
    }, 

}

local function SetEP2Checkpoints()
    for _, c in pairs(ents.FindByClass("trigger_changelevel")) do
        c:Remove()
    end

    //If this map doesn't have support, throw a message and stop here
    if not ep2_triggers[game.GetMap()] then
        print(MsgC(Color(255, 0, 0), "HL2 CO-OP RPG ERROR - MAP IS NOT SUPPORTED"))
        return
    end

    if ep2_triggers[game.GetMap()]["checkpoints"] then
        for i, t in ipairs(ep2_triggers[game.GetMap()]["checkpoints"]) do
            local checkpoint = ents.Create("trigger_checkpoint")
            checkpoint.Min = Vector(t[1])
            checkpoint.Max = Vector(t[2])
            checkpoint.Pos = Vector(t[2]) - ( Vector(t[1]) - Vector(t[1])) / 2
            checkpoint.TPPoint = Vector(ep2_triggers[game.GetMap()]["checkpoint_spot"][i])
			if ep2_triggers[game.GetMap()]["checkpoint_angle"] then checkpoint.TPAngles = Angle(ep2_triggers[game.GetMap()]["checkpoint_angle"][i]) or checkpoint.TPAngles end	--default to 0,0,0
            checkpoint.PointIndex = i
            checkpoint:SetPos(checkpoint.Pos)
            checkpoint:Spawn()
            
            checkpoint.lambdaModel = ents.Create("prop_dynamic")
            checkpoint.lambdaModel:SetModel("models/hl2cr_lambda.mdl")
            checkpoint.lambdaModel:SetPos( checkpoint.TPPoint + Vector(0, 0, 75))
            checkpoint.lambdaModel:Spawn()
            checkpoint.lambdaModel:ResetSequence("idle")
            checkpoint.lambdaModel:SetMaterial(checkpoint.Mat)

            if ep2_triggers[game.GetMap()]["checkpoint_functions"] then
                checkpoint.Func = ep2_triggers[game.GetMap()]["checkpoint_functions"][i]
            end
        end
    end

    if ep2_triggers[game.GetMap()]["changelevels"] and game.GetGlobalState("hl2cr_extendedmap") == GLOBAL_DEAD then
        local changelevel = ents.Create("trigger_changemap")
        changelevel.Min = Vector(ep2_triggers[game.GetMap()]["changelevels"][1])
        changelevel.Max = Vector(ep2_triggers[game.GetMap()]["changelevels"][2])
        changelevel.Pos = Vector(ep2_triggers[game.GetMap()]["changelevels"][2]) - 
        ( ( Vector(ep2_triggers[game.GetMap()]["changelevels"][2]) - Vector(ep2_triggers[game.GetMap()]["changelevels"][1])) 
        / 2 )
        
        changelevel:SetPos(changelevel.Pos)
        changelevel:Spawn()

        changelevel.lambdaModel = ents.Create("prop_dynamic")
        changelevel.lambdaModel:SetModel("models/hl2cr_lambda.mdl")
        changelevel.lambdaModel:SetPos(changelevel.Pos)
        changelevel.lambdaModel:Spawn()
        changelevel.lambdaModel:ResetSequence("idle")
        changelevel.lambdaModel:SetMaterial("phoenix_storms/wire/pcb_green")

        if ep2_triggers[game.GetMap()]["changelevel_func"] then
            changelevel.Func = ep2_triggers[game.GetMap()]["changelevel_func"][1]
        end
    end
	
	 if ep2_triggers[game.GetMap()]["changelevels_special"] and game.GetGlobalState("hl2cr_extendedmap") == GLOBAL_ON then
        local special_changelevel = ents.Create("trigger_changemap")
        special_changelevel.Min = Vector(ep2_triggers[game.GetMap()]["changelevels_special"][1])
        special_changelevel.Max = Vector(ep2_triggers[game.GetMap()]["changelevels_special"][2])
        special_changelevel.Pos = Vector(ep2_triggers[game.GetMap()]["changelevels_special"][2]) - 
        ( ( Vector(ep2_triggers[game.GetMap()]["changelevels_special"][2]) - Vector(ep2_triggers[game.GetMap()]["changelevels_special"][1])) 
        / 2 )
        
        special_changelevel:SetPos(special_changelevel.Pos)
        special_changelevel:Spawn()

        special_changelevel.lambdaModel = ents.Create("prop_dynamic")
        special_changelevel.lambdaModel:SetModel("models/hl2cr_lambda.mdl")
        special_changelevel.lambdaModel:SetPos(special_changelevel.Pos)
        special_changelevel.lambdaModel:Spawn()
        special_changelevel.lambdaModel:ResetSequence("idle")
        special_changelevel.lambdaModel:SetMaterial("phoenix_storms/wire/pcb_green")
    end
	
	--Added pusher functionality
	if ep2_triggers[game.GetMap()]["pushers"] then
        for i, p in ipairs(ep2_triggers[game.GetMap()]["pushers"]) do
            local pusher = ents.Create("trigger_pushback")
            pusher.Min = Vector(p[1])
            pusher.Max = Vector(p[2])
            pusher.Pos = Vector(p[2]) - ( ( Vector(p[2]) - Vector(p[1])) / 2 )
            pusher:SetPos(pusher.Pos)
            pusher:Spawn()
            pusher.TPSpot = ep2_triggers[game.GetMap()]["pusher_spot"][i]
        end
    end
end

local gnome_pos = {
    ["ep2_outland_01a"] = Vector(-11550, -6420, 1296),
	["ep2_outland_02"] = Vector(-2050, -8240, -504),
	["ep2_outland_03"] = Vector(-1636, -3938, -888),
	["ep2_outland_04"] = Vector(4532, -1560, 384),
	["ep2_outland_05"] = Vector(-2867, 697, 153),
	["ep2_outland_06"] = Vector(-473, 763, 832),
	["ep2_outland_06a"] = Vector(5190, 20, -2467)
}

local function SetUpMisc()
    
    local MapLua = ents.Create("lua_run")
	MapLua:SetName("hl2crlua")
	MapLua:Spawn()

    if EP2_WEAPONS[game.GetMap()] then
		for i, wep in pairs(EP2_WEAPONS[game.GetMap()]) do 
			table.insert(SPAWNING_WEAPONS, wep)
		end
	end
	
	if EP2_EQUIPMENT[game.GetMap()] then
		table.insert(SPAWNING_ITEMS, EP2_EQUIPMENT[game.GetMap()])
	end

    if game.GetMap() == "ep2_outland_01" then	--Make sure players get physgun
		ents.FindByName("trigger_Get_physgun")[1]:Fire("AddOutput", "OnTrigger hl2crlua:RunPassedCode:GiveGravgunEP2()")
	end

    if game.GetMap() == "ep2_outland_02" then	--DEBUGGING, DEFAULTS TO RETURN FOR NOW
		if game.GetGlobalState("hl2cr_extendedmap") == GLOBAL_ON then	--Return from antlions
			--Find elevator so we can parent spawn to it and for placing vort
			local elevator = ents.FindByName("elevator")[1]
			for l, spawn in pairs(ents.FindByClass("info_player_start")) do
				spawn:SetPos(elevator:GetPos() + Vector(0, 20, -50))
				spawn:SetParent(elevator)
				spawn:SetAngles(Angle(0, 0, 0))
			end
			
			local NewVort = ents.Create("npc_vortigaunt")	--Needs to be spawned in
			NewVort:SetName("Vort")
			NewVort:SetPos(elevator:GetPos() + Vector(0, -20, -50))
			NewVort:Spawn()
		else	--First visit and antlion attack
			ents.FindByName("trigger_turret2_vcd")[1]:Fire("AddOutput", "OnTrigger hl2crlua:RunPassedCode:SetupAntevent()")
			ents.FindByName("generator_start_relay")[1]:Fire("AddOutput", "OnTrigger hl2crlua:RunPassedCode:FinishAntevent()")
			
			CreateCheckpoint(Vector(-2690, -9170, -740),Vector(-2290, -8900, -570),Vector(-2480, -9160, -690),Angle(0, 220, 0))
			--CreateCheckpoint(Min,Max,TPos,TAngle)
		end
	end

    if game.GetGlobalState("hl2cr_bringitem_gnome") == GLOBAL_ON and gnome_pos[game.GetMap()] then
        game.SetGlobalState("hl2cr_bringitem_gnome", GLOBAL_DEAD)
        
        local gnome = ents.Create("prop_physics")
        gnome:SetModel("models/props_junk/gnome.mdl")

		if game.GetGlobalState("hl2cr_extendedmap") == GLOBAL_ON then	--Fix for 2nd visit to outlands 2
			gnome:SetPos(Vector(-3120, -9445, -3070))
			gnome:Spawn()
        else
			gnome:SetPos(gnome_pos[game.GetMap()])
			gnome:Spawn()
			gnome:GetPhysicsObject():Sleep()
		end

        
		
    end

end

function StartEP2()
	SetEP2Checkpoints()
	SetUpMisc()
end

function GiveGravgunEP2()
	for k, v in ipairs(player.GetAll()) do
		v:Give("weapon_physcannon")
	end
end

function SetupAntevent()
    timer.Simple(40, function()	--Delay for talking and give time to connect
		BroadcastMessageToAll(HL2CR_AchNotifyColour, translate.Get("Achievement_EP2_Antlions"), HL2CR_StandardColour, translate.Get("Achievement_EP2_Antlions_Event"))
		for k, v in ipairs(player.GetAll()) do
			v.NoDeaths = true
		end
	end)
end

function FinishAntevent()
	for k, v in ipairs(player.GetAll()) do
		if v.NoDeaths then
			v:BroadcastMessage(HL2CR_AchNotifyColour, translate.Get("Achievement_EP2_Antlions"),  HL2CR_StandardColour, " debug yay you did it")
		end
	end
end