local function showMessage(text)
    StaticPopupDialogs["JOTO_MESSAGE"] = {
        text = text,
        button1 = "Acepto k me gusta la verga",
        OnAccept = function() end,
        timeout = 0,
        whileDead = true,
        hideOnEscape = true
    }

    StaticPopup_Show("JOTO_MESSAGE")
end

SLASH_NOMO1 = "/nomo"
SlashCmdList["NOMO"] = function()
    showMessage("¡Nomo joto nomo culon!!!!")
end

local function onEvent(self, event, arg1)
    if event == "PLAYER_LEVEL_UP" then
        showMessage("¡Felicidades por subir de nivel! Ahora eres un pinchi joto de nivel " .. arg1 .. "!")
    end

    if event == "UNIT_DIED" and arg1 == "player" then
        showMessage("¡Te mataron! ¡Como eres de pendejo!")
    end
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LEVEL_UP")  
frame:RegisterEvent("UNIT_DIED") 
frame:SetScript("OnEvent", onEvent)  
