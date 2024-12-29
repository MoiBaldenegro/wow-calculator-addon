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
    -- Evento de subir de nivel
    if event == "PLAYER_LEVEL_UP" then
        showMessage("¡Felicidades por subir de nivel! Ahora eres un pinchi joto de nivel " .. arg1 .. "!")
    end

    -- Evento de muerte del jugador (cambiamos a PLAYER_DEAD)
    if event == "PLAYER_DEAD" then
        showMessage("¡Te mataron! ¡Como eres de pendejo!")
    end
end

-- Crear el frame y registrar eventos
local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LEVEL_UP")  -- Registrar evento de subir de nivel
frame:RegisterEvent("PLAYER_DEAD")      -- Registrar evento de muerte del jugador
frame:SetScript("OnEvent", onEvent)     -- Asignar la función de manejo de eventos
