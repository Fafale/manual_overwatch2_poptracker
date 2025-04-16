function get_slot_options(slot_data)
    if slot_data["include_hero_masteries"] ~= nil then
        local obj = Tracker:FindObjectForCode("HeroMastery")
        local stage = slot_data["include_hero_masteries"]
        if stage == 0 then
            obj.CurrentStage = 0
        elseif stage == 1 then
            obj.CurrentStage = 1
        elseif stage == 2 then
            obj.CurrentStage = 2
        end
    end

    if slot_data["hero_mastery_check_amount"] ~= nil then
        local obj = Tracker:FindObjectForCode("HeroMastery_CheckAmount")
        local stage = slot_data["hero_mastery_check_amount"]
        obj.AcquiredCount = stage
    end
end