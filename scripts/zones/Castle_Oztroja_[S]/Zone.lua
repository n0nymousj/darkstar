-----------------------------------
--
-- Zone: Castle_Oztroja_[S] (99)
--
-----------------------------------
local ID = require("scripts/zones/Castle_Oztroja_[S]/IDs")
-----------------------------------

function onInitialize(zone)
    UpdateNMSpawnPoint(ID.mob.DEE_ZELKO_THE_ESOTERIC)
    GetMobByID(ID.mob.DEE_ZELKO_THE_ESOTERIC):setRespawnTime(math.random(900, 10800))

    UpdateNMSpawnPoint(ID.mob.ASTERION)
    GetMobByID(ID.mob.ASTERION):setRespawnTime(math.random(900, 10800))
end

function onZoneIn(player,prevZone)
    local cs = -1
    if player:getXPos() == 0 and player:getYPos() == 0 and player:getZPos() == 0 then
        player:setPos(-239.447,-1.813,-19.98,250)
    end
    return cs
end

function onRegionEnter(player,region)
end

function onEventUpdate(player,csid,option)
end

function onEventFinish(player,csid,option)
end