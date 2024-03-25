hook.Add("TTT2CanTakeCredits", "TTT2DetProtection", function(ply, rag, isLongRange)
    local ragply = CORPSE.GetPlayer(rag)
    if IsValid(ragply) then
        if roles.GetByIndex(ragply:GetSubRole()).isPolicingRole then 
            return false 
        end
    end
end)

hook.Add("TTT2PickpocketMessage", "TTT2DetProtectionMsg", function(ply, rag, isLongRange)
    local ragply = CORPSE.GetPlayer(rag)
    if IsValid(ragply) then
        if roles.GetByIndex(ragply:GetSubRole()).isPolicingRole then 
            return "detprotection_pickpocket_msg" 
        end
    end
end)