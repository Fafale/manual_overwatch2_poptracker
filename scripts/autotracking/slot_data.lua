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

    -- Hero Eliminations
    
    if slot_data["enable_hero_elimination_checks"] ~= nil then
        local obj = Tracker:FindObjectForCode("HeroElimination_Include")
        local stage = slot_data["enable_hero_elimination_checks"]

        obj.Active = stage
    end

    if slot_data["hero_elimination_check_amount"] ~= nil then
        local obj = Tracker:FindObjectForCode("HeroElimination_CheckAmount")
        local stage = slot_data["hero_elimination_check_amount"]
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

function get_medal_goal(slot_data)
    local obj1 = Tracker:FindObjectForCode("GoalCounter_1")
    local obj2 = Tracker:FindObjectForCode("GoalCounter_2")
    local obj3 = Tracker:FindObjectForCode("GoalCounter_3")

    obj1.IgnoreUserInput = true
    obj2.IgnoreUserInput = true
    obj3.IgnoreUserInput = true

    local goal = -1

    if slot_data["goal"] ~= nil then
        goal = slot_data["goal"]
        value = goal

        local v1 = value // 100
  
        value = value - v1*100
        local v2 = value // 10
        
        value = value - v2*10
        local v3 = value

        obj1.CurrentStage = v1
        obj2.CurrentStage = v2
        obj3.CurrentStage = v3
    end

    return goal
end