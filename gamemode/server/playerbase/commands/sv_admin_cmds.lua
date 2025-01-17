concommand.Add("hl2cr_admin_givexp", function(ply, cmd, args)
	if not ply:IsAdmin() then return end
	if not args[1] then return end
	
	ply:AddXP(args[1])
end)

concommand.Add("hl2cr_admin_givexp_pet", function(ply, cmd, args)
    local pet = ply.activePet or nil

    if pet == nil then return end

    pet:AddXP(args[1])
end)

local cmd_globals = {
	[1] = "superphysgun",
	[2] = "antlionfriendly",
	[3] = "precriminal",
	[4] = "extend",
	[5] = "whatbaby",
	[6] = "rollermine",
	[7] = "gnome",
}

local cmd_valid = {["0"]=true,["1"]=true,["2"]=true}

local cmd_convert_int = {
	[0] = "OFF",
	[1] = "ON",
	[2] = "DEAD"
}

concommand.Add("hl2cr_admin_setglobal", function(ply, cmd, args)
	if not ply:IsSuperAdmin() then return end

	if not cmd_globalcheck[args[1]] then ply:BroadcastMessage(HL2CR_RedColour, "Global not found") return end
	if not cmd_valid[args[2]] then ply:BroadcastMessage(HL2CR_RedColour, "Invalid value, must be 0=off/1=on/2=dead") return end

	local setter = tonumber(args[2])

	game.SetGlobalState(cmd_globalconvert[args[1]], setter)
	BroadcastMessageToAdmins(HL2CR_PlayerColour, ply:Nick(), HL2CR_GreenColour, " set global ", args[1], " ", cmd_convert_int[setter])
end)

concommand.Add("hl2cr_admin_getglobals", function(ply, cmd, args)
	if not ply:IsSuperAdmin() then return end

	for _, g in ipairs(cmd_globals) do
		ply:PrintMessage(HUD_PRINTCONSOLE, g)
	end
end)

concommand.Add("hl2cr_entinfo", function(ply)
	local Ent = ply:GetEyeTrace().Entity
	if Ent then
		print(Ent)
		print("Name  "..Ent:GetName())
		print("Model "..Ent:GetModel())
	end
end)