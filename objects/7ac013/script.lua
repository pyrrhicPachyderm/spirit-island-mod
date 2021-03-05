difficulty=3

fearSetup=true
fearSetupComplete=false

function FearSetup(params)
    params.deck.takeObject({
        guid = "2b7d0b",
        position = {-46.21, 0.92, 54.04},
        rotation = {0,180,0},
    })
    params.deck.takeObject({
        guid = "4211e9",
        position = {-42.26, 0.92, 54.06},
        rotation = {0,180,0},
    })
    local fearDeck = getObjectFromGUID(Global.getVar("fearDeckSetupZone")).getObjects()[1]
    params.deck.putObject(fearDeck)
    Wait.condition(function() fearSetupComplete = true end, function() return fearDeck == nil end)
end
