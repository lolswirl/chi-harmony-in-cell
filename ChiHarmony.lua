-- Version 1.0.4 by Swirl @lolswirl
local I = Cell.iFuncs

local colorIndicatorIndex = "indicator2"
local durationIndicatorIndex = "indicator8"
local chiHarmonyName = "Chi Harmony"
local chiHarmonyIcon = 1381294

-- do not edit anything past this point!

local function Update(indicator, indicatorTable, unit, spell, start, duration, debuffType, icon, count, refreshing)
    if indicatorTable["num"] then
        if indicatorTable["hasColor"] then
            tinsert(indicatorTable["found"][unit], {indicatorTable["auras"][spell][1], start, duration, debuffType, icon, count, refreshing, indicatorTable["auras"][spell][2]})
        else
            tinsert(indicatorTable["found"][unit], {indicatorTable["auras"][spell], start, duration, debuffType, icon, count, refreshing})
        end
    else
        if indicatorTable["hasColor"] then
            if indicatorTable["auras"][spell][1] < indicatorTable["topOrder"][unit] then
                indicatorTable["topOrder"][unit] = indicatorTable["auras"][spell][1]
                indicatorTable["top"][unit]["start"] = start
                indicatorTable["top"][unit]["duration"] = duration
                indicatorTable["top"][unit]["debuffType"] = debuffType
                indicatorTable["top"][unit]["texture"] = icon
                indicatorTable["top"][unit]["count"] = count
                indicatorTable["top"][unit]["refreshing"] = refreshing
                indicatorTable["top"][unit]["color"] = indicatorTable["auras"][spell][2]
            end
        else
            if indicatorTable["auras"][spell] < indicatorTable["topOrder"][unit] then
                indicatorTable["topOrder"][unit] = indicatorTable["auras"][spell]
                indicatorTable["top"][unit]["start"] = start
                indicatorTable["top"][unit]["duration"] = duration
                indicatorTable["top"][unit]["debuffType"] = debuffType
                indicatorTable["top"][unit]["texture"] = icon
                indicatorTable["top"][unit]["count"] = count
                indicatorTable["top"][unit]["refreshing"] = refreshing
            end
        end
    end
end

function I.UpdateCustomIndicators(unitButton, auraInfo)
    local unit = unitButton.states.displayedUnit
    
    local auraType = auraInfo.isHelpful and "buff" or "debuff"
    local icon = auraInfo.icon
    local debuffType = auraInfo.isHarmful and (auraInfo.dispelName or "") or nil
    local count = auraInfo.applications
    local duration = auraInfo.duration
    local start = (auraInfo.expirationTime or 0) - auraInfo.duration
    local castByMe = auraInfo.sourceUnit == "player" or auraInfo.sourceUnit == "pet"
    
    -- check Bleed
    if auraInfo.isHarmful then
        debuffType = I.CheckDebuffType(debuffType, auraInfo.spellId)
    end
    
    for indicatorName, indicatorTable in pairs(Cell.snippetVars.customIndicators[auraType]) do
        if indicatorName and Cell.snippetVars.enabledIndicators[indicatorName] and unitButton.indicators[indicatorName] then
            local spell  --* trackByName
            if indicatorTable["trackByName"] then
                spell = auraInfo.name
            else
                spell = auraInfo.spellId
            end
            if indicatorTable["auras"][spell] or (indicatorTable["auras"][0] and duration ~= 0) then -- is in indicator spell list
                if not (icon == 627487 and (indicatorName == colorIndicatorIndex or indicatorName == durationIndicatorIndex)) then
                    if auraType == "buff" then
                        -- check caster
                        if (indicatorTable["castBy"] == "me" and castByMe) or (indicatorTable["castBy"] == "others" and not castByMe) or (indicatorTable["castBy"] == "anyone") then
                            if indicatorName == durationIndicatorIndex then
                                local chiHarmonyDuration = duration
                                if duration >= 8 then
                                    chiHarmonyDuration = 8
                                end
                                Update(unitButton.indicators[indicatorName], indicatorTable, unit, chiHarmonyName, start, chiHarmonyDuration, debuffType, chiHarmonyIcon, count, auraInfo.refreshing)
                            end
                            Update(unitButton.indicators[indicatorName], indicatorTable, unit, spell, start, duration, debuffType, icon, count, auraInfo.refreshing)
                        end
                    else -- debuff
                        Update(unitButton.indicators[indicatorName], indicatorTable, unit, spell, start, duration, debuffType, icon, count, auraInfo.refreshing)
                    end
                end
            end
        end
    end
end