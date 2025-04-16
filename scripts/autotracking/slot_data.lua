function get_slot_options(slot_data)
    -- Hero Mastery
    if slot_data["include_hero_masteries"] ~= nil then
        local obj = Tracker:FindObjectForCode("HeroMastery")
        local stage = slot_data["include_hero_masteries"]

        obj.CurrentStage = stage
    end

    if slot_data["hero_mastery_check_amount"] ~= nil then
        local obj = Tracker:FindObjectForCode("HeroMastery_CheckAmount")
        local stage = slot_data["hero_mastery_check_amount"]
        obj.AcquiredCount = stage
    end


    -- Deathmatch

    if slot_data["include_deathmatch_checks"] ~= nil then
        local obj = Tracker:FindObjectForCode("Deathmatch")
        local stage = slot_data["include_deathmatch_checks"]
        
        obj.CurrentStage = stage
    end

    if slot_data["deathmatch_check_amount"] ~= nil then
        local obj = Tracker:FindObjectForCode("Deathmatch_CheckAmount")
        local stage = slot_data["deathmatch_check_amount"]
        obj.AcquiredCount = stage
    end

    -- Included Roles

    if slot_data["include_tank_heroes"] ~= nil then
        local obj = Tracker:FindObjectForCode("IncludeRole_Tank")
        local stage = slot_data["include_tank_heroes"]
        
        obj.Active = (stage == 1)
    end

    if slot_data["include_damage_heroes"] ~= nil then
        local obj = Tracker:FindObjectForCode("IncludeRole_Damage")
        local stage = slot_data["include_damage_heroes"]
        
        obj.Active = (stage == 1)
    end

    if slot_data["include_support_heroes"] ~= nil then
        local obj = Tracker:FindObjectForCode("IncludeRole_Support")
        local stage = slot_data["include_support_heroes"]
        
        obj.Active = (stage == 1)
    end

    -- Include Heroes/Masteries

    if slot_data["final_includes"] ~= nil then
        local dict_content = slot_data["final_includes"]
        
        for tab_name,tab_content in pairs(dict_content) do
            for _,item in pairs(tab_content) do
                local obj_name = ""
                if tab_name == "masteries" then
                    obj_name = "IncludeMastery_" .. item
                else
                    obj_name = "IncludeHero_" .. item
                end

                local obj = Tracker:FindObjectForCode(obj_name)
                obj.Active = 1
            end
        end
    end
end